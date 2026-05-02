asect 0
main: ext 
start: ext 
double_fault_handler: ext    # as external    
sp_handler: ext
pc_handler: ext
inv_ins_handler: ext
tap_handler: ext


dc start, 0              # 0  Startup/Reset vector
dc sp_handler, 0   # 1 Unaligned SP
dc pc_handler, 0   # 2 Unaligned PC
dc inv_ins_handler, 0   # 3 Invalid instruction
dc double_fault_handler, 0 # 4 Double fault
dc double_fault_handler, 0 # 5 Double fault
dc double_fault_handler, 0 # 6 Double fault
dc double_fault_handler, 0 # 7 Double fault
dc tap_handler,0 # 8    
align 0x80   

rsect exc_handlers

# This handler halts processor
inv_ins_handler>
    ldi r7,4
    halt

pc_handler>
    ldi r7,3
    halt

sp_handler>
    ldi r7,2
    halt

double_fault_handler>
    ldi r7,1
    halt

tap_handler>
    rti 

rsect start_p
main: ext 
Reset_players_monitor_device: ext
Reset_bots_monitor_device: ext
start>
    ldi r0,0b1111111000000000
	stsp r0

    ldi r0,Reset_players_monitor_device
    ldw r0,r0
    ldw r0,r0
    ldi r0,Reset_bots_monitor_device
    ldw r0,r0
    ldw r0,r0

    br main
    
rsect tap_button
Gun_device:ext
waiting>                           # -- Begin function get_cord_from_player
                                                # @get_cord_from_player
# %bb.0:                                        # %entry
	ei
	wait
	di
	rts
Lfunc_end5:

end.