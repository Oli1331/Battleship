rsect _main_c_1804289383

### SECTION: .text                              # -- Begin function get_cord_from_player
get_cord_from_player>                           # @get_cord_from_player
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	move	r1, r5
	move	r0, r4
	addsp	-8
	jsr	waiting
	addsp	8
	ldi	r0, Gun_device
	ldw	r0, r0
	ldw	r0, r0
	ldi	r1, 15
	and	r0, r1, r1
	stb	r5, r1
	ldi	r1, 240
	and	r0, r1, r0
	shr	r0, r0, 4
	ldi	r1, 9
	sub	r1, r0, r0
	stb	r4, r0
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end0:
                                                # -- End function
fast_rand_10>                                   # -- Begin function fast_rand_10
                                                # @fast_rand_10
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	ldi	r0, Rand_device
	ldw	r0, r0
	ldw	r0, r0
	ldi	r1, 15
	and	r0, r1, r0
	ldi	r1, 246
	add	r0, r1, r1
	cmp	r0, 9
	bhi	LBB1_2
# %bb.1:                                        # %entry
	move	r0, r1
LBB1_2:                                        # %entry
	scl	r1, r0
	stsp	fp
	pop	fp
	rts
Lfunc_end1:
                                                # -- End function
print_terminal>                                 # -- Begin function print_terminal
                                                # @print_terminal
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	ldb	r0, r1
	tst	r1
	beq	LBB2_3
	br	LBB2_1
LBB2_1:                                        # %while.body.lr.ph
	inc	r0
	ldi	r2, Terminal_device
	ldw	r2, r2
LBB2_2:                                        # %while.body
                                                # =>This Inner Loop Header: Depth=1
	sxt	r1, r1
	stw	r2, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB2_2
	br	LBB2_3
LBB2_3:                                        # %while.end
	stsp	fp
	pop	fp
	rts
Lfunc_end2:
                                                # -- End function
make_frame>                                     # -- Begin function make_frame
                                                # @make_frame
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-50
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ssw	r3, -38                                 # 2-byte Folded Spill
	ssw	r0, -44                                 # 2-byte Folded Spill
	ldi	r0, 0
	lsw	r3, 14
	ssw	r3, -50                                 # 2-byte Folded Spill
	lsw	r6, 12
	move	r1, r5
	ldi	r3, -36
	add	r3, fp, r4
	move	r0, r3
	br	LBB3_2
LBB3_2:                                        # %for.body
                                                # =>This Inner Loop Header: Depth=1
	stw	r4, r3, r0
	add	r3, 2
	cmp	r3, 30
	beq	LBB3_1
	br	LBB3_2
LBB3_1:                                        # %for.cond.cleanup
	ldi	r0, 1
	and	r2, r0, r2
	lsw	r0, -44                                 # 2-byte Folded Reload
	inc	r0
	move	r1, r3
	inc	r3
	scl	r3, r3
	ssw	r4, -46                                 # 2-byte Folded Spill
	tst	r2
	beq	LBB3_13
	br	LBB3_3
LBB3_13:                                       # %if.else
	inc	r3
	cmp	r3, r5
	bhs	LBB3_15
	br	LBB3_14
LBB3_15:                                       # %for.body70.lr.ph
	scl	r0, r0
	lsw	r2, -38                                 # 2-byte Folded Reload
	add	r2, r0, r2
	lsw	r0, -44                                 # 2-byte Folded Reload
	ssw	r2, -38                                 # 2-byte Folded Spill
	cmp	r2, r0
	blo	LBB3_14
	br	LBB3_16
LBB3_16:                                       # %for.body70.preheader
	ssw	r3, -48                                 # 2-byte Folded Spill
LBB3_17:                                       # %for.body70
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB3_19 Depth 2
                                                #       Child Loop BB3_22 Depth 3
	shl	r1, r0, 1
	add	r4, r0, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	ssw	r5, -42                                 # 2-byte Folded Spill
	shl	r5, r5, 4
	lsw	r0, -44                                 # 2-byte Folded Reload
	move	r0, r4
	br	LBB3_19
LBB3_21:                                       # %if.then95
                                                #   in Loop: Header=BB3_22 Depth=3
	shr	r3, r3, 1
	dec	r4
LBB3_22:                                       # %if.then95
                                                #   Parent Loop BB3_17 Depth=1
                                                #     Parent Loop BB3_19 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r4
	bgt	LBB3_21
# %bb.23:                                       # %if.then95
                                                #   in Loop: Header=BB3_19 Depth=2
	lsw	r1, -40                                 # 2-byte Folded Reload
	ldw	r1, r2
	or	r2, r3, r2
	stw	r1, r2
LBB3_24:                                       # %for.inc110
                                                #   in Loop: Header=BB3_19 Depth=2
	inc	r0
	scl	r0, r4
	lsw	r2, -38                                 # 2-byte Folded Reload
	cmp	r2, r4
	blo	LBB3_18
	br	LBB3_19
LBB3_19:                                       # %for.body83
                                                #   Parent Loop BB3_17 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB3_22 Depth 3
	or	r0, r5, r3
	scl	r3, r3
	ldb	r6, r3, r2
	ldi	r1, 7
	and	r2, r1, r2
	cmp	r2, 2
	bne	LBB3_24
	br	LBB3_20
LBB3_20:                                       # %if.then95
                                                #   in Loop: Header=BB3_19 Depth=2
	ldi	r1, 3
	stb	r6, r3, r1
	dec	r4
	ldi	r3, 512
	br	LBB3_22
LBB3_18:                                       # %for.cond75.for.cond.cleanup82_crit_edge
                                                #   in Loop: Header=BB3_17 Depth=1
	lsw	r5, -42                                 # 2-byte Folded Reload
	inc	r5
	scl	r5, r1
	lsw	r4, -46                                 # 2-byte Folded Reload
	lsw	r3, -48                                 # 2-byte Folded Reload
	cmp	r3, r1
	blo	LBB3_14
	br	LBB3_17
LBB3_3:                                        # %if.then
	lsw	r2, -38                                 # 2-byte Folded Reload
	add	r2, r3, r2
	ssw	r2, -48                                 # 2-byte Folded Spill
	cmp	r2, r5
	blo	LBB3_14
	br	LBB3_4
LBB3_4:                                        # %for.body18.lr.ph
	scl	r0, r2
	inc	r2
	lsw	r0, -44                                 # 2-byte Folded Reload
	ssw	r2, -38                                 # 2-byte Folded Spill
	cmp	r2, r0
	blo	LBB3_14
	br	LBB3_5
LBB3_14:                                       # %for.body122.preheader
	ldi	r0, 0
	ldi	r1, 2
	lsw	r3, -50                                 # 2-byte Folded Reload
	br	LBB3_26
LBB3_27:                                       # %if.then128
                                                #   in Loop: Header=BB3_26 Depth=1
	stw	r3, r0, r2
LBB3_28:                                       # %for.inc134
                                                #   in Loop: Header=BB3_26 Depth=1
	add	r0, 2
	cmp	r0, 20
	beq	LBB3_25
	br	LBB3_26
LBB3_26:                                       # %for.body122
                                                # =>This Inner Loop Header: Depth=1
	add	r4, r0, r2
	ldw	r2, r1, r2
	tst	r2
	beq	LBB3_28
	br	LBB3_27
LBB3_6:                                        # %for.cond23.for.cond.cleanup29_crit_edge
                                                #   in Loop: Header=BB3_5 Depth=1
	lsw	r5, -42                                 # 2-byte Folded Reload
	inc	r5
	scl	r5, r1
	lsw	r4, -46                                 # 2-byte Folded Reload
	lsw	r0, -48                                 # 2-byte Folded Reload
	cmp	r0, r1
	blo	LBB3_14
	br	LBB3_5
LBB3_5:                                        # %for.body18
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB3_7 Depth 2
                                                #       Child Loop BB3_10 Depth 3
	shl	r1, r0, 1
	add	r4, r0, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	ssw	r5, -42                                 # 2-byte Folded Spill
	shl	r5, r5, 4
	lsw	r0, -44                                 # 2-byte Folded Reload
	move	r0, r4
	br	LBB3_7
LBB3_9:                                        # %if.then40
                                                #   in Loop: Header=BB3_10 Depth=3
	shr	r3, r3, 1
	dec	r4
LBB3_10:                                       # %if.then40
                                                #   Parent Loop BB3_5 Depth=1
                                                #     Parent Loop BB3_7 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r4
	bgt	LBB3_9
# %bb.11:                                       # %if.then40
                                                #   in Loop: Header=BB3_7 Depth=2
	lsw	r1, -40                                 # 2-byte Folded Reload
	ldw	r1, r2
	or	r2, r3, r2
	stw	r1, r2
LBB3_12:                                       # %for.inc53
                                                #   in Loop: Header=BB3_7 Depth=2
	inc	r0
	scl	r0, r4
	lsw	r2, -38                                 # 2-byte Folded Reload
	cmp	r2, r4
	blo	LBB3_6
	br	LBB3_7
LBB3_7:                                        # %for.body30
                                                #   Parent Loop BB3_5 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB3_10 Depth 3
	or	r0, r5, r3
	scl	r3, r3
	ldb	r6, r3, r2
	ldi	r1, 7
	and	r2, r1, r2
	cmp	r2, 2
	bne	LBB3_12
	br	LBB3_8
LBB3_8:                                        # %if.then40
                                                #   in Loop: Header=BB3_7 Depth=2
	ldi	r1, 3
	stb	r6, r3, r1
	dec	r4
	ldi	r3, 512
	br	LBB3_10
LBB3_25:                                       # %for.cond.cleanup121
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end3:
                                                # -- End function
