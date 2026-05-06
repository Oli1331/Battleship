#define SIZE 10
#define SHIFT 1

// макрос для пикселей монитора
// 0x0200 = 0b1000000000 - первый пиксель в строке
#define DRAW_PIXEL(monitor, x, y) *(monitor + (y)) = (0x0200 >> (x))

// Карта 16x16: индекс массива вычисляется сдвигом, результат 0-255
#define MAP_WIDTH_LOG2 4
#define MAP_SIZE (1 << (MAP_WIDTH_LOG2 * 2)) // 256
#define IDX(x, y) (unsigned char)(((y) << MAP_WIDTH_LOG2) | (x))

#define CELL_EMPTY   0
#define CELL_SHIP    1
#define CELL_FRAME   2
#define CELL_CHECKED 3

// Устройства ввода-вывода (16-битные порты)
unsigned short int* volatile Rand_device = (unsigned short int* volatile)                   0xFF32;
unsigned short int* volatile Players_monitor_device = (unsigned short int* volatile)        0xFF82;
unsigned short int* volatile Bots_monitor_device = (unsigned short int* volatile)           0xFF02;
unsigned short int* volatile Gun_device = (unsigned short int* volatile)                    0xff28;
unsigned short int* volatile Terminal_device = (unsigned short int* volatile)               0xFF20;
unsigned short int* volatile Reset_bots_monitor_device = (unsigned short int* volatile)     0xFF1E;
unsigned short int* volatile Reset_players_monitor_device = (unsigned short int* volatile)  0xFF9E;

// Состояние кораблей
unsigned short int one_cell_ships[4];
unsigned short int two_cell_ships[3];
unsigned short int three_cell_ships[2];
unsigned short int four_cell_ship;
unsigned short int* status_ships[4] = { one_cell_ships, two_cell_ships, three_cell_ships, &four_cell_ship };

// игровые карты
unsigned char players_map[MAP_SIZE];
unsigned char bots_map[MAP_SIZE];

typedef enum { BOT_RANDOM, BOT_TARGETING } BotState;

void print_matrix(unsigned char*, unsigned char*);
void waiting();
void get_cord_from_player(unsigned char* x, unsigned char* y) {
    waiting();
    char cord = *Gun_device;
    *y = (cord & 0xf);
    *x = ((cord & 0xf0) >> 4);
}

// static unsigned short int rng_state = 11;
// unsigned short int xorshift16() {
//     unsigned short int x = rng_state;
//     x ^= x << 7;
//     x ^= x >> 9;
//     x ^= x << 8;
//     rng_state = x;
//     return x;
// }

unsigned char fast_rand_10() {
    unsigned short int res = *Rand_device & 0x0F;
    if (res > 9) res -= 10;
    return (unsigned char)res;

}

void print_terminal(char* str) {
    while (*str != '\0') {
        *Terminal_device = *str;
        str++;
    }
}
void make_frame(unsigned char x, unsigned char y, unsigned char o, unsigned char size_ship, unsigned char* map, volatile unsigned short int* monitor) {
    y += SHIFT;
    x += SHIFT;

    short int frames[15];
    for (unsigned char i = 0; i < SIZE + 5; i++) {
        frames[i] = 0;
    }

    if (o & 1) { // Вертикально
        for (unsigned char j = y - 1; j <= y + size_ship; j++) {
            for (unsigned char i = x - 1; i <= x + 1; i++) {
                if ((map[IDX(i, j)] & 0x7) == CELL_FRAME) {
                    map[IDX(i, j)] = CELL_CHECKED;
                    frames[j] |= (0x0200 >> (i - SHIFT));
                }
            }
        }
    }
    else { // Горизонтально
        for (unsigned char j = y - 1; j <= y + 1; j++) {
            for (unsigned char i = x - 1; i <= x + size_ship; i++) {
                if ((map[IDX(i, j)] & 0x7) == CELL_FRAME) {
                    map[IDX(i, j)] = CELL_CHECKED;
                    frames[j] |= (0x0200 >> (i - SHIFT));
                }
            }
        }
    }
    // Вывод на монитор 
    for (unsigned char row = 0; row < SIZE; row++) {
        if (frames[row + SHIFT] != 0) {
            *(monitor + row) = frames[row + SHIFT];
        }
    }
}

