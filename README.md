# Battleship in Logisim (CdM-16 Architecture)

A complete hardware-software implementation of the classic "Battleship" game, built from scratch within the Logisim digital logic simulator. The project runs on the 16-bit educational processor CdM-16, featuring custom-designed peripheral devices, memory-mapped I/O, and an AI opponent written in C.

<div style="display: flex; justify-content: center;">
   <p>GIF of gameplay</p>
</div>

<div style="display: flex; justify-content: center;">
  <img src="images/low_gif_logisim.gif" alt="Gif gameplay" width="300">
</div>

**Figure 1:** General overview of the Logisim circuit.
![General overview of the Logisim circuit](images/main.png)


## Hardware Architecture

The physical logic layer includes four main peripheral modules connected to the CdM-16 processor:

1. **Player & Bot Monitors:** * Each monitor is a 10x10 matrix.
   * Row addressing allows line-by-line updates via 10-bit bitmasks.
   * Color generation is achieved through a 2-bit counter multiplexing: logic `0` (Color 1), logic `error` (Color 2), and logic `1` (Color 3).
2. **Interactive Cannon (Keypad):**
   * Hardware registers store the X and Y coordinates selected by the user.
   * Triggers an interrupt to the CPU only when the system is in the "Player's Turn" state.
3. **Hardware RNG:**
   * A dedicated circuit that outputs a 16-bit pseudorandom number directly to the data bus upon request.
4. **System Terminal:**
   * A TTY component used for system logging and state indication (e.g., `--- PLAYER'S TURN ---`, `Hit!`, `*sank*`).

---

### How to Run
1. Clone the repository: `git clone https://github.com/YourUsername/logisim-battleship.git`
2. Open the `battleship_circuit.circ` file in Logisim.
3. Load the compiled binary into the ROM/RAM components of the CdM-16 processor.
4. Start the clock simulation (Ctrl+K) to begin.

## **Warning!** Logisim sometimes renders monitors incorrectly (round pixels are not visible on the monitor). To fix this, you can restart Logisim or replace the monitors yourself.