save_ship>                                      # -- Begin function save_ship
                                                # @save_ship
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-18
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	move	r0, r4
	ldi	r0, 1
	and	r2, r0, r0
	lsw	r2, 14
	ssw	r2, -18                                 # 2-byte Folded Spill
	lsw	r2, 12
	ssw	r4, -8                                  # 2-byte Folded Spill
	inc	r4
	ssw	r4, -12                                 # 2-byte Folded Spill
	move	r1, r4
	inc	r4
	ssw	r4, -16                                 # 2-byte Folded Spill
	scl	r4, r4
	ssw	r3, -14                                 # 2-byte Folded Spill
	tst	r0
	beq	LBB4_10
	br	LBB4_1
LBB4_10:                                       # %if.else
	inc	r4
	cmp	r4, r1
	blo	LBB4_13
	br	LBB4_11
LBB4_11:                                       # %for.body69.lr.ph
	lsw	r0, -12                                 # 2-byte Folded Reload
	scl	r0, r0
	lsw	r3, -14                                 # 2-byte Folded Reload
	add	r3, r0, r5
	lsw	r0, -8                                  # 2-byte Folded Reload
	cmp	r5, r0
	blo	LBB4_13
	br	LBB4_12
LBB4_12:                                       # %for.body69.preheader
	ldi	r0, 2
	ssw	r4, -10                                 # 2-byte Folded Spill
	br	LBB4_15
LBB4_15:                                       # %for.body69
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB4_17 Depth 2
	shl	r1, r6, 4
	lsw	r4, -8                                  # 2-byte Folded Reload
	br	LBB4_17
LBB4_17:                                       # %for.body82
                                                #   Parent Loop BB4_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	or	r4, r6, r3
	scl	r3, r3
	stb	r2, r3, r0
	inc	r4
	scl	r4, r3
	cmp	r5, r3
	blo	LBB4_16
	br	LBB4_17
LBB4_16:                                       # %for.cond74.for.cond.cleanup81_crit_edge
                                                #   in Loop: Header=BB4_15 Depth=1
	inc	r1
	scl	r1, r3
	lsw	r4, -10                                 # 2-byte Folded Reload
	cmp	r4, r3
	blo	LBB4_13
	br	LBB4_15
LBB4_13:                                       # %for.cond97.preheader
	lsw	r4, -14                                 # 2-byte Folded Reload
	lsw	r6, -12                                 # 2-byte Folded Reload
	lsw	r3, -16                                 # 2-byte Folded Reload
	tst	r4
	beq	LBB4_19
	br	LBB4_14
LBB4_14:                                       # %for.body103.lr.ph
	lsw	r0, -18                                 # 2-byte Folded Reload
	shl	r0, r0, 6
	shl	r4, r1, 3
	add	r1, -7
	or	r1, r0, r0
	ldi	r1, 0
	shl	r3, r5, 4
	br	LBB4_18
LBB4_18:                                       # %for.body103
                                                # =>This Inner Loop Header: Depth=1
	add	r1, r6, r3
	or	r3, r5, r3
	scl	r3, r3
	stb	r2, r3, r0
	inc	r1
	scl	r1, r3
	cmp	r3, r4
	blo	LBB4_18
	br	LBB4_19
LBB4_1:                                        # %if.then
	add	r3, r4, r0
	ssw	r0, -10                                 # 2-byte Folded Spill
	cmp	r0, r1
	blo	LBB4_4
	br	LBB4_2
LBB4_2:                                        # %for.body.lr.ph
	lsw	r0, -12                                 # 2-byte Folded Reload
	scl	r0, r6
	inc	r6
	lsw	r0, -8                                  # 2-byte Folded Reload
	cmp	r6, r0
	blo	LBB4_4
	br	LBB4_3
LBB4_3:                                        # %for.body.preheader
	ldi	r5, 2
	br	LBB4_6
LBB4_6:                                        # %for.body
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB4_8 Depth 2
	shl	r1, r0, 4
	lsw	r4, -8                                  # 2-byte Folded Reload
	br	LBB4_8
LBB4_8:                                        # %for.body23
                                                #   Parent Loop BB4_6 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	or	r4, r0, r3
	scl	r3, r3
	stb	r2, r3, r5
	inc	r4
	scl	r4, r3
	cmp	r6, r3
	blo	LBB4_7
	br	LBB4_8
LBB4_7:                                        # %for.cond16.for.cond.cleanup22_crit_edge
                                                #   in Loop: Header=BB4_6 Depth=1
	inc	r1
	scl	r1, r0
	lsw	r3, -10                                 # 2-byte Folded Reload
	cmp	r3, r0
	blo	LBB4_4
	br	LBB4_6
LBB4_4:                                        # %for.cond31.preheader
	lsw	r4, -14                                 # 2-byte Folded Reload
	lsw	r5, -12                                 # 2-byte Folded Reload
	lsw	r6, -16                                 # 2-byte Folded Reload
	tst	r4
	beq	LBB4_19
	br	LBB4_5
LBB4_5:                                        # %for.body37.lr.ph
	lsw	r0, -18                                 # 2-byte Folded Reload
	shl	r0, r0, 6
	shl	r4, r1, 3
	add	r1, -7
	or	r1, r0, r0
	ldi	r1, 0
	br	LBB4_9
LBB4_9:                                        # %for.body37
                                                # =>This Inner Loop Header: Depth=1
	add	r1, r6, r3
	shl	r3, r3, 4
	or	r3, r5, r3
	scl	r3, r3
	stb	r2, r3, r0
	inc	r1
	scl	r1, r3
	cmp	r3, r4
	blo	LBB4_9
	br	LBB4_19
LBB4_19:                                       # %if.end
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end4:
                                                # -- End function
check_rules>                                    # -- Begin function check_rules
                                                # @check_rules
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r4, 1
	and	r2, r4, r2
	lsw	r5, 12
	tst	r2
	beq	LBB5_6
	br	LBB5_1
LBB5_6:                                        # %if.else
	add	r3, r0, r4
	ldi	r2, 0
	cmp	r4, 10
	bhi	LBB5_11
	br	LBB5_7
LBB5_7:                                        # %if.end29
	ldi	r2, 1
	tst	r3
	beq	LBB5_11
	br	LBB5_8
LBB5_8:                                        # %for.body43.preheader
	inc	r0
	shl	r1, r1, 4
	add	r1, 16
	ldi	r6, 0
	br	LBB5_10
LBB5_10:                                       # %for.body43
                                                # =>This Inner Loop Header: Depth=1
	add	r0, r6, r2
	or	r2, r1, r2
	scl	r2, r2
	ldb	r5, r2, r4
	ldi	r2, 0
	tst	r4
	beq	LBB5_9
	br	LBB5_11
LBB5_9:                                        # %for.cond37
                                                #   in Loop: Header=BB5_10 Depth=1
	inc	r6
	scl	r6, r4
	ldi	r2, 1
	cmp	r4, r3
	bhs	LBB5_11
	br	LBB5_10
LBB5_1:                                        # %if.then
	add	r3, r1, r6
	ldi	r2, 0
	cmp	r6, 10
	bhi	LBB5_11
	br	LBB5_2
LBB5_2:                                        # %if.end
	ldi	r2, 1
	tst	r3
	beq	LBB5_11
	br	LBB5_3
LBB5_3:                                        # %for.body.preheader
	inc	r0
	inc	r1
	ldi	r6, 0
	br	LBB5_5
LBB5_5:                                        # %for.body
                                                # =>This Inner Loop Header: Depth=1
	add	r1, r6, r2
	shl	r2, r2, 4
	or	r2, r0, r2
	scl	r2, r2
	ldb	r5, r2, r4
	ldi	r2, 0
	tst	r4
	beq	LBB5_4
	br	LBB5_11
LBB5_4:                                        # %for.cond
                                                #   in Loop: Header=BB5_5 Depth=1
	inc	r6
	scl	r6, r4
	ldi	r2, 1
	cmp	r4, r3
	bhs	LBB5_11
	br	LBB5_5
LBB5_11:                                       # %return
	move	r2, r0
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end5:
                                                # -- End function
random_map_of_bot>                              # -- Begin function random_map_of_bot
                                                # @random_map_of_bot
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-34
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ssw	r1, -28                                 # 2-byte Folded Spill
	ldi	r3, 4
	ldi	r4, 2
	move	r3, r1
LBB6_1:                                        # %do.body.preheader.lr.ph
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB6_3 Depth 2
                                                #       Child Loop BB6_5 Depth 3
                                                #         Child Loop BB6_13 Depth 4
                                                #         Child Loop BB6_17 Depth 4
                                                #       Child Loop BB6_24 Depth 3
                                                #         Child Loop BB6_26 Depth 4
                                                #       Child Loop BB6_27 Depth 3
                                                #       Child Loop BB6_32 Depth 3
                                                #         Child Loop BB6_34 Depth 4
                                                #       Child Loop BB6_35 Depth 3
	dec	r1
	ssw	r1, -34                                 # 2-byte Folded Spill
	shl	r1, r1, 1
	ldi	r2, status_ships
	add	r1, r2, r1
	ssw	r1, -30                                 # 2-byte Folded Spill
	shl	r3, r1, 8
	shl	r1, r1, 1
	ssw	r1, -32                                 # 2-byte Folded Spill
	shl	r3, r1, 3
	add	r1, -7
	ssw	r1, -26                                 # 2-byte Folded Spill
	ssw	r3, -22                                 # 2-byte Folded Spill
	ssw	r3, -8                                  # 2-byte Folded Spill
	br	LBB6_3
LBB6_37:                                       # %if.then
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -20                                 # 2-byte Folded Reload
	shl	r1, r1, 8
	ldi	r2, 256
	and	r1, r2, r1
	lsw	r2, -32                                 # 2-byte Folded Reload
	or	r1, r2, r1
	lsw	r2, -18                                 # 2-byte Folded Reload
	shl	r2, r2, 4
	scl	r2, r2
	or	r2, r1, r1
	lsw	r2, -10                                 # 2-byte Folded Reload
	scl	r2, r2
	add	r1, r2, r1
	lsw	r2, -30                                 # 2-byte Folded Reload
	ldw	r2, r2
	lsw	r3, -24                                 # 2-byte Folded Reload
	shl	r3, r3, 1
	stw	r2, r3, r1