void save_ship(unsigned char x, unsigned char y, unsigned char o, unsigned char size_ship, unsigned char* map, unsigned char ind, char draw) {

    y += SHIFT;
    x += SHIFT;
    if (o & 1) {
        // Вертикально
        for (unsigned char j = y - 1; j <= y + size_ship; j++)
            for (unsigned char i = x - 1; i <= x + 1; i++)
                map[IDX(i, j)] = CELL_FRAME;

        for (unsigned char i = 0; i < size_ship; i++) {
            map[IDX(x, y + i)] = (ind << 6) | ((size_ship - 1) << 3) | CELL_SHIP;
            // if (draw) {
            //     *(Players_monitor_device + y + i) = 0x200 >> x;
            //     *(Players_monitor_device + y + i) = 0x200 >> x;
            // }
        }
    }
    else {

        // Горизонтально
        for (unsigned char j = y - 1; j <= y + 1; j++)
            for (unsigned char i = x - 1; i <= x + size_ship; i++)
                map[IDX(i, j)] = CELL_FRAME;

        for (unsigned char i = 0; i < size_ship; i++) {
            map[IDX(x + i, y)] = (ind << 6) | ((size_ship - 1) << 3) | CELL_SHIP;
            // if (draw) {
            //     *(Players_monitor_device + y) = 0x200 >> (x + i);
            //     *(Players_monitor_device + y) = 0x200 >> (x + i);
            // }

        }
    }

}

unsigned char check_rules(unsigned char x, unsigned char y, unsigned char o, unsigned char size_ship, unsigned char* map) {
    if (o & 1) {
        if ((y + size_ship > SIZE)) return 0;
        y += SHIFT; x += SHIFT;
        for (unsigned char i = 0; i < size_ship; i++) {
            if (map[IDX(x, y + i)]) return 0;
        }
    }
    else {
        if ((x + size_ship > SIZE)) return 0;
        y += SHIFT; x += SHIFT;
        for (unsigned char i = 0; i < size_ship; i++) {
            if (map[IDX(x + i, y)]) return 0;
        }
    }
    return 1;
}

void random_map(unsigned char* map, unsigned char save_status) {
    for (unsigned char ts = 4; ts >= 1; ts--) {
        for (unsigned char s = ts; s <= 4; s++) {
            unsigned char x, y, o;
            do {
                x = fast_rand_10();
                y = fast_rand_10();
                o = (unsigned char)(fast_rand_10() & 1);
            } while (!check_rules(x, y, o, ts, map));

            save_ship(x, y, o, ts, map, s - ts, save_status);
            if (save_status) {
                status_ships[ts - 1][s - ts] = ((ts) << 9) | (o << 8) | (y << 4) | x;
            }
        }
    }
}

void draw_on_monitor() {
    for (unsigned char y = 0; y < SIZE; y++) {
        unsigned short int row_mask = 0;

        for (unsigned char x = 0; x < SIZE; x++) {
            if ((players_map[IDX(x + SHIFT, y + SHIFT)] & 0x07) == CELL_SHIP) {
                row_mask |= (0x0200 >> x);
            }
        }
        if (row_mask != 0) {
            *(Players_monitor_device + y) = row_mask;
            *(Players_monitor_device + y) = row_mask;
        }
    }
}

void debug_draw_on_monitor() {
    for (unsigned char y = 0; y < SIZE; y++) {
        unsigned short int row_mask = 0;

        for (unsigned char x = 0; x < SIZE; x++) {
            if ((bots_map[IDX(x + SHIFT, y + SHIFT)] & 0x07) == CELL_SHIP) {
                row_mask |= (0x0200 >> x);
            }
        }
        if (row_mask != 0) {
            *(Bots_monitor_device + y) = row_mask;
        }
    }
}

void print_cord_on_terminal(unsigned char x, unsigned char y) {
    *Terminal_device = 'x';
    *Terminal_device = '=';
    *Terminal_device = '0' + x;
    *Terminal_device = ' ';
    *Terminal_device = 'y';
    *Terminal_device = '=';
    *Terminal_device = '0' + y;
    *Terminal_device = '\n';
}