LBB6_38:                                       # %if.end
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -22                                 # 2-byte Folded Reload
	inc	r1
	ssw	r1, -22                                 # 2-byte Folded Spill
	cmp	r1, 5
	beq	LBB6_4
	br	LBB6_3
LBB6_3:                                        # %do.body.preheader
                                                #   Parent Loop BB6_1 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB6_5 Depth 3
                                                #         Child Loop BB6_13 Depth 4
                                                #         Child Loop BB6_17 Depth 4
                                                #       Child Loop BB6_24 Depth 3
                                                #         Child Loop BB6_26 Depth 4
                                                #       Child Loop BB6_27 Depth 3
                                                #       Child Loop BB6_32 Depth 3
                                                #         Child Loop BB6_34 Depth 4
                                                #       Child Loop BB6_35 Depth 3
	ldi	r1, Rand_device
	ldw	r1, r1
	ssw	r1, -12                                 # 2-byte Folded Spill
	br	LBB6_5
LBB6_5:                                        # %do.body
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB6_13 Depth 4
                                                #         Child Loop BB6_17 Depth 4
	lsw	r3, -12                                 # 2-byte Folded Reload
	ldw	r3, r1
	ldi	r2, 15
	and	r1, r2, r1
	ldi	r2, 246
	add	r1, r2, r2
	ssw	r2, -10                                 # 2-byte Folded Spill
	cmp	r1, 9
	bhi	LBB6_7
# %bb.6:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	ssw	r1, -10                                 # 2-byte Folded Spill
LBB6_7:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	ldw	r3, r1
	ldi	r2, 15
	and	r1, r2, r1
	ldi	r2, 246
	add	r1, r2, r2
	cmp	r1, 9
	bhi	LBB6_9
# %bb.8:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	move	r1, r2
LBB6_9:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	ldw	r3, r5
	ldi	r1, 1
	ssw	r5, -20                                 # 2-byte Folded Spill
	and	r5, r1, r1
	ssw	r1, -14                                 # 2-byte Folded Spill
	ssw	r2, -18                                 # 2-byte Folded Spill
	tst	r1
	beq	LBB6_14
	br	LBB6_10
LBB6_14:                                       # %if.else.i
                                                #   in Loop: Header=BB6_5 Depth=3
	lsw	r1, -10                                 # 2-byte Folded Reload
	scl	r1, r1
	lsw	r2, -8                                  # 2-byte Folded Reload
	add	r1, r2, r1
	cmp	r1, 10
	bhi	LBB6_5
	br	LBB6_15
LBB6_15:                                       # %if.end29.i
                                                #   in Loop: Header=BB6_5 Depth=3
	lsw	r6, -10                                 # 2-byte Folded Reload
	inc	r6
	lsw	r1, -18                                 # 2-byte Folded Reload
	shl	r1, r5, 4
	add	r5, 16
	ldi	r1, 0
	br	LBB6_17
LBB6_17:                                       # %for.body43.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_5 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	add	r6, r1, r2
	or	r2, r5, r2
	scl	r2, r2
	ldb	r0, r2, r2
	tst	r2
	beq	LBB6_16
	br	LBB6_5
LBB6_16:                                       # %for.cond37.i
                                                #   in Loop: Header=BB6_17 Depth=4
	inc	r1
	scl	r1, r2
	lsw	r3, -8                                  # 2-byte Folded Reload
	cmp	r3, r2
	bls	LBB6_18
	br	LBB6_17
LBB6_10:                                       # %if.then.i
                                                #   in Loop: Header=BB6_5 Depth=3
	scl	r2, r1
	lsw	r2, -8                                  # 2-byte Folded Reload
	add	r1, r2, r1
	cmp	r1, 10
	bhi	LBB6_5
	br	LBB6_11
LBB6_11:                                       # %if.end.i
                                                #   in Loop: Header=BB6_5 Depth=3
	lsw	r6, -10                                 # 2-byte Folded Reload
	inc	r6
	lsw	r5, -18                                 # 2-byte Folded Reload
	inc	r5
	ldi	r1, 0
	br	LBB6_13
LBB6_13:                                       # %for.body.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_5 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	add	r5, r1, r2
	shl	r2, r2, 4
	move	r6, r3
	or	r2, r6, r2
	scl	r2, r2
	ldb	r0, r2, r2
	tst	r2
	beq	LBB6_12
	br	LBB6_5
LBB6_12:                                       # %for.cond.i
                                                #   in Loop: Header=BB6_13 Depth=4
	inc	r1
	scl	r1, r2
	move	r3, r6
	lsw	r3, -8                                  # 2-byte Folded Reload
	cmp	r3, r2
	bls	LBB6_19
	br	LBB6_13
LBB6_18:                                       # %do.end.loopexit
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r5, -18                                 # 2-byte Folded Reload
	inc	r5
LBB6_19:                                       # %do.end
                                                #   in Loop: Header=BB6_3 Depth=2
	ssw	r6, -12                                 # 2-byte Folded Spill
	lsw	r1, -22                                 # 2-byte Folded Reload
	lsw	r2, -8                                  # 2-byte Folded Reload
	sub	r1, r2, r1
	ssw	r1, -24                                 # 2-byte Folded Spill
	lsw	r1, -18                                 # 2-byte Folded Reload
	scl	r1, r1
	ssw	r5, -16                                 # 2-byte Folded Spill
	scl	r5, r5
	lsw	r3, -14                                 # 2-byte Folded Reload
	tst	r3
	beq	LBB6_28
	br	LBB6_20
LBB6_28:                                       # %if.else.i74
                                                #   in Loop: Header=BB6_3 Depth=2
	inc	r5
	cmp	r5, r1
	blo	LBB6_31
	br	LBB6_29
LBB6_29:                                       # %for.body69.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -12                                 # 2-byte Folded Reload
	scl	r1, r1
	lsw	r2, -8                                  # 2-byte Folded Reload
	add	r2, r1, r1
	lsw	r2, -10                                 # 2-byte Folded Reload
	scl	r2, r2
	cmp	r1, r2
	blo	LBB6_31
	br	LBB6_30
LBB6_30:                                       # %for.body69.i.preheader
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r6, -18                                 # 2-byte Folded Reload
	ssw	r5, -14                                 # 2-byte Folded Spill
	br	LBB6_32
LBB6_32:                                       # %for.body69.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB6_34 Depth 4
	shl	r6, r5, 4
	lsw	r2, -10                                 # 2-byte Folded Reload
	br	LBB6_34
LBB6_34:                                       # %for.body82.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_32 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	or	r2, r5, r3
	scl	r3, r3
	stb	r0, r3, r4
	inc	r2
	scl	r2, r3
	cmp	r1, r3
	blo	LBB6_33
	br	LBB6_34
LBB6_33:                                       # %for.cond74.for.cond.cleanup81_crit_edge.i
                                                #   in Loop: Header=BB6_32 Depth=3
	inc	r6
	scl	r6, r2
	lsw	r5, -14                                 # 2-byte Folded Reload
	cmp	r5, r2
	blo	LBB6_31
	br	LBB6_32
LBB6_31:                                       # %for.body103.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -24                                 # 2-byte Folded Reload
	shl	r1, r1, 6
	lsw	r2, -26                                 # 2-byte Folded Reload
	or	r1, r2, r1
	ssw	r1, -14                                 # 2-byte Folded Spill
	lsw	r1, -16                                 # 2-byte Folded Reload
	shl	r1, r1, 4
	ssw	r1, -16                                 # 2-byte Folded Spill
	ldi	r6, 0
	lsw	r3, -8                                  # 2-byte Folded Reload
	lsw	r1, -12                                 # 2-byte Folded Reload
	br	LBB6_35
LBB6_35:                                       # %for.body103.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	add	r6, r1, r2
	lsw	r5, -16                                 # 2-byte Folded Reload
	or	r2, r5, r2
	scl	r2, r2
	lsw	r5, -14                                 # 2-byte Folded Reload
	stb	r0, r2, r5
	inc	r6
	scl	r6, r2
	cmp	r3, r2
	bhi	LBB6_35
	br	LBB6_36
LBB6_20:                                       # %if.then.i65
                                                #   in Loop: Header=BB6_3 Depth=2
	add	r2, r5, r2
	ssw	r2, -14                                 # 2-byte Folded Spill
	cmp	r2, r1
	blo	LBB6_23
	br	LBB6_21
LBB6_21:                                       # %for.body.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -12                                 # 2-byte Folded Reload
	scl	r1, r6
	inc	r6
	lsw	r1, -10                                 # 2-byte Folded Reload
	scl	r1, r1
	cmp	r6, r1
	blo	LBB6_23
	br	LBB6_22
LBB6_22:                                       # %for.body.i66.preheader
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -18                                 # 2-byte Folded Reload
	br	LBB6_24
LBB6_24:                                       # %for.body.i66
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB6_26 Depth 4
	shl	r1, r5, 4
	lsw	r2, -10                                 # 2-byte Folded Reload
	br	LBB6_26
LBB6_26:                                       # %for.body23.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_24 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	or	r2, r5, r3
	scl	r3, r3
	stb	r0, r3, r4
	inc	r2
	scl	r2, r3
	cmp	r6, r3
	blo	LBB6_25
	br	LBB6_26
LBB6_25:                                       # %for.cond16.for.cond.cleanup22_crit_edge.i
                                                #   in Loop: Header=BB6_24 Depth=3
	inc	r1
	scl	r1, r2
	lsw	r3, -14                                 # 2-byte Folded Reload
	cmp	r3, r2
	blo	LBB6_23
	br	LBB6_24
LBB6_23:                                       # %for.body37.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -24                                 # 2-byte Folded Reload
	shl	r1, r1, 6
	lsw	r2, -26                                 # 2-byte Folded Reload
	or	r1, r2, r1
	ssw	r1, -14                                 # 2-byte Folded Spill
	ldi	r6, 0
	lsw	r3, -8                                  # 2-byte Folded Reload
	lsw	r1, -16                                 # 2-byte Folded Reload
	br	LBB6_27
LBB6_27:                                       # %for.body37.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	add	r6, r1, r2
	shl	r2, r2, 4
	lsw	r5, -12                                 # 2-byte Folded Reload
	or	r2, r5, r2
	scl	r2, r2
	lsw	r5, -14                                 # 2-byte Folded Reload
	stb	r0, r2, r5
	inc	r6
	scl	r6, r2
	cmp	r3, r2
	bhi	LBB6_27
	br	LBB6_36
LBB6_36:                                       # %save_ship.exit
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r1, -28                                 # 2-byte Folded Reload
	tst	r1
	beq	LBB6_38
	br	LBB6_37
LBB6_4:                                        # %for.cond.cleanup6
                                                #   in Loop: Header=BB6_1 Depth=1
	lsw	r1, -34                                 # 2-byte Folded Reload
	move	r1, r3
	tst	r1
	beq	LBB6_2
	br	LBB6_1
LBB6_2:                                        # %for.cond.cleanup
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end6:
                                                # -- End function
draw_on_monitor>                                # -- Begin function draw_on_monitor
                                                # @draw_on_monitor
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-10
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r1, 0
	ldi	r0, Players_monitor_device
	ldw	r0, r0
	ssw	r0, -10                                 # 2-byte Folded Spill
	ldi	r3, players_map
	ldi	r4, 7
	move	r1, r2
LBB7_1:                                        # %for.cond2.preheader
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB7_4 Depth 2
                                                #       Child Loop BB7_6 Depth 3
	ssw	r2, -8                                  # 2-byte Folded Spill
	shl	r2, r1, 4
	add	r1, 16
	ldi	r6, 0
	move	r6, r5
	br	LBB7_4
LBB7_5:                                        # %for.body7
                                                #   in Loop: Header=BB7_6 Depth=3
	shr	r2, r2, 1
	dec	r0
LBB7_6:                                        # %for.body7
                                                #   Parent Loop BB7_1 Depth=1
                                                #     Parent Loop BB7_4 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r0
	bgt	LBB7_5
# %bb.7:                                        # %for.body7
                                                #   in Loop: Header=BB7_4 Depth=2
	inc	r5
	or	r1, r5, r0
	scl	r0, r0
	ldb	r0, r3, r0
	and	r0, r4, r0
	cmp	r0, 1
	beq	LBB7_9
# %bb.8:                                        # %for.body7
                                                #   in Loop: Header=BB7_4 Depth=2
	ldi	r2, 0
LBB7_9:                                        # %for.body7
                                                #   in Loop: Header=BB7_4 Depth=2
	or	r2, r6, r6
	cmp	r5, 10
	beq	LBB7_3
	br	LBB7_4
LBB7_4:                                        # %for.body7
                                                #   Parent Loop BB7_1 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB7_6 Depth 3
	ldi	r2, 512
	move	r5, r0
	br	LBB7_6
LBB7_3:                                        # %for.cond.cleanup6
                                                #   in Loop: Header=BB7_1 Depth=1
	lsw	r2, -8                                  # 2-byte Folded Reload
	tst	r6
	beq	LBB7_11
	br	LBB7_10
LBB7_10:                                       # %if.then19
                                                #   in Loop: Header=BB7_1 Depth=1
	shl	r2, r0, 1
	lsw	r1, -10                                 # 2-byte Folded Reload
	stw	r1, r0, r6
LBB7_11:                                       # %if.end21
                                                #   in Loop: Header=BB7_1 Depth=1
	inc	r2
	cmp	r2, 10
	beq	LBB7_2
	br	LBB7_1
LBB7_2:                                        # %for.cond.cleanup
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end7:
                                                # -- End function
debug_draw_on_monitor>                          # -- Begin function debug_draw_on_monitor
                                                # @debug_draw_on_monitor
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-10
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r1, 0
	ldi	r0, Bots_monitor_device
	ldw	r0, r0
	ssw	r0, -10                                 # 2-byte Folded Spill
	ldi	r3, bots_map
	ldi	r4, 7
	move	r1, r2
LBB8_1:                                        # %for.cond2.preheader
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB8_4 Depth 2
                                                #       Child Loop BB8_6 Depth 3
	ssw	r2, -8                                  # 2-byte Folded Spill
	shl	r2, r1, 4
	add	r1, 16
	ldi	r6, 0
	move	r6, r5
	br	LBB8_4
LBB8_5:                                        # %for.body7
                                                #   in Loop: Header=BB8_6 Depth=3
	shr	r2, r2, 1
	dec	r0
LBB8_6:                                        # %for.body7
                                                #   Parent Loop BB8_1 Depth=1
                                                #     Parent Loop BB8_4 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r0
	bgt	LBB8_5
# %bb.7:                                        # %for.body7
                                                #   in Loop: Header=BB8_4 Depth=2
	inc	r5
	or	r1, r5, r0
	scl	r0, r0
	ldb	r0, r3, r0
	and	r0, r4, r0
	cmp	r0, 1
	beq	LBB8_9
# %bb.8:                                        # %for.body7
                                                #   in Loop: Header=BB8_4 Depth=2
	ldi	r2, 0
LBB8_9:                                        # %for.body7
                                                #   in Loop: Header=BB8_4 Depth=2
	or	r2, r6, r6
	cmp	r5, 10
	beq	LBB8_3
	br	LBB8_4
LBB8_4:                                        # %for.body7
                                                #   Parent Loop BB8_1 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB8_6 Depth 3
	ldi	r2, 512
	move	r5, r0
	br	LBB8_6
LBB8_3:                                        # %for.cond.cleanup6
                                                #   in Loop: Header=BB8_1 Depth=1
	lsw	r2, -8                                  # 2-byte Folded Reload
	tst	r6
	beq	LBB8_11
	br	LBB8_10
LBB8_10:                                       # %if.then19
                                                #   in Loop: Header=BB8_1 Depth=1
	shl	r2, r0, 1
	lsw	r1, -10                                 # 2-byte Folded Reload
	stw	r1, r0, r6
LBB8_11:                                       # %if.end21
                                                #   in Loop: Header=BB8_1 Depth=1
	inc	r2
	cmp	r2, 10
	beq	LBB8_2
	br	LBB8_1
LBB8_2:                                        # %for.cond.cleanup
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end8:
                                                # -- End function
print_cord_on_terminal>                         # -- Begin function print_cord_on_terminal
                                                # @print_cord_on_terminal
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	ldi	r2, Terminal_device
	ldw	r2, r2
	ldi	r3, 120
	stw	r2, r3
	ldi	r3, 61
	stw	r2, r3
	add	r0, 48
	stw	r2, r0
	ldi	r0, 32
	stw	r2, r0
	ldi	r0, 121
	stw	r2, r0
	stw	r2, r3
	add	r1, 48
	stw	r2, r1
	ldi	r0, 10
	stw	r2, r0
	stsp	fp
	pop	fp
	rts
Lfunc_end9:
                                                # -- End function
main>                                           # -- Begin function main
                                                # @main
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-74
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r1, 76
	ldi	r0, L.str+1
	ldi	r2, Terminal_device
	ldw	r2, r2
LBB10_1:                                       # %while.body.i
                                                # =>This Inner Loop Header: Depth=1
	sxt	r1, r1
	stw	r2, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB10_1
	br	LBB10_2
LBB10_2:                                       # %print_terminal.exit
	addsp	-8
	ldi	r0, players_map
	ldi	r4, 0
	move	r4, r1
	jsr	random_map_of_bot
	addsp	8
	ldi	r0, Players_monitor_device
	ldw	r0, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	ldi	r0, 512
LBB10_3:                                       # %for.cond2.preheader.i
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB10_5 Depth 2
                                                #       Child Loop BB10_7 Depth 3
	ssw	r4, -38                                 # 2-byte Folded Spill
	shl	r4, r4, 4
	add	r4, 16
	ldi	r3, 0
	move	r3, r5
	br	LBB10_5
LBB10_6:                                       # %for.body7.i
                                                #   in Loop: Header=BB10_7 Depth=3
	shr	r1, r1, 1
	dec	r6
LBB10_7:                                       # %for.body7.i
                                                #   Parent Loop BB10_3 Depth=1
                                                #     Parent Loop BB10_5 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r6
	bgt	LBB10_6
# %bb.8:                                        # %for.body7.i
                                                #   in Loop: Header=BB10_5 Depth=2
	inc	r5
	or	r5, r4, r6
	scl	r6, r6
	ldi	r2, players_map
	ldb	r6, r2, r6
	ldi	r2, 7
	and	r6, r2, r6
	cmp	r6, 1
	beq	LBB10_10
# %bb.9:                                        # %for.body7.i
                                                #   in Loop: Header=BB10_5 Depth=2
	ldi	r1, 0
LBB10_10:                                      # %for.body7.i
                                                #   in Loop: Header=BB10_5 Depth=2
	or	r1, r3, r3
	cmp	r5, 10
	beq	LBB10_4
	br	LBB10_5
LBB10_5:                                       # %for.body7.i
                                                #   Parent Loop BB10_3 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB10_7 Depth 3
	move	r0, r1
	move	r5, r6
	br	LBB10_7
LBB10_4:                                       # %for.cond.cleanup6.i
                                                #   in Loop: Header=BB10_3 Depth=1
	lsw	r4, -38                                 # 2-byte Folded Reload
	tst	r3
	beq	LBB10_12
	br	LBB10_11