int main() {
    print_terminal("Generate player's sheep\n");
    random_map(players_map, 0);
    draw_on_monitor();
    print_terminal("Generate bot's sheep\n");
    random_map(bots_map, 1);
    //debug_draw_on_monitor();

    unsigned char cnt_players_ship = 10;
    unsigned char cnt_bots_ship = 10;

    BotState bot_state = BOT_RANDOM;
    unsigned char bot_target_x = 0, bot_target_y = 0;
    unsigned char bot_first_hit_x = 0, bot_first_hit_y = 0;
    unsigned char bot_hits_count = 0, bot_ship_length = 0;
    signed char bot_dir_x = 0, bot_dir_y = 0;
    print_terminal("\n### START ###\n");

    while (cnt_players_ship && cnt_bots_ship) {

        // --- ХОД ИГРОКА ---
        print_terminal("\n--- PLAYER'S TURN ---\n");

        unsigned char player_turn = 1;
        while (player_turn && cnt_bots_ship > 0) {
            unsigned char px, py;

            get_cord_from_player(&px, &py);
            print_cord_on_terminal(px, py);



            unsigned char map_idx = IDX(px + SHIFT, py + SHIFT);
            unsigned char cell = bots_map[map_idx];
            if ((cell & 0x07) == CELL_SHIP) {
                // Игрок попал
                print_terminal("Hit!\n");

                DRAW_PIXEL(Bots_monitor_device, px, py);
                DRAW_PIXEL(Bots_monitor_device, px, py);
                DRAW_PIXEL(Bots_monitor_device, px, py);

                unsigned char type = (cell >> 3) & 0x07;
                unsigned char ind = (cell >> 6) & 0x03;

                status_ships[type][ind] -= (1 << 9);
                unsigned short int status = status_ships[type][ind];


                if (((status & (0b1111 << 9))) == 0) {
                    print_terminal("*sank*\n");
                    make_frame(status & 0x0F, (status >> 4) & 0x0F, (status >> 8) & 1, type + 1, bots_map, Bots_monitor_device);
                    cnt_bots_ship--;

                }
            }
            else if ((cell & 0x07) != CELL_CHECKED) {
                // Игрок промазал
                print_terminal("Miss\n");
                DRAW_PIXEL(Bots_monitor_device, px, py);
                player_turn = 0;
            }
            else {
                print_terminal("no sense\n");
            }
            bots_map[map_idx] = CELL_CHECKED;
        }

        if (cnt_bots_ship == 0) break;

        // --- ХОД БОТА ---
        unsigned char bot_turn = 1;
        print_terminal("\n---THE BOT'S MOVE---\n");

        while (bot_turn && cnt_players_ship > 0) {
            unsigned char bx, by;

            if (bot_state == BOT_RANDOM) {
                do {
                    bx = fast_rand_10() + SHIFT;
                    by = fast_rand_10() + SHIFT;
                } while (players_map[IDX(bx, by)] == CELL_CHECKED);
            }
            else {
                if (bot_hits_count == 1) {
                    signed char dirs[4][2] = { {1,0}, {0,1}, {-1,0}, {0,-1} };
                    unsigned char found_valid = 0;
                    for (signed char i = 0; i < 4; i++) {
                        unsigned char nx = bot_first_hit_x + dirs[i][0];
                        unsigned char ny = bot_first_hit_y + dirs[i][1];
                        if (players_map[IDX(nx, ny)] != CELL_CHECKED) {
                            bx = nx; by = ny;
                            bot_dir_x = dirs[i][0]; bot_dir_y = dirs[i][1];
                            found_valid = 1;
                            break;
                        }
                    }
                    if (!found_valid) { bot_state = BOT_RANDOM; continue; }
                }
                else {
                    bx = bot_target_x + bot_dir_x;
                    by = bot_target_y + bot_dir_y;

                    if (players_map[IDX(bx, by)] == CELL_CHECKED || bx < SHIFT || by < SHIFT || bx > SIZE || by > SIZE) {
                        bot_dir_x = -bot_dir_x;
                        bot_dir_y = -bot_dir_y;
                        bot_target_x = bot_first_hit_x;
                        bot_target_y = bot_first_hit_y;
                        continue;
                    }
                }
            }

            unsigned char map_idx = IDX(bx, by);
            print_cord_on_terminal(bx, by);

            unsigned char cell = players_map[map_idx];

            players_map[map_idx] = CELL_CHECKED;


            unsigned char scr_x = bx - SHIFT;
            unsigned char scr_y = by - SHIFT;

            if ((cell & 0x07) == CELL_SHIP) {
                // Бот попал
                print_terminal("Hit!\n");
                DRAW_PIXEL(Players_monitor_device, scr_x, scr_y);

                if (bot_state == BOT_RANDOM) {
                    bot_state = BOT_TARGETING;
                    bot_first_hit_x = bx; bot_first_hit_y = by;
                    bot_hits_count = 1;
                    bot_ship_length = ((cell >> 3) & 0x07) + 1;
                }
                else {
                    bot_hits_count++;
                }

                bot_target_x = bx; bot_target_y = by;

                if (bot_hits_count == bot_ship_length) {
                    cnt_players_ship--;
                    unsigned char o = (bot_dir_y != 0) ? 1 : 0;
                    unsigned char start_x = (bot_dir_x > 0) ? bot_first_hit_x : bot_target_x;
                    unsigned char start_y = (bot_dir_y > 0) ? bot_first_hit_y : bot_target_y;
                    print_terminal("*sank*\n");
                    make_frame(start_x - SHIFT, start_y - SHIFT, o, bot_ship_length, players_map, Players_monitor_device);
                    bot_state = BOT_RANDOM;
                }
            }
            else {
                // Бот промазал
                print_terminal("Miss\n");
                DRAW_PIXEL(Players_monitor_device, scr_x, scr_y);

                if (bot_state == BOT_TARGETING && bot_hits_count > 1) {
                    bot_dir_x = -bot_dir_x;
                    bot_dir_y = -bot_dir_y;
                    bot_target_x = bot_first_hit_x;
                    bot_target_y = bot_first_hit_y;
                }
                bot_turn = 0;
            }
        }
    }
    if (cnt_bots_ship == 0) print_terminal("Player win!\n");
    else print_terminal("Bot win!\n");

    return 0;
}