LBB10_11:                                      # %if.then19.i
                                                #   in Loop: Header=BB10_3 Depth=1
	shl	r4, r1, 1
	lsw	r2, -40                                 # 2-byte Folded Reload
	stw	r2, r1, r3
LBB10_12:                                      # %if.end21.i
                                                #   in Loop: Header=BB10_3 Depth=1
	inc	r4
	cmp	r4, 10
	bne	LBB10_3
	br	LBB10_13
LBB10_13:                                      # %draw_on_monitor.exit
	addsp	-8
	ldi	r4, bots_map
	ldi	r5, 1
	move	r4, r0
	move	r5, r1
	jsr	random_map_of_bot
	move	r5, r1
	addsp	8
	ldi	r2, 0
	ldi	r3, 10
	ldi	r5, status_debug_line
	ldi	r0, -36
	add	r0, fp, r0
	ssw	r0, -44                                 # 2-byte Folded Spill
	ssw	r3, -62                                 # 2-byte Folded Spill
	ssw	r3, -64                                 # 2-byte Folded Spill
	move	r5, r3
	ssw	r2, -54                                 # 2-byte Folded Spill
	ssw	r2, -68                                 # 2-byte Folded Spill
	ssw	r2, -66                                 # 2-byte Folded Spill
	ssw	r2, -50                                 # 2-byte Folded Spill
	ssw	r2, -48                                 # 2-byte Folded Spill
	ssw	r2, -60                                 # 2-byte Folded Spill
	ssw	r2, -70                                 # 2-byte Folded Spill
	ssw	r2, -40                                 # 2-byte Folded Spill
	ssw	r2, -42                                 # 2-byte Folded Spill
	br	LBB10_15
LBB10_14:                                      # %while.cond.loopexit
                                                #   in Loop: Header=BB10_15 Depth=1
	lsw	r0, -62                                 # 2-byte Folded Reload
	scl	r0, r0
	ldi	r4, bots_map
	tst	r0
	beq	LBB10_115
	br	LBB10_15
LBB10_15:                                      # %while.body
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB10_16 Depth 2
                                                #     Child Loop BB10_18 Depth 2
                                                #       Child Loop BB10_62 Depth 3
                                                #       Child Loop BB10_23 Depth 3
                                                #       Child Loop BB10_26 Depth 3
                                                #       Child Loop BB10_29 Depth 3
                                                #       Child Loop BB10_32 Depth 3
                                                #       Child Loop BB10_34 Depth 3
                                                #         Child Loop BB10_36 Depth 4
                                                #           Child Loop BB10_39 Depth 5
                                                #       Child Loop BB10_45 Depth 3
                                                #         Child Loop BB10_47 Depth 4
                                                #           Child Loop BB10_50 Depth 5
                                                #       Child Loop BB10_53 Depth 3
                                                #     Child Loop BB10_57 Depth 2
                                                #     Child Loop BB10_60 Depth 2
                                                #     Child Loop BB10_67 Depth 2
                                                #     Child Loop BB10_69 Depth 2
                                                #       Child Loop BB10_71 Depth 3
                                                #       Child Loop BB10_79 Depth 3
                                                #       Child Loop BB10_89 Depth 3
                                                #       Child Loop BB10_92 Depth 3
                                                #       Child Loop BB10_98 Depth 3
                                                #     Child Loop BB10_106 Depth 2
                                                #     Child Loop BB10_109 Depth 2
	ldi	r0, Step_indicator_device
	ldw	r0, r0
	stw	r0, r1
	ldi	r0, Terminal_device
	ldw	r0, r0
	ldi	r1, L.str.1+1
	ldi	r2, 10
LBB10_16:                                      # %while.body.i388
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	sxt	r2, r2
	stw	r0, r2
	ldb	r1, r2
	inc	r1
	tst	r2
	bne	LBB10_16
	br	LBB10_17
LBB10_17:                                      # %while.body10.preheader
                                                #   in Loop: Header=BB10_15 Depth=1
	ldw	r3, r0
	ldi	r1, -32768
	or	r0, r1, r0
	ldi	r1, Debug_line_device
	ldw	r1, r5
	ldi	r2, 0
LBB10_18:                                      # %while.body10
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB10_62 Depth 3
                                                #       Child Loop BB10_23 Depth 3
                                                #       Child Loop BB10_26 Depth 3
                                                #       Child Loop BB10_29 Depth 3
                                                #       Child Loop BB10_32 Depth 3
                                                #       Child Loop BB10_34 Depth 3
                                                #         Child Loop BB10_36 Depth 4
                                                #           Child Loop BB10_39 Depth 5
                                                #       Child Loop BB10_45 Depth 3
                                                #         Child Loop BB10_47 Depth 4
                                                #           Child Loop BB10_50 Depth 5
                                                #       Child Loop BB10_53 Depth 3
	stw	r5, r0
	stw	r3, r2
	addsp	-8
	jsr	waiting
	addsp	8
	ldi	r0, Gun_device
	ldw	r0, r0
	ldw	r0, r1
	ldi	r0, Terminal_device
	ldw	r0, r6
	ldi	r0, 120
	stw	r6, r0
	ldi	r0, 61
	move	r0, r5
	stw	r6, r5
	ldi	r0, 240
	and	r1, r0, r0
	shr	r0, r0, 4
	ldi	r2, 9
	sub	r2, r0, r2
	scl	r2, r3
	move	r3, r2
	add	r2, 48
	stw	r6, r2
	ldi	r2, 32
	stw	r6, r2
	ldi	r2, 121
	stw	r6, r2
	stw	r6, r5
	move	r4, r5
	ldi	r2, 15
	and	r1, r2, r4
	ldi	r2, 48
	or	r4, r2, r2
	stw	r6, r2
	ldi	r2, 10
	sub	r2, r0, r0
	shl	r1, r1, 4
	add	r1, 16
	or	r1, r0, r0
	stw	r6, r2
	scl	r0, r2
	ldb	r2, r5, r1
	ldi	r0, Debug_line_device
	ldw	r0, r5
	ldi	r0, 1
	stw	r5, r0
	ldi	r0, 7
	and	r1, r0, r0
	ssw	r5, -58                                 # 2-byte Folded Spill
	ssw	r2, -56                                 # 2-byte Folded Spill
	cmp	r0, 1
	beq	LBB10_22
	br	LBB10_19
LBB10_19:                                      # %while.body10
                                                #   in Loop: Header=BB10_18 Depth=2
	cmp	r0, 3
	beq	LBB10_21
	br	LBB10_20
LBB10_21:                                      # %while.body.i421.preheader
                                                #   in Loop: Header=BB10_18 Depth=2
	ldi	r0, L.str.5+1
	ldi	r1, 110
	ldi	r4, bots_map
	ldi	r2, 0
	ldi	r3, status_debug_line
	br	LBB10_62
LBB10_62:                                      # %while.body.i421
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	sxt	r1, r1
	stw	r6, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB10_62
	br	LBB10_63
LBB10_22:                                      # %while.body.i395.preheader
                                                #   in Loop: Header=BB10_18 Depth=2
	ldi	r0, L.str.2+1
	ldi	r2, 72
LBB10_23:                                      # %while.body.i395
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	sxt	r2, r2
	stw	r6, r2
	ldb	r0, r2
	inc	r0
	tst	r2
	bne	LBB10_23
	br	LBB10_24
LBB10_24:                                      # %print_terminal.exit400
                                                #   in Loop: Header=BB10_18 Depth=2
	ssw	r6, -72                                 # 2-byte Folded Spill
	ldi	r2, 512
	br	LBB10_26
LBB10_25:                                      # %print_terminal.exit400
                                                #   in Loop: Header=BB10_26 Depth=3
	shr	r2, r2, 1
	dec	r3
LBB10_26:                                      # %print_terminal.exit400
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r3
	bgt	LBB10_25
# %bb.27:                                       # %print_terminal.exit400
                                                #   in Loop: Header=BB10_18 Depth=2
	ldi	r0, Bots_monitor_device
	ldw	r0, r5
	shl	r4, r0, 1
	stw	r5, r0, r2
	stw	r5, r0, r2
	shr	r1, r0, 5
	ldi	r2, 6
	and	r0, r2, r0
	shr	r1, r1, 3
	ldi	r2, 7
	and	r1, r2, r1
	ssw	r1, -52                                 # 2-byte Folded Spill
	shl	r1, r1, 1
	ldi	r2, status_ships
	ldw	r1, r2, r1
	ldw	r1, r0, r3
	ldi	r2, -512
	ssw	r3, -46                                 # 2-byte Folded Spill
	add	r3, r2, r2
	stw	r1, r0, r2
	ldi	r3, status_debug_line
	ldw	r3, r0
	ldi	r1, 112
	or	r0, r1, r0
	stw	r3, r0
	ldi	r0, 7680
	and	r2, r0, r0
	ldi	r4, bots_map
	ldi	r2, 0
	lsw	r6, -72                                 # 2-byte Folded Reload
	tst	r0
	bne	LBB10_63
	br	LBB10_28
LBB10_28:                                      # %while.body.i401.preheader
                                                #   in Loop: Header=BB10_18 Depth=2
	ssw	r5, -74                                 # 2-byte Folded Spill
	ldi	r0, L.str.3+1
	ldi	r1, 42
LBB10_29:                                      # %while.body.i401
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	sxt	r1, r1
	stw	r6, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB10_29
	br	LBB10_30
LBB10_30:                                      # %print_terminal.exit406
                                                #   in Loop: Header=BB10_18 Depth=2
	move	r2, r0
	ldi	r1, 15
	lsw	r3, -44                                 # 2-byte Folded Reload
	lsw	r5, -52                                 # 2-byte Folded Reload
	br	LBB10_32
LBB10_32:                                      # %for.body.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	stw	r3, r0, r2
	add	r0, 2
	cmp	r0, 30
	beq	LBB10_31
	br	LBB10_32
LBB10_31:                                      # %for.cond.cleanup.i
                                                #   in Loop: Header=BB10_18 Depth=2
	lsw	r3, -46                                 # 2-byte Folded Reload
	and	r3, r1, r2
	ldi	r0, 256
	and	r3, r0, r0
	ssw	r2, -38                                 # 2-byte Folded Spill
	tst	r0
	beq	LBB10_42
	br	LBB10_33
LBB10_42:                                      # %if.else.i
                                                #   in Loop: Header=BB10_18 Depth=2
	add	r5, r2, r5
	move	r5, r0
	add	r0, 2
	cmp	r2, r0
	bls	LBB10_44
	br	LBB10_43
LBB10_44:                                      # %for.body70.i.preheader
                                                #   in Loop: Header=BB10_18 Depth=2
	shr	r3, r0, 4
	ldi	r1, 15
	and	r0, r1, r0
	add	r5, 3
	move	r0, r1
	add	r1, 2
	ssw	r1, -52                                 # 2-byte Folded Spill
LBB10_45:                                      # %for.body70.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB10_47 Depth 4
                                                #           Child Loop BB10_50 Depth 5
	move	r0, r3
	shl	r3, r0, 1
	lsw	r1, -44                                 # 2-byte Folded Reload
	add	r1, r0, r2
	ssw	r3, -46                                 # 2-byte Folded Spill
	shl	r3, r6, 4
	lsw	r3, -38                                 # 2-byte Folded Reload
	br	LBB10_47
LBB10_49:                                      # %if.then95.i
                                                #   in Loop: Header=BB10_50 Depth=5
	shr	r0, r0, 1
	dec	r1
LBB10_50:                                      # %if.then95.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                #       Parent Loop BB10_45 Depth=3
                                                #         Parent Loop BB10_47 Depth=4
                                                # =>        This Inner Loop Header: Depth=5
	tst	r1
	bgt	LBB10_49
# %bb.51:                                       # %if.then95.i
                                                #   in Loop: Header=BB10_47 Depth=4
	ldw	r2, r1
	or	r1, r0, r0
	stw	r2, r0
LBB10_52:                                      # %for.inc110.i
                                                #   in Loop: Header=BB10_47 Depth=4
	inc	r3
	cmp	r5, r3
	beq	LBB10_46
	br	LBB10_47
LBB10_47:                                      # %for.body83.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                #       Parent Loop BB10_45 Depth=3
                                                # =>      This Loop Header: Depth=4
                                                #           Child Loop BB10_50 Depth 5
	or	r6, r3, r0
	scl	r0, r0
	ldb	r0, r4, r1
	ldi	r4, 7
	and	r1, r4, r1
	ldi	r4, bots_map
	cmp	r1, 2
	bne	LBB10_52
	br	LBB10_48
LBB10_48:                                      # %if.then95.i
                                                #   in Loop: Header=BB10_47 Depth=4
	ldi	r1, 3
	stb	r0, r4, r1
	move	r3, r1
	dec	r1
	ldi	r0, 512
	br	LBB10_50
LBB10_46:                                      # %for.cond75.for.cond.cleanup82_crit_edge.i
                                                #   in Loop: Header=BB10_45 Depth=3
	lsw	r2, -46                                 # 2-byte Folded Reload
	move	r2, r0
	inc	r0
	lsw	r1, -52                                 # 2-byte Folded Reload
	cmp	r2, r1
	beq	LBB10_43
	br	LBB10_45
LBB10_33:                                      # %for.body18.i.preheader
                                                #   in Loop: Header=BB10_18 Depth=2
	shr	r3, r0, 4
	and	r0, r1, r0
	ldi	r1, 240
	and	r3, r1, r1
	shr	r1, r1, 4
	add	r5, r1, r1
	add	r1, 2
	ssw	r1, -52                                 # 2-byte Folded Spill
LBB10_34:                                      # %for.body18.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB10_36 Depth 4
                                                #           Child Loop BB10_39 Depth 5
	move	r0, r2
	shl	r2, r0, 1
	lsw	r1, -44                                 # 2-byte Folded Reload
	add	r1, r0, r1
	ssw	r2, -46                                 # 2-byte Folded Spill
	shl	r2, r2, 4
	ldi	r3, 0
	br	LBB10_36
LBB10_38:                                      # %if.then40.i
                                                #   in Loop: Header=BB10_39 Depth=5
	shr	r0, r0, 1
	dec	r5
LBB10_39:                                      # %if.then40.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                #       Parent Loop BB10_34 Depth=3
                                                #         Parent Loop BB10_36 Depth=4
                                                # =>        This Inner Loop Header: Depth=5
	tst	r5
	bgt	LBB10_38
# %bb.40:                                       # %if.then40.i
                                                #   in Loop: Header=BB10_36 Depth=4
	ldw	r1, r5
	or	r5, r0, r0
	stw	r1, r0
LBB10_41:                                      # %for.inc53.i
                                                #   in Loop: Header=BB10_36 Depth=4
	inc	r3
	cmp	r3, 3
	beq	LBB10_35
	br	LBB10_36
LBB10_36:                                      # %for.body30.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                #       Parent Loop BB10_34 Depth=3
                                                # =>      This Loop Header: Depth=4
                                                #           Child Loop BB10_39 Depth 5
	lsw	r0, -38                                 # 2-byte Folded Reload
	add	r0, r3, r5
	or	r2, r5, r0
	scl	r0, r0
	ldb	r0, r4, r6
	ldi	r4, 7
	and	r6, r4, r6
	ldi	r4, bots_map
	cmp	r6, 2
	bne	LBB10_41
	br	LBB10_37
LBB10_37:                                      # %if.then40.i
                                                #   in Loop: Header=BB10_36 Depth=4
	ldi	r6, 3
	stb	r0, r4, r6
	dec	r5
	ldi	r0, 512
	br	LBB10_39
LBB10_35:                                      # %for.cond23.for.cond.cleanup29_crit_edge.i
                                                #   in Loop: Header=BB10_34 Depth=3
	lsw	r2, -46                                 # 2-byte Folded Reload
	move	r2, r0
	inc	r0
	lsw	r1, -52                                 # 2-byte Folded Reload
	cmp	r2, r1
	blo	LBB10_34
	br	LBB10_43
LBB10_43:                                      # %for.body122.i.preheader
                                                #   in Loop: Header=BB10_18 Depth=2
	ldi	r2, 0
	move	r2, r0
	ldi	r3, status_debug_line
	ldi	r5, 2
	lsw	r6, -74                                 # 2-byte Folded Reload
	br	LBB10_53
LBB10_54:                                      # %if.then128.i
                                                #   in Loop: Header=BB10_53 Depth=3
	stw	r6, r0, r1
LBB10_55:                                      # %for.inc134.i
                                                #   in Loop: Header=BB10_53 Depth=3
	add	r0, 2
	cmp	r0, 20
	bne	LBB10_53
	br	LBB10_56
LBB10_53:                                      # %for.body122.i
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_18 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	lsw	r1, -44                                 # 2-byte Folded Reload
	add	r1, r0, r1
	ldw	r1, r5, r1
	tst	r1
	beq	LBB10_55
	br	LBB10_54
LBB10_56:                                      # %make_frame.exit
                                                #   in Loop: Header=BB10_18 Depth=2
	lsw	r0, -64                                 # 2-byte Folded Reload
	dec	r0
	ssw	r0, -64                                 # 2-byte Folded Spill
	lsw	r6, -72                                 # 2-byte Folded Reload
	br	LBB10_63
LBB10_63:                                      # %if.end69
                                                #   in Loop: Header=BB10_18 Depth=2
	ldi	r0, 3
	lsw	r1, -56                                 # 2-byte Folded Reload
	stb	r1, r4, r0
	ldi	r0, 8184
	stw	r3, r0
	lsw	r0, -64                                 # 2-byte Folded Reload
	scl	r0, r1
	ldi	r0, -24584
	lsw	r5, -58                                 # 2-byte Folded Reload
	tst	r1
	bne	LBB10_18
	br	LBB10_64
LBB10_20:                                      # %while.body.i415.preheader
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r0, L.str.4+1
	ldi	r1, 77
	br	LBB10_57
LBB10_57:                                      # %while.body.i415
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	sxt	r1, r1
	stw	r6, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB10_57
	br	LBB10_58
LBB10_58:                                      # %if.end69.thread
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r1, 512
	br	LBB10_60
LBB10_59:                                      # %if.end69.thread
                                                #   in Loop: Header=BB10_60 Depth=2
	shr	r1, r1, 1
	dec	r3
LBB10_60:                                      # %if.end69.thread
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	tst	r3
	bgt	LBB10_59
# %bb.61:                                       # %if.end69.thread
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r0, Bots_monitor_device
	ldw	r0, r0
	shl	r4, r2, 1
	stw	r0, r2, r1
	ldi	r0, bots_map
	ldi	r1, 3
	lsw	r2, -56                                 # 2-byte Folded Reload
	stb	r2, r0, r1
	ldi	r0, status_debug_line
	ldi	r1, 8184
	stw	r0, r1
	ldi	r2, 0
	br	LBB10_64
LBB10_64:                                      # %while.end
                                                #   in Loop: Header=BB10_15 Depth=1
	lsw	r0, -64                                 # 2-byte Folded Reload
	scl	r0, r0
	tst	r0
	bne	LBB10_66
	br	LBB10_65
LBB10_66:                                      # %if.end76
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r0, Step_indicator_device
	ldw	r0, r0
	stw	r0, r2
	ldi	r0, 21845
	stw	r5, r0
	ldi	r0, L.str.6+1
	ldi	r1, 10
LBB10_67:                                      # %while.body.i427
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	sxt	r1, r1
	stw	r6, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB10_67
	br	LBB10_68
LBB10_68:                                      # %while.body85.preheader
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r1, 1
LBB10_69:                                      # %while.body85
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB10_71 Depth 3
                                                #       Child Loop BB10_79 Depth 3
                                                #       Child Loop BB10_89 Depth 3
                                                #       Child Loop BB10_92 Depth 3
                                                #       Child Loop BB10_98 Depth 3
	lsw	r0, -60                                 # 2-byte Folded Reload
	lsw	r2, -54                                 # 2-byte Folded Reload
	ssw	r0, -58                                 # 2-byte Folded Spill
	ssw	r2, -56                                 # 2-byte Folded Spill
	tst	r2
	bne	LBB10_76
	br	LBB10_70
LBB10_76:                                      # %if.else106
                                                #   in Loop: Header=BB10_69 Depth=2
	scl	r0, r0
	cmp	r0, 1
	bne	LBB10_80
	br	LBB10_77
LBB10_77:                                      # %for.body.preheader
                                                #   in Loop: Header=BB10_69 Depth=2
	ldi	r0, 0
	br	LBB10_79
LBB10_79:                                      # %for.body
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_69 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	ldi	r2, L__const.main.dirs
	ldb	r0, r2, r5
	ldi	r2, L__const.main.dirs+1
	ldb	r0, r2, r4
	lsw	r2, -48                                 # 2-byte Folded Reload
	add	r4, r2, r6
	lsw	r2, -50                                 # 2-byte Folded Reload
	add	r5, r2, r3
	move	r1, r2
	shl	r6, r1, 4
	ssw	r3, -38                                 # 2-byte Folded Spill
	or	r1, r3, r1
	scl	r1, r3
	ldi	r1, players_map
	ldb	r3, r1, r1
	cmp	r1, 3
	beq	LBB10_78
	br	LBB10_86
LBB10_78:                                      # %for.cond
                                                #   in Loop: Header=BB10_79 Depth=3
	add	r0, 2
	ldi	r1, 1
	move	r1, r4
	ldi	r2, 0
	move	r2, r3
	cmp	r0, 8
	beq	LBB10_113
	br	LBB10_79
LBB10_70:                                      # %do.body.preheader
                                                #   in Loop: Header=BB10_69 Depth=2
	ldi	r0, Rand_device
	ldw	r0, r0
LBB10_71:                                      # %do.body
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_69 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	ldw	r0, r1
	ldw	r0, r2
	ldi	r3, 15
	and	r2, r3, r2
	ldi	r4, 246
	add	r2, r4, r6
	cmp	r2, 9
	bhi	LBB10_73
# %bb.72:                                       # %do.body
                                                #   in Loop: Header=BB10_71 Depth=3
	move	r2, r6
LBB10_73:                                      # %do.body
                                                #   in Loop: Header=BB10_71 Depth=3
	and	r1, r3, r1
	ldi	r2, 246
	add	r1, r2, r2
	cmp	r1, 9
	bhi	LBB10_75
# %bb.74:                                       # %do.body
                                                #   in Loop: Header=BB10_71 Depth=3
	move	r1, r2
LBB10_75:                                      # %do.body
                                                #   in Loop: Header=BB10_71 Depth=3
	inc	r2
	ssw	r2, -38                                 # 2-byte Folded Spill
	inc	r6
	shl	r6, r1, 4
	or	r1, r2, r1
	scl	r1, r3
	ldi	r1, players_map
	ldb	r3, r1, r1
	lsw	r4, -42                                 # 2-byte Folded Reload
	lsw	r5, -40                                 # 2-byte Folded Reload
	ldi	r2, 0
	cmp	r1, 3
	beq	LBB10_71
	br	LBB10_86
LBB10_80:                                      # %if.else155
                                                #   in Loop: Header=BB10_69 Depth=2
	lsw	r0, -68                                 # 2-byte Folded Reload
	lsw	r1, -40                                 # 2-byte Folded Reload
	add	r0, r1, r2
	lsw	r0, -66                                 # 2-byte Folded Reload
	lsw	r1, -42                                 # 2-byte Folded Reload
	add	r0, r1, r6
	shl	r6, r0, 4
	ssw	r2, -38                                 # 2-byte Folded Spill
	or	r0, r2, r0
	scl	r0, r3
	ldi	r0, players_map
	ldb	r3, r0, r0
	scl	r6, r1
	cmp	r1, 10
	bhi	LBB10_85
	br	LBB10_81
LBB10_81:                                      # %if.else155
                                                #   in Loop: Header=BB10_69 Depth=2
	lsw	r2, -38                                 # 2-byte Folded Reload
	scl	r2, r2
	cmp	r2, 10
	bhi	LBB10_85
	br	LBB10_82
LBB10_82:                                      # %if.else155
                                                #   in Loop: Header=BB10_69 Depth=2
	tst	r1
	beq	LBB10_85
	br	LBB10_83
LBB10_83:                                      # %if.else155
                                                #   in Loop: Header=BB10_69 Depth=2
	tst	r2
	beq	LBB10_85
	br	LBB10_84
LBB10_84:                                      # %if.else155
                                                #   in Loop: Header=BB10_69 Depth=2
	scl	r0, r0
	lsw	r4, -42                                 # 2-byte Folded Reload
	lsw	r5, -40                                 # 2-byte Folded Reload
	ldi	r1, 1
	move	r1, r2
	cmp	r0, 3
	bne	LBB10_86
	br	LBB10_85
LBB10_86:                                      # %if.end198
                                                #   in Loop: Header=BB10_69 Depth=2
	ssw	r5, -52                                 # 2-byte Folded Spill
	ssw	r4, -46                                 # 2-byte Folded Spill
	ssw	r2, -54                                 # 2-byte Folded Spill
	ldi	r0, Terminal_device
	ldw	r0, r2
	ldi	r0, 120
	stw	r2, r0
	ldi	r0, 61
	move	r0, r1
	stw	r2, r1
	lsw	r0, -38                                 # 2-byte Folded Reload
	ssw	r0, -38                                 # 2-byte Folded Spill
	scl	r0, r0
	add	r0, 48
	stw	r2, r0
	ldi	r0, 32
	stw	r2, r0
	ldi	r0, 121
	stw	r2, r0
	stw	r2, r1
	scl	r6, r0
	add	r0, 48
	stw	r2, r0
	ldi	r0, 10
	stw	r2, r0
	ldi	r0, players_map
	ldb	r3, r0, r5
	ldi	r1, 3
	stb	r3, r0, r1
	move	r6, r4
	dec	r4
	lsw	r3, -38                                 # 2-byte Folded Reload
	move	r3, r0
	dec	r0
	ldi	r1, 7
	ssw	r5, -40                                 # 2-byte Folded Spill
	and	r5, r1, r1
	cmp	r1, 1
	beq	LBB10_88
	br	LBB10_87
LBB10_88:                                      # %while.body.i443.preheader
                                                #   in Loop: Header=BB10_69 Depth=2
	ldi	r1, L.str.2+1
	ldi	r3, 72
LBB10_89:                                      # %while.body.i443
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_69 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	sxt	r3, r3
	stw	r2, r3
	ldb	r1, r3
	inc	r1
	tst	r3
	bne	LBB10_89
	br	LBB10_90
LBB10_90:                                      # %print_terminal.exit448
                                                #   in Loop: Header=BB10_69 Depth=2
	scl	r0, r1
	ldi	r0, 512
	br	LBB10_92
LBB10_91:                                      # %print_terminal.exit448
                                                #   in Loop: Header=BB10_92 Depth=3
	shr	r0, r0, 1
	dec	r1
LBB10_92:                                      # %print_terminal.exit448
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_69 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r1
	bgt	LBB10_91
# %bb.93:                                       # %print_terminal.exit448
                                                #   in Loop: Header=BB10_69 Depth=2
	ldi	r1, Players_monitor_device
	ldw	r1, r5
	scl	r4, r1
	shl	r1, r1, 1
	ssw	r5, -60                                 # 2-byte Folded Spill
	stw	r5, r1, r0
	lsw	r0, -56                                 # 2-byte Folded Reload
	tst	r0
	bne	LBB10_95
	br	LBB10_94
LBB10_95:                                      # %if.else233
                                                #   in Loop: Header=BB10_69 Depth=2
	lsw	r4, -58                                 # 2-byte Folded Reload
	inc	r4
	ldi	r1, 1
	lsw	r0, -70                                 # 2-byte Folded Reload
	move	r6, r5
LBB10_96:                                      # %if.end235
                                                #   in Loop: Header=BB10_69 Depth=2
	ssw	r0, -70                                 # 2-byte Folded Spill
	scl	r0, r6
	scl	r4, r0
	lsw	r3, -46                                 # 2-byte Folded Reload
	ssw	r3, -42                                 # 2-byte Folded Spill
	lsw	r3, -52                                 # 2-byte Folded Reload
	ssw	r3, -40                                 # 2-byte Folded Spill
	ssw	r5, -54                                 # 2-byte Folded Spill
	ssw	r5, -66                                 # 2-byte Folded Spill
	lsw	r3, -38                                 # 2-byte Folded Reload
	ssw	r3, -68                                 # 2-byte Folded Spill
	move	r1, r3
	cmp	r0, r6
	bne	LBB10_113
	br	LBB10_97
LBB10_97:                                      # %while.body.i449.preheader
                                                #   in Loop: Header=BB10_69 Depth=2
	ldi	r0, L.str.3+1
	ldi	r1, 42
LBB10_98:                                      # %while.body.i449
                                                #   Parent Loop BB10_15 Depth=1
                                                #     Parent Loop BB10_69 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	sxt	r1, r1
	stw	r2, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	LBB10_98
	br	LBB10_99
LBB10_99:                                      # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	addsp	-12
	ldsp	r0
	ldi	r1, 10
	lsw	r2, -60                                 # 2-byte Folded Reload
	stw	r0, r1, r2
	ldi	r1, players_map
	ldi	r2, 8
	stw	r0, r2, r1
	lsw	r3, -46                                 # 2-byte Folded Reload
	sxt	r3, r0
	lsw	r1, -48                                 # 2-byte Folded Reload
	lsw	r4, -52                                 # 2-byte Folded Reload
	lsw	r5, -54                                 # 2-byte Folded Reload
	tst	r0
	bgt	LBB10_101
# %bb.100:                                      # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	move	r5, r1
LBB10_101:                                     # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	sxt	r4, r2
	lsw	r0, -50                                 # 2-byte Folded Reload
	tst	r2
	bgt	LBB10_103
# %bb.102:                                      # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	lsw	r0, -38                                 # 2-byte Folded Reload
LBB10_103:                                     # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	scl	r3, r3
	ldi	r2, 1
	tst	r3
	bne	LBB10_105
# %bb.104:                                      # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	ldi	r2, 0
LBB10_105:                                     # %print_terminal.exit454
                                                #   in Loop: Header=BB10_69 Depth=2
	dec	r0
	scl	r0, r0
	dec	r1
	scl	r1, r1
	move	r6, r3
	jsr	make_frame
	addsp	12
	lsw	r0, -62                                 # 2-byte Folded Reload
	dec	r0
	ssw	r0, -62                                 # 2-byte Folded Spill
	lsw	r0, -46                                 # 2-byte Folded Reload
	ssw	r0, -42                                 # 2-byte Folded Spill
	ssw	r4, -40                                 # 2-byte Folded Spill
	lsw	r4, -70                                 # 2-byte Folded Reload
	ssw	r5, -66                                 # 2-byte Folded Spill
	lsw	r0, -38                                 # 2-byte Folded Reload
	ssw	r0, -68                                 # 2-byte Folded Spill
	ldi	r0, 0
	move	r0, r3
	ldi	r1, 1
	br	LBB10_113
LBB10_94:                                      # %if.then227
                                                #   in Loop: Header=BB10_69 Depth=2
	lsw	r0, -40                                 # 2-byte Folded Reload
	shr	r0, r0, 3
	ldi	r1, 7
	and	r0, r1, r0
	inc	r0
	ldi	r1, 1
	move	r1, r4
	move	r6, r5
	ssw	r5, -48                                 # 2-byte Folded Spill
	lsw	r3, -38                                 # 2-byte Folded Reload
	ssw	r3, -50                                 # 2-byte Folded Spill
	br	LBB10_96
LBB10_85:                                      # %if.then189
                                                #   in Loop: Header=BB10_69 Depth=2
	lsw	r0, -42                                 # 2-byte Folded Reload
	neg	r0, r0
	ssw	r0, -42                                 # 2-byte Folded Spill
	lsw	r0, -40                                 # 2-byte Folded Reload
	neg	r0, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	lsw	r4, -58                                 # 2-byte Folded Reload
	lsw	r0, -48                                 # 2-byte Folded Reload
	ssw	r0, -66                                 # 2-byte Folded Spill
	lsw	r0, -50                                 # 2-byte Folded Reload
	ssw	r0, -68                                 # 2-byte Folded Spill
	ldi	r1, 1
	move	r1, r3
	br	LBB10_113
LBB10_113:                                     # %cleanup289
                                                #   in Loop: Header=BB10_69 Depth=2
	ssw	r4, -60                                 # 2-byte Folded Spill
	ssw	r3, -54                                 # 2-byte Folded Spill
	lsw	r0, -62                                 # 2-byte Folded Reload
	scl	r0, r0
	ldi	r3, status_debug_line
	tst	r0
	beq	LBB10_14
	br	LBB10_69
LBB10_87:                                      # %while.body.i455.preheader
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r1, L.str.4+1
	ldi	r5, 77
	br	LBB10_106
LBB10_106:                                     # %while.body.i455
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	sxt	r5, r3
	stw	r2, r3
	ldb	r1, r5
	inc	r1
	tst	r5
	bne	LBB10_106
	br	LBB10_107
LBB10_107:                                     # %print_terminal.exit460
                                                #   in Loop: Header=BB10_15 Depth=1
	scl	r0, r1
	ldi	r0, 512
	ldi	r3, status_debug_line
	lsw	r5, -52                                 # 2-byte Folded Reload
	br	LBB10_109
LBB10_108:                                     # %print_terminal.exit460
                                                #   in Loop: Header=BB10_109 Depth=2
	shr	r0, r0, 1
	dec	r1
LBB10_109:                                     # %print_terminal.exit460
                                                #   Parent Loop BB10_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	tst	r1
	bgt	LBB10_108
# %bb.110:                                      # %print_terminal.exit460
                                                #   in Loop: Header=BB10_15 Depth=1
	ldi	r1, Players_monitor_device
	ldw	r1, r1
	scl	r4, r2
	shl	r2, r2, 1
	stw	r1, r2, r0
	lsw	r2, -58                                 # 2-byte Folded Reload
	ssw	r2, -60                                 # 2-byte Folded Spill
	ssw	r5, -40                                 # 2-byte Folded Spill
	lsw	r4, -46                                 # 2-byte Folded Reload
	ssw	r4, -42                                 # 2-byte Folded Spill
	ldi	r1, 1
	lsw	r0, -56                                 # 2-byte Folded Reload
	tst	r0
	beq	LBB10_14
	br	LBB10_111
LBB10_111:                                     # %print_terminal.exit460
                                                #   in Loop: Header=BB10_15 Depth=1
	scl	r2, r0
	ssw	r2, -60                                 # 2-byte Folded Spill
	ssw	r5, -40                                 # 2-byte Folded Spill
	ssw	r4, -42                                 # 2-byte Folded Spill
	cmp	r0, 2
	blo	LBB10_14
	br	LBB10_112
LBB10_112:                                     # %if.then280
                                                #   in Loop: Header=BB10_15 Depth=1
	neg	r4, r0
	ssw	r0, -42                                 # 2-byte Folded Spill
	neg	r5, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	ssw	r1, -54                                 # 2-byte Folded Spill
	lsw	r0, -50                                 # 2-byte Folded Reload
	ssw	r0, -68                                 # 2-byte Folded Spill
	lsw	r0, -48                                 # 2-byte Folded Reload
	ssw	r0, -66                                 # 2-byte Folded Spill
	ssw	r2, -60                                 # 2-byte Folded Spill
	br	LBB10_14
LBB10_65:                                      # %while.body.i461.preheader
	ldi	r1, 80
	ldi	r0, L.str.7+1
	br	LBB10_114
LBB10_114:                                     # %while.body.i461
                                                # =>This Inner Loop Header: Depth=1
	sxt	r1, r1
	stw	r6, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	beq	LBB10_117
	br	LBB10_114
LBB10_115:                                     # %if.else302
	ldi	r2, 66
	ldi	r0, L.str.8+1
	ldi	r1, Terminal_device
	ldw	r1, r1
LBB10_116:                                     # %while.body.i467
                                                # =>This Inner Loop Header: Depth=1
	sxt	r2, r2
	stw	r1, r2
	ldb	r0, r2
	inc	r0
	tst	r2
	bne	LBB10_116
	br	LBB10_117
LBB10_117:                                     # %if.end303
	ldi	r0, 0
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
Lfunc_end10:
                                                # -- End function
### SECTION: .data                              # @Rand_device
	align	2
Rand_device>
	dc	65306

	align	2                                       # @Players_monitor_device
Players_monitor_device>
	dc	65408

	align	2                                       # @Bots_monitor_device
Bots_monitor_device>
	dc	65280

	align	2                                       # @Step_indicator_device
Step_indicator_device>
	dc	65304

	align	2                                       # @Gun_device
Gun_device>
	dc	65302

	align	2                                       # @Debug_line_device
Debug_line_device>
	dc	65310

	align	2                                       # @Terminal_device
Terminal_device>
	dc	65312

	align	2                                       # @Reset_bots_monitor_device
Reset_bots_monitor_device>
	dc	65300

	align	2                                       # @Reset_players_monitor_device
Reset_players_monitor_device>
	dc	65428

### SECTION: .bss                               # @one_cell_ships
	align	2
one_cell_ships>
	ds	8

	align	2                                       # @two_cell_ships
two_cell_ships>
	ds	6

	align	2                                       # @three_cell_ships
three_cell_ships>
	ds	4

	align	2                                       # @four_cell_ship
four_cell_ship>
	dc	0                                       # 0x0

### SECTION: .data                              # @status_ships
	align	2
status_ships>
	dc	one_cell_ships
	dc	two_cell_ships
	dc	three_cell_ships
	dc	four_cell_ship

### SECTION: .bss                               # @players_map
players_map>
	ds	256

bots_map>                                       # @bots_map
	ds	256

### SECTION: .rodata.str1.1                     # @.str
L.str:
	db	"Loading...\n\000"

L.str.1:                                       # @.str.1
	db	"\n--- PLAYER'S TURN ---\n\000"

### SECTION: .bss                               # @status_debug_line
	align	2
status_debug_line>
	dc	0                                       # 0x0

### SECTION: .rodata.str1.1                     # @.str.2
L.str.2:
	db	"Hit!\n\000"

L.str.3:                                       # @.str.3
	db	"*sank*\n\000"

L.str.4:                                       # @.str.4
	db	"Miss\n\000"

L.str.5:                                       # @.str.5
	db	"no sense\n\000"

L.str.6:                                       # @.str.6
	db	"\n---THE BOT'S MOVE---\n\000"

### SECTION: .rodata.cst8                       # @__const.main.dirs
L__const.main.dirs:
	db	"\001\000"
	db	"\000\001"
	db	"\377\000"
	db	"\000\377"

### SECTION: .rodata.str1.1                     # @.str.7
L.str.7:
	db	"Player win!\n\000"

L.str.8:                                       # @.str.8
	db	"Bot win!\n\000"

waiting: ext
end.