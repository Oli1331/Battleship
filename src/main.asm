rsect _main_c_1804289383

### SECTION: .text                              # -- Begin function get_cord_from_player
get_cord_from_player>                           # @get_cord_from_player
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	move	r1, r4
	move	r0, r5
	addsp	-8
	jsr	waiting
	addsp	8
	ldi	r0, Gun_device
	ldw	r0, r0
	ldb	r0, r0
	ldi	r1, 15
	and	r0, r1, r1
	stb	r4, r1
	shr	r0, r0, 4
	stb	r5, r0
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end0:
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
	bhi	.LBB1_2
# %bb.1:                                        # %entry
	move	r0, r1
.LBB1_2:                                        # %entry
	scl	r1, r0
	stsp	fp
	pop	fp
	rts
.Lfunc_end1:
                                                # -- End function
print_terminal>                                 # -- Begin function print_terminal
                                                # @print_terminal
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	ldb	r0, r1
	tst	r1
	beq	.LBB2_3
	br	.LBB2_1
.LBB2_1:                                        # %while.body.preheader
	inc	r0
	ldi	r2, Terminal_device
.LBB2_2:                                        # %while.body
                                                # =>This Inner Loop Header: Depth=1
	ldw	r2, r3
	sxt	r1, r1
	stw	r3, r1
	ldb	r0, r1
	inc	r0
	tst	r1
	bne	.LBB2_2
	br	.LBB2_3
.LBB2_3:                                        # %while.end
	stsp	fp
	pop	fp
	rts
.Lfunc_end2:
                                                # -- End function
make_frame>                                     # -- Begin function make_frame
                                                # @make_frame
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-48
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	move	r1, r6
	ldi	r1, -36
	add	r1, fp, r5
	ldi	r1, 28
	ldi	r4, 0
	stw	r5, r1, r4
	ldi	r1, 26
	stw	r5, r1, r4
	ldi	r1, 24
	stw	r5, r1, r4
	ldi	r1, 22
	stw	r5, r1, r4
	ldi	r1, 20
	stw	r5, r1, r4
	ldi	r1, 18
	stw	r5, r1, r4
	ldi	r1, 16
	stw	r5, r1, r4
	ldi	r1, 14
	stw	r5, r1, r4
	ldi	r1, 12
	stw	r5, r1, r4
	ldi	r1, 10
	stw	r5, r1, r4
	ldi	r1, 8
	stw	r5, r1, r4
	ldi	r1, 6
	stw	r5, r1, r4
	ldi	r1, 4
	stw	r5, r1, r4
	ldi	r1, 2
	stw	r5, r1, r4
	ssw	r4, -36
	ldi	r1, 1
	and	r2, r1, r1
	lsw	r2, 12
	ssw	r0, -42                                 # 2-byte Folded Spill
	inc	r0
	move	r6, r4
	inc	r4
	scl	r4, r4
	ssw	r5, -44                                 # 2-byte Folded Spill
	tst	r1
	beq	.LBB3_12
	br	.LBB3_1
.LBB3_12:                                       # %if.else
	inc	r4
	cmp	r4, r6
	blo	.LBB3_23
	br	.LBB3_13
.LBB3_13:                                       # %for.body70.lr.ph
	scl	r0, r0
	add	r3, r0, r1
	lsw	r0, -42                                 # 2-byte Folded Reload
	ssw	r1, -38                                 # 2-byte Folded Spill
	cmp	r1, r0
	blo	.LBB3_23
	br	.LBB3_14
.LBB3_14:                                       # %for.body70.preheader
	move	r6, r1
	ssw	r4, -48                                 # 2-byte Folded Spill
.LBB3_15:                                       # %for.body70
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB3_17 Depth 2
                                                #       Child Loop BB3_20 Depth 3
	shl	r6, r0, 1
	add	r5, r0, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	ssw	r1, -46                                 # 2-byte Folded Spill
	shl	r1, r6, 4
	lsw	r4, -42                                 # 2-byte Folded Reload
	move	r4, r1
	br	.LBB3_17
.LBB3_19:                                       # %if.then95
                                                #   in Loop: Header=BB3_20 Depth=3
	shr	r5, r5, 1
	dec	r1
.LBB3_20:                                       # %if.then95
                                                #   Parent Loop BB3_15 Depth=1
                                                #     Parent Loop BB3_17 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r1
	bgt	.LBB3_19
# %bb.21:                                       # %if.then95
                                                #   in Loop: Header=BB3_17 Depth=2
	lsw	r0, -40                                 # 2-byte Folded Reload
	ldw	r0, r1
	or	r1, r5, r1
	stw	r0, r1
.LBB3_22:                                       # %for.inc110
                                                #   in Loop: Header=BB3_17 Depth=2
	inc	r4
	scl	r4, r1
	lsw	r3, -38                                 # 2-byte Folded Reload
	cmp	r3, r1
	blo	.LBB3_16
	br	.LBB3_17
.LBB3_17:                                       # %for.body83
                                                #   Parent Loop BB3_15 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB3_20 Depth 3
	or	r4, r6, r5
	scl	r5, r5
	ldb	r2, r5, r3
	ldi	r0, 7
	and	r3, r0, r3
	cmp	r3, 2
	bne	.LBB3_22
	br	.LBB3_18
.LBB3_18:                                       # %if.then95
                                                #   in Loop: Header=BB3_17 Depth=2
	ldi	r0, 3
	stb	r2, r5, r0
	dec	r1
	ldi	r5, 512
	br	.LBB3_20
.LBB3_16:                                       # %for.cond75.for.cond.cleanup82_crit_edge
                                                #   in Loop: Header=BB3_15 Depth=1
	lsw	r1, -46                                 # 2-byte Folded Reload
	inc	r1
	scl	r1, r6
	lsw	r5, -44                                 # 2-byte Folded Reload
	lsw	r4, -48                                 # 2-byte Folded Reload
	cmp	r4, r6
	blo	.LBB3_23
	br	.LBB3_15
.LBB3_1:                                        # %if.then
	add	r3, r4, r1
	ssw	r1, -48                                 # 2-byte Folded Spill
	cmp	r1, r6
	blo	.LBB3_23
	br	.LBB3_2
.LBB3_2:                                        # %for.body18.lr.ph
	scl	r0, r1
	inc	r1
	lsw	r0, -42                                 # 2-byte Folded Reload
	ssw	r1, -38                                 # 2-byte Folded Spill
	cmp	r1, r0
	blo	.LBB3_23
	br	.LBB3_3
.LBB3_3:                                        # %for.body18.preheader
	move	r6, r1
.LBB3_4:                                        # %for.body18
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB3_6 Depth 2
                                                #       Child Loop BB3_9 Depth 3
	shl	r6, r0, 1
	add	r5, r0, r0
	ssw	r0, -40                                 # 2-byte Folded Spill
	ssw	r1, -46                                 # 2-byte Folded Spill
	shl	r1, r3, 4
	lsw	r4, -42                                 # 2-byte Folded Reload
	move	r4, r1
	br	.LBB3_6
.LBB3_8:                                        # %if.then40
                                                #   in Loop: Header=BB3_9 Depth=3
	shr	r5, r5, 1
	dec	r1
.LBB3_9:                                        # %if.then40
                                                #   Parent Loop BB3_4 Depth=1
                                                #     Parent Loop BB3_6 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r1
	bgt	.LBB3_8
# %bb.10:                                       # %if.then40
                                                #   in Loop: Header=BB3_6 Depth=2
	lsw	r0, -40                                 # 2-byte Folded Reload
	ldw	r0, r1
	or	r1, r5, r1
	stw	r0, r1
.LBB3_11:                                       # %for.inc53
                                                #   in Loop: Header=BB3_6 Depth=2
	inc	r4
	scl	r4, r1
	lsw	r5, -38                                 # 2-byte Folded Reload
	cmp	r5, r1
	blo	.LBB3_5
	br	.LBB3_6
.LBB3_6:                                        # %for.body30
                                                #   Parent Loop BB3_4 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB3_9 Depth 3
	or	r4, r3, r5
	scl	r5, r5
	ldb	r2, r5, r6
	ldi	r0, 7
	and	r6, r0, r6
	cmp	r6, 2
	bne	.LBB3_11
	br	.LBB3_7
.LBB3_7:                                        # %if.then40
                                                #   in Loop: Header=BB3_6 Depth=2
	ldi	r0, 3
	stb	r2, r5, r0
	dec	r1
	ldi	r5, 512
	br	.LBB3_9
.LBB3_5:                                        # %for.cond23.for.cond.cleanup29_crit_edge
                                                #   in Loop: Header=BB3_4 Depth=1
	lsw	r1, -46                                 # 2-byte Folded Reload
	inc	r1
	scl	r1, r6
	lsw	r5, -44                                 # 2-byte Folded Reload
	lsw	r0, -48                                 # 2-byte Folded Reload
	cmp	r0, r6
	blo	.LBB3_23
	br	.LBB3_4
.LBB3_23:                                       # %if.end116
	lsw	r1, 14
	ldi	r0, 2
	ldw	r5, r0, r0
	tst	r0
	beq	.LBB3_25
	br	.LBB3_24
.LBB3_24:                                       # %if.then128
	stw	r1, r0
.LBB3_25:                                       # %for.inc134
	ldi	r0, 4
	ldw	r5, r0, r0
	ldi	r4, 14
	ldi	r6, 12
	tst	r0
	beq	.LBB3_27
	br	.LBB3_26
.LBB3_26:                                       # %if.then128.1
	ldi	r2, 2
	stw	r1, r2, r0
.LBB3_27:                                       # %for.inc134.1
	ldi	r0, 6
	ldw	r5, r0, r0
	ldi	r2, 8
	tst	r0
	beq	.LBB3_29
	br	.LBB3_28
.LBB3_28:                                       # %if.then128.2
	ldi	r3, 4
	stw	r1, r3, r0
.LBB3_29:                                       # %for.inc134.2
	ldw	r5, r2, r0
	tst	r0
	beq	.LBB3_31
	br	.LBB3_30
.LBB3_30:                                       # %if.then128.3
	ldi	r3, 6
	stw	r1, r3, r0
.LBB3_31:                                       # %for.inc134.3
	ldi	r0, 10
	ldw	r5, r0, r0
	tst	r0
	beq	.LBB3_33
	br	.LBB3_32
.LBB3_32:                                       # %if.then128.4
	stw	r1, r2, r0
.LBB3_33:                                       # %for.inc134.4
	ldw	r5, r6, r0
	tst	r0
	beq	.LBB3_35
	br	.LBB3_34
.LBB3_34:                                       # %if.then128.5
	ldi	r2, 10
	stw	r1, r2, r0
.LBB3_35:                                       # %for.inc134.5
	ldw	r5, r4, r0
	tst	r0
	beq	.LBB3_37
	br	.LBB3_36
.LBB3_36:                                       # %if.then128.6
	stw	r1, r6, r0
.LBB3_37:                                       # %for.inc134.6
	ldi	r3, 16
	ldw	r5, r3, r0
	ldi	r2, 18
	tst	r0
	beq	.LBB3_39
	br	.LBB3_38
.LBB3_38:                                       # %if.then128.7
	stw	r1, r4, r0
.LBB3_39:                                       # %for.inc134.7
	ldw	r5, r2, r0
	tst	r0
	beq	.LBB3_41
	br	.LBB3_40
.LBB3_40:                                       # %if.then128.8
	stw	r1, r3, r0
.LBB3_41:                                       # %for.inc134.8
	ldi	r0, 20
	ldw	r5, r0, r0
	tst	r0
	beq	.LBB3_43
	br	.LBB3_42
.LBB3_42:                                       # %if.then128.9
	stw	r1, r2, r0
.LBB3_43:                                       # %for.inc134.9
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end3:
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
	beq	.LBB4_10
	br	.LBB4_1
.LBB4_10:                                       # %if.else
	inc	r4
	cmp	r4, r1
	blo	.LBB4_13
	br	.LBB4_11
.LBB4_11:                                       # %for.body69.lr.ph
	lsw	r0, -12                                 # 2-byte Folded Reload
	scl	r0, r0
	lsw	r3, -14                                 # 2-byte Folded Reload
	add	r3, r0, r5
	lsw	r0, -8                                  # 2-byte Folded Reload
	cmp	r5, r0
	blo	.LBB4_13
	br	.LBB4_12
.LBB4_12:                                       # %for.body69.preheader
	ldi	r0, 2
	ssw	r4, -10                                 # 2-byte Folded Spill
	br	.LBB4_15
.LBB4_15:                                       # %for.body69
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB4_17 Depth 2
	shl	r1, r6, 4
	lsw	r4, -8                                  # 2-byte Folded Reload
	br	.LBB4_17
.LBB4_17:                                       # %for.body82
                                                #   Parent Loop BB4_15 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	or	r4, r6, r3
	scl	r3, r3
	stb	r2, r3, r0
	inc	r4
	scl	r4, r3
	cmp	r5, r3
	blo	.LBB4_16
	br	.LBB4_17
.LBB4_16:                                       # %for.cond74.for.cond.cleanup81_crit_edge
                                                #   in Loop: Header=BB4_15 Depth=1
	inc	r1
	scl	r1, r3
	lsw	r4, -10                                 # 2-byte Folded Reload
	cmp	r4, r3
	blo	.LBB4_13
	br	.LBB4_15
.LBB4_13:                                       # %for.cond97.preheader
	lsw	r4, -14                                 # 2-byte Folded Reload
	lsw	r6, -12                                 # 2-byte Folded Reload
	lsw	r3, -16                                 # 2-byte Folded Reload
	tst	r4
	beq	.LBB4_19
	br	.LBB4_14
.LBB4_14:                                       # %for.body103.lr.ph
	lsw	r0, -18                                 # 2-byte Folded Reload
	shl	r0, r0, 6
	shl	r4, r1, 3
	add	r1, -7
	or	r1, r0, r0
	ldi	r1, 0
	shl	r3, r5, 4
	br	.LBB4_18
.LBB4_18:                                       # %for.body103
                                                # =>This Inner Loop Header: Depth=1
	add	r1, r6, r3
	or	r3, r5, r3
	scl	r3, r3
	stb	r2, r3, r0
	inc	r1
	scl	r1, r3
	cmp	r3, r4
	blo	.LBB4_18
	br	.LBB4_19
.LBB4_1:                                        # %if.then
	add	r3, r4, r0
	ssw	r0, -10                                 # 2-byte Folded Spill
	cmp	r0, r1
	blo	.LBB4_4
	br	.LBB4_2
.LBB4_2:                                        # %for.body.lr.ph
	lsw	r0, -12                                 # 2-byte Folded Reload
	scl	r0, r6
	inc	r6
	lsw	r0, -8                                  # 2-byte Folded Reload
	cmp	r6, r0
	blo	.LBB4_4
	br	.LBB4_3
.LBB4_3:                                        # %for.body.preheader
	ldi	r5, 2
	br	.LBB4_6
.LBB4_6:                                        # %for.body
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB4_8 Depth 2
	shl	r1, r0, 4
	lsw	r4, -8                                  # 2-byte Folded Reload
	br	.LBB4_8
.LBB4_8:                                        # %for.body23
                                                #   Parent Loop BB4_6 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	or	r4, r0, r3
	scl	r3, r3
	stb	r2, r3, r5
	inc	r4
	scl	r4, r3
	cmp	r6, r3
	blo	.LBB4_7
	br	.LBB4_8
.LBB4_7:                                        # %for.cond16.for.cond.cleanup22_crit_edge
                                                #   in Loop: Header=BB4_6 Depth=1
	inc	r1
	scl	r1, r0
	lsw	r3, -10                                 # 2-byte Folded Reload
	cmp	r3, r0
	blo	.LBB4_4
	br	.LBB4_6
.LBB4_4:                                        # %for.cond31.preheader
	lsw	r4, -14                                 # 2-byte Folded Reload
	lsw	r5, -12                                 # 2-byte Folded Reload
	lsw	r6, -16                                 # 2-byte Folded Reload
	tst	r4
	beq	.LBB4_19
	br	.LBB4_5
.LBB4_5:                                        # %for.body37.lr.ph
	lsw	r0, -18                                 # 2-byte Folded Reload
	shl	r0, r0, 6
	shl	r4, r1, 3
	add	r1, -7
	or	r1, r0, r0
	ldi	r1, 0
	br	.LBB4_9
.LBB4_9:                                        # %for.body37
                                                # =>This Inner Loop Header: Depth=1
	add	r1, r6, r3
	shl	r3, r3, 4
	or	r3, r5, r3
	scl	r3, r3
	stb	r2, r3, r0
	inc	r1
	scl	r1, r3
	cmp	r3, r4
	blo	.LBB4_9
	br	.LBB4_19
.LBB4_19:                                       # %if.end
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end4:
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
	beq	.LBB5_6
	br	.LBB5_1
.LBB5_6:                                        # %if.else
	add	r3, r0, r4
	ldi	r2, 0
	cmp	r4, 10
	bhi	.LBB5_11
	br	.LBB5_7
.LBB5_7:                                        # %if.end29
	ldi	r2, 1
	tst	r3
	beq	.LBB5_11
	br	.LBB5_8
.LBB5_8:                                        # %for.body43.preheader
	inc	r0
	shl	r1, r1, 4
	add	r1, 16
	ldi	r6, 0
	br	.LBB5_10
.LBB5_10:                                       # %for.body43
                                                # =>This Inner Loop Header: Depth=1
	add	r0, r6, r2
	or	r2, r1, r2
	scl	r2, r2
	ldb	r5, r2, r4
	ldi	r2, 0
	tst	r4
	beq	.LBB5_9
	br	.LBB5_11
.LBB5_9:                                        # %for.cond37
                                                #   in Loop: Header=BB5_10 Depth=1
	inc	r6
	scl	r6, r4
	ldi	r2, 1
	cmp	r4, r3
	bhs	.LBB5_11
	br	.LBB5_10
.LBB5_1:                                        # %if.then
	add	r3, r1, r6
	ldi	r2, 0
	cmp	r6, 10
	bhi	.LBB5_11
	br	.LBB5_2
.LBB5_2:                                        # %if.end
	ldi	r2, 1
	tst	r3
	beq	.LBB5_11
	br	.LBB5_3
.LBB5_3:                                        # %for.body.preheader
	inc	r0
	inc	r1
	ldi	r6, 0
	br	.LBB5_5
.LBB5_5:                                        # %for.body
                                                # =>This Inner Loop Header: Depth=1
	add	r1, r6, r2
	shl	r2, r2, 4
	or	r2, r0, r2
	scl	r2, r2
	ldb	r5, r2, r4
	ldi	r2, 0
	tst	r4
	beq	.LBB5_4
	br	.LBB5_11
.LBB5_4:                                        # %for.cond
                                                #   in Loop: Header=BB5_5 Depth=1
	inc	r6
	scl	r6, r4
	ldi	r2, 1
	cmp	r4, r3
	bhs	.LBB5_11
	br	.LBB5_5
.LBB5_11:                                       # %return
	move	r2, r0
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end5:
                                                # -- End function
random_map>                                     # -- Begin function random_map
                                                # @random_map
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-34
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ssw	r1, -28                                 # 2-byte Folded Spill
	ldi	r4, 4
	ldi	r1, 2
	move	r4, r2
.LBB6_1:                                        # %do.body.preheader.lr.ph
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
	dec	r2
	ssw	r2, -34                                 # 2-byte Folded Spill
	shl	r2, r2, 1
	ldi	r3, status_ships
	add	r2, r3, r2
	ssw	r2, -30                                 # 2-byte Folded Spill
	shl	r4, r2, 8
	shl	r2, r2, 1
	ssw	r2, -32                                 # 2-byte Folded Spill
	shl	r4, r2, 3
	add	r2, -7
	ssw	r2, -26                                 # 2-byte Folded Spill
	ssw	r4, -20                                 # 2-byte Folded Spill
	ssw	r4, -8                                  # 2-byte Folded Spill
	br	.LBB6_3
.LBB6_37:                                       # %if.then
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -18                                 # 2-byte Folded Reload
	shl	r2, r2, 8
	ldi	r3, 256
	and	r2, r3, r2
	lsw	r3, -32                                 # 2-byte Folded Reload
	or	r2, r3, r2
	lsw	r3, -16                                 # 2-byte Folded Reload
	shl	r3, r3, 4
	scl	r3, r3
	or	r2, r3, r2
	lsw	r3, -10                                 # 2-byte Folded Reload
	scl	r3, r3
	add	r2, r3, r2
	lsw	r3, -30                                 # 2-byte Folded Reload
	ldw	r3, r3
	lsw	r4, -22                                 # 2-byte Folded Reload
	shl	r4, r4, 1
	stw	r3, r4, r2
.LBB6_38:                                       # %if.end
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -20                                 # 2-byte Folded Reload
	inc	r2
	ssw	r2, -20                                 # 2-byte Folded Spill
	cmp	r2, 5
	beq	.LBB6_4
	br	.LBB6_3
.LBB6_3:                                        # %do.body.preheader
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
	br	.LBB6_5
.LBB6_5:                                        # %do.body
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB6_13 Depth 4
                                                #         Child Loop BB6_17 Depth 4
	ldi	r3, Rand_device
	ldw	r3, r2
	ldw	r2, r2
	ldi	r4, 15
	and	r2, r4, r2
	ldi	r4, 246
	add	r2, r4, r4
	ssw	r4, -10                                 # 2-byte Folded Spill
	cmp	r2, 9
	bhi	.LBB6_7
# %bb.6:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	ssw	r2, -10                                 # 2-byte Folded Spill
.LBB6_7:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	ldw	r3, r2
	ldw	r2, r2
	ldi	r4, 15
	and	r2, r4, r2
	ldi	r4, 246
	add	r2, r4, r6
	cmp	r2, 9
	bhi	.LBB6_9
# %bb.8:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	move	r2, r6
.LBB6_9:                                        # %do.body
                                                #   in Loop: Header=BB6_5 Depth=3
	ldw	r3, r2
	ldw	r2, r3
	ldi	r2, 1
	ssw	r3, -18                                 # 2-byte Folded Spill
	and	r3, r2, r2
	lsw	r3, -8                                  # 2-byte Folded Reload
	ssw	r2, -12                                 # 2-byte Folded Spill
	ssw	r6, -16                                 # 2-byte Folded Spill
	tst	r2
	beq	.LBB6_14
	br	.LBB6_10
.LBB6_14:                                       # %if.else.i
                                                #   in Loop: Header=BB6_5 Depth=3
	lsw	r2, -10                                 # 2-byte Folded Reload
	scl	r2, r2
	add	r2, r3, r2
	cmp	r2, 10
	bhi	.LBB6_5
	br	.LBB6_15
.LBB6_15:                                       # %if.end29.i
                                                #   in Loop: Header=BB6_5 Depth=3
	lsw	r4, -10                                 # 2-byte Folded Reload
	inc	r4
	lsw	r2, -16                                 # 2-byte Folded Reload
	shl	r2, r3, 4
	add	r3, 16
	ldi	r6, 0
	br	.LBB6_17
.LBB6_17:                                       # %for.body43.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_5 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	add	r4, r6, r2
	or	r2, r3, r2
	scl	r2, r2
	ldb	r0, r2, r2
	tst	r2
	beq	.LBB6_16
	br	.LBB6_5
.LBB6_16:                                       # %for.cond37.i
                                                #   in Loop: Header=BB6_17 Depth=4
	inc	r6
	scl	r6, r2
	lsw	r5, -8                                  # 2-byte Folded Reload
	cmp	r5, r2
	bls	.LBB6_18
	br	.LBB6_17
.LBB6_10:                                       # %if.then.i
                                                #   in Loop: Header=BB6_5 Depth=3
	scl	r6, r2
	add	r2, r3, r2
	cmp	r2, 10
	bhi	.LBB6_5
	br	.LBB6_11
.LBB6_11:                                       # %if.end.i
                                                #   in Loop: Header=BB6_5 Depth=3
	lsw	r4, -10                                 # 2-byte Folded Reload
	inc	r4
	lsw	r6, -16                                 # 2-byte Folded Reload
	inc	r6
	ldi	r3, 0
	br	.LBB6_13
.LBB6_13:                                       # %for.body.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_5 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	move	r6, r5
	add	r6, r3, r2
	shl	r2, r2, 4
	move	r4, r6
	or	r2, r4, r2
	scl	r2, r2
	ldb	r0, r2, r2
	tst	r2
	beq	.LBB6_12
	br	.LBB6_5
.LBB6_12:                                       # %for.cond.i
                                                #   in Loop: Header=BB6_13 Depth=4
	inc	r3
	scl	r3, r2
	move	r6, r4
	move	r5, r6
	lsw	r5, -8                                  # 2-byte Folded Reload
	cmp	r5, r2
	bls	.LBB6_19
	br	.LBB6_13
.LBB6_18:                                       # %do.end.loopexit
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r6, -16                                 # 2-byte Folded Reload
	inc	r6
.LBB6_19:                                       # %do.end
                                                #   in Loop: Header=BB6_3 Depth=2
	ssw	r4, -24                                 # 2-byte Folded Spill
	lsw	r2, -20                                 # 2-byte Folded Reload
	lsw	r3, -8                                  # 2-byte Folded Reload
	sub	r2, r3, r2
	ssw	r2, -22                                 # 2-byte Folded Spill
	lsw	r2, -16                                 # 2-byte Folded Reload
	scl	r2, r2
	ssw	r6, -14                                 # 2-byte Folded Spill
	scl	r6, r5
	lsw	r4, -12                                 # 2-byte Folded Reload
	tst	r4
	beq	.LBB6_28
	br	.LBB6_20
.LBB6_28:                                       # %if.else.i73
                                                #   in Loop: Header=BB6_3 Depth=2
	inc	r5
	cmp	r5, r2
	blo	.LBB6_31
	br	.LBB6_29
.LBB6_29:                                       # %for.body69.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -24                                 # 2-byte Folded Reload
	scl	r2, r2
	lsw	r3, -8                                  # 2-byte Folded Reload
	add	r3, r2, r4
	lsw	r2, -10                                 # 2-byte Folded Reload
	scl	r2, r2
	cmp	r4, r2
	blo	.LBB6_31
	br	.LBB6_30
.LBB6_30:                                       # %for.body69.i.preheader
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r3, -16                                 # 2-byte Folded Reload
	ssw	r5, -12                                 # 2-byte Folded Spill
	br	.LBB6_32
.LBB6_32:                                       # %for.body69.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB6_34 Depth 4
	shl	r3, r2, 4
	lsw	r6, -10                                 # 2-byte Folded Reload
	br	.LBB6_34
.LBB6_34:                                       # %for.body82.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_32 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	or	r6, r2, r5
	scl	r5, r5
	stb	r0, r5, r1
	inc	r6
	scl	r6, r5
	cmp	r4, r5
	blo	.LBB6_33
	br	.LBB6_34
.LBB6_33:                                       # %for.cond74.for.cond.cleanup81_crit_edge.i
                                                #   in Loop: Header=BB6_32 Depth=3
	inc	r3
	scl	r3, r2
	lsw	r5, -12                                 # 2-byte Folded Reload
	cmp	r5, r2
	blo	.LBB6_31
	br	.LBB6_32
.LBB6_31:                                       # %for.body103.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -22                                 # 2-byte Folded Reload
	shl	r2, r2, 6
	lsw	r3, -26                                 # 2-byte Folded Reload
	or	r2, r3, r2
	ssw	r2, -12                                 # 2-byte Folded Spill
	lsw	r2, -14                                 # 2-byte Folded Reload
	shl	r2, r2, 4
	ssw	r2, -14                                 # 2-byte Folded Spill
	ldi	r2, 0
	lsw	r6, -8                                  # 2-byte Folded Reload
	lsw	r3, -24                                 # 2-byte Folded Reload
	br	.LBB6_35
.LBB6_35:                                       # %for.body103.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	add	r2, r3, r5
	lsw	r4, -14                                 # 2-byte Folded Reload
	or	r5, r4, r5
	scl	r5, r5
	lsw	r4, -12                                 # 2-byte Folded Reload
	stb	r0, r5, r4
	inc	r2
	scl	r2, r5
	cmp	r6, r5
	bhi	.LBB6_35
	br	.LBB6_36
.LBB6_20:                                       # %if.then.i64
                                                #   in Loop: Header=BB6_3 Depth=2
	add	r3, r5, r3
	ssw	r3, -12                                 # 2-byte Folded Spill
	cmp	r3, r2
	blo	.LBB6_23
	br	.LBB6_21
.LBB6_21:                                       # %for.body.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -24                                 # 2-byte Folded Reload
	scl	r2, r4
	inc	r4
	lsw	r2, -10                                 # 2-byte Folded Reload
	scl	r2, r2
	cmp	r4, r2
	blo	.LBB6_23
	br	.LBB6_22
.LBB6_22:                                       # %for.body.i65.preheader
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r3, -16                                 # 2-byte Folded Reload
	br	.LBB6_24
.LBB6_24:                                       # %for.body.i65
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Loop Header: Depth=3
                                                #         Child Loop BB6_26 Depth 4
	shl	r3, r2, 4
	lsw	r6, -10                                 # 2-byte Folded Reload
	br	.LBB6_26
.LBB6_26:                                       # %for.body23.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                #       Parent Loop BB6_24 Depth=3
                                                # =>      This Inner Loop Header: Depth=4
	or	r6, r2, r5
	scl	r5, r5
	stb	r0, r5, r1
	inc	r6
	scl	r6, r5
	cmp	r4, r5
	blo	.LBB6_25
	br	.LBB6_26
.LBB6_25:                                       # %for.cond16.for.cond.cleanup22_crit_edge.i
                                                #   in Loop: Header=BB6_24 Depth=3
	inc	r3
	scl	r3, r2
	lsw	r5, -12                                 # 2-byte Folded Reload
	cmp	r5, r2
	blo	.LBB6_23
	br	.LBB6_24
.LBB6_23:                                       # %for.body37.lr.ph.i
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -22                                 # 2-byte Folded Reload
	shl	r2, r2, 6
	lsw	r3, -26                                 # 2-byte Folded Reload
	or	r2, r3, r2
	ssw	r2, -12                                 # 2-byte Folded Spill
	ldi	r4, 0
	lsw	r6, -24                                 # 2-byte Folded Reload
	lsw	r3, -14                                 # 2-byte Folded Reload
	br	.LBB6_27
.LBB6_27:                                       # %for.body37.i
                                                #   Parent Loop BB6_1 Depth=1
                                                #     Parent Loop BB6_3 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	add	r4, r3, r2
	shl	r2, r2, 4
	or	r2, r6, r2
	scl	r2, r2
	lsw	r5, -12                                 # 2-byte Folded Reload
	stb	r0, r2, r5
	inc	r4
	scl	r4, r2
	lsw	r5, -8                                  # 2-byte Folded Reload
	cmp	r5, r2
	bhi	.LBB6_27
	br	.LBB6_36
.LBB6_36:                                       # %save_ship.exit
                                                #   in Loop: Header=BB6_3 Depth=2
	lsw	r2, -28                                 # 2-byte Folded Reload
	tst	r2
	beq	.LBB6_38
	br	.LBB6_37
.LBB6_4:                                        # %for.cond.cleanup6
                                                #   in Loop: Header=BB6_1 Depth=1
	lsw	r2, -34                                 # 2-byte Folded Reload
	move	r2, r4
	tst	r2
	beq	.LBB6_2
	br	.LBB6_1
.LBB6_2:                                        # %for.cond.cleanup
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end6:
                                                # -- End function
draw_on_monitor>                                # -- Begin function draw_on_monitor
                                                # @draw_on_monitor
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-20
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r3, 0
	ldi	r2, 7
	move	r3, r0
	move	r3, r5
.LBB7_1:                                        # %for.cond2.preheader
                                                # =>This Inner Loop Header: Depth=1
	shl	r5, r1, 4
	add	r1, 16
	scl	r1, r6
	ldi	r1, players_map+10
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 1
	cmp	r1, 1
	beq	.LBB7_3
# %bb.2:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_3:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -8                                  # 2-byte Folded Spill
	ldi	r1, players_map+9
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 2
	cmp	r1, 1
	beq	.LBB7_5
# %bb.4:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_5:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -10                                 # 2-byte Folded Spill
	ldi	r1, players_map+8
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 4
	cmp	r1, 1
	beq	.LBB7_7
# %bb.6:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_7:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -12                                 # 2-byte Folded Spill
	ldi	r1, players_map+7
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 8
	cmp	r1, 1
	beq	.LBB7_9
# %bb.8:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_9:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -14                                 # 2-byte Folded Spill
	ldi	r1, players_map+6
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 16
	cmp	r1, 1
	beq	.LBB7_11
# %bb.10:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_11:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -16                                 # 2-byte Folded Spill
	ldi	r1, players_map+5
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 32
	cmp	r1, 1
	beq	.LBB7_13
# %bb.12:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_13:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -18                                 # 2-byte Folded Spill
	ldi	r1, players_map+4
	ldb	r6, r1, r1
	and	r1, r2, r1
	ldi	r4, 64
	cmp	r1, 1
	beq	.LBB7_15
# %bb.14:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r4
.LBB7_15:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ssw	r4, -20                                 # 2-byte Folded Spill
	ldi	r1, players_map+3
	ldb	r6, r1, r1
	move	r2, r4
	and	r1, r2, r1
	ldi	r2, 128
	cmp	r1, 1
	beq	.LBB7_17
# %bb.16:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	move	r3, r2
.LBB7_17:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ldi	r1, players_map+1
	ldb	r6, r1, r1
	and	r1, r4, r3
	ldi	r1, 512
	cmp	r3, 1
	beq	.LBB7_19
# %bb.18:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ldi	r1, 0
.LBB7_19:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ldi	r3, players_map+2
	ldb	r6, r3, r3
	and	r3, r4, r3
	ldi	r6, 256
	cmp	r3, 1
	beq	.LBB7_21
# %bb.20:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	ldi	r6, 0
.LBB7_21:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB7_1 Depth=1
	or	r6, r1, r1
	or	r2, r1, r1
	lsw	r2, -20                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -18                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -16                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -14                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -12                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -10                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -8                                  # 2-byte Folded Reload
	or	r1, r2, r1
	tst	r1
	beq	.LBB7_24
	br	.LBB7_23
.LBB7_23:                                       # %if.then19
                                                #   in Loop: Header=BB7_1 Depth=1
	ldi	r2, Players_monitor_device
	move	r2, r3
	ldw	r3, r2
	stw	r2, r0, r1
	ldw	r3, r2
	stw	r2, r0, r1
.LBB7_24:                                       # %if.end23
                                                #   in Loop: Header=BB7_1 Depth=1
	add	r0, 2
	inc	r5
	ldi	r3, 0
	move	r4, r2
	cmp	r5, 10
	beq	.LBB7_22
	br	.LBB7_1
.LBB7_22:                                       # %for.cond.cleanup
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end7:
                                                # -- End function
debug_draw_on_monitor>                          # -- Begin function debug_draw_on_monitor
                                                # @debug_draw_on_monitor
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-22
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r4, 0
	ldi	r5, 7
	move	r4, r3
	move	r4, r6
.LBB8_1:                                        # %for.cond2.preheader
                                                # =>This Inner Loop Header: Depth=1
	ssw	r3, -8                                  # 2-byte Folded Spill
	shl	r6, r1, 4
	add	r1, 16
	scl	r1, r3
	ldi	r1, bots_map+10
	ldb	r3, r1, r1
	and	r1, r5, r1
	ldi	r0, 1
	cmp	r1, 1
	beq	.LBB8_3
# %bb.2:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r0
.LBB8_3:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r0, -10                                 # 2-byte Folded Spill
	ldi	r0, bots_map+9
	ldb	r3, r0, r1
	and	r1, r5, r1
	ldi	r0, 2
	cmp	r1, 1
	beq	.LBB8_5
# %bb.4:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r0
.LBB8_5:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r0, -12                                 # 2-byte Folded Spill
	ldi	r0, bots_map+8
	ldb	r3, r0, r1
	and	r1, r5, r1
	ldi	r0, 4
	cmp	r1, 1
	beq	.LBB8_7
# %bb.6:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r0
.LBB8_7:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r0, -14                                 # 2-byte Folded Spill
	ldi	r0, bots_map+7
	ldb	r3, r0, r1
	and	r1, r5, r1
	ldi	r0, 8
	cmp	r1, 1
	beq	.LBB8_9
# %bb.8:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r0
.LBB8_9:                                        # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r0, -16                                 # 2-byte Folded Spill
	ldi	r0, bots_map+6
	ldb	r3, r0, r1
	and	r1, r5, r1
	ldi	r0, 16
	cmp	r1, 1
	beq	.LBB8_11
# %bb.10:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r0
.LBB8_11:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r0, -18                                 # 2-byte Folded Spill
	ldi	r0, bots_map+5
	ldb	r3, r0, r1
	and	r1, r5, r2
	ldi	r0, 32
	cmp	r2, 1
	beq	.LBB8_13
# %bb.12:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r0
.LBB8_13:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r0, -20                                 # 2-byte Folded Spill
	ldi	r0, bots_map+4
	ldb	r3, r0, r2
	move	r5, r0
	and	r2, r5, r2
	ldi	r1, 64
	cmp	r2, 1
	beq	.LBB8_15
# %bb.14:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r4, r1
.LBB8_15:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ssw	r1, -22                                 # 2-byte Folded Spill
	move	r4, r5
	ldi	r1, bots_map+3
	ldb	r3, r1, r2
	and	r2, r0, r4
	ldi	r2, 128
	cmp	r4, 1
	beq	.LBB8_17
# %bb.16:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r5, r2
.LBB8_17:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ldi	r1, bots_map+1
	ldb	r3, r1, r4
	and	r4, r0, r1
	ldi	r4, 512
	cmp	r1, 1
	beq	.LBB8_19
# %bb.18:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r5, r4
.LBB8_19:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	ldi	r1, bots_map+2
	ldb	r3, r1, r1
	and	r1, r0, r1
	ldi	r3, 256
	cmp	r1, 1
	beq	.LBB8_21
# %bb.20:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	move	r5, r3
.LBB8_21:                                       # %for.cond2.preheader
                                                #   in Loop: Header=BB8_1 Depth=1
	or	r3, r4, r1
	or	r2, r1, r1
	lsw	r2, -22                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -20                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -18                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -16                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -14                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -12                                 # 2-byte Folded Reload
	or	r2, r1, r1
	lsw	r2, -10                                 # 2-byte Folded Reload
	or	r1, r2, r1
	lsw	r3, -8                                  # 2-byte Folded Reload
	tst	r1
	beq	.LBB8_24
	br	.LBB8_23
.LBB8_23:                                       # %if.then19
                                                #   in Loop: Header=BB8_1 Depth=1
	ldi	r2, Bots_monitor_device
	ldw	r2, r2
	stw	r2, r3, r1
.LBB8_24:                                       # %if.end21
                                                #   in Loop: Header=BB8_1 Depth=1
	add	r3, 2
	inc	r6
	move	r5, r4
	move	r0, r5
	cmp	r6, 10
	beq	.LBB8_22
	br	.LBB8_1
.LBB8_22:                                       # %for.cond.cleanup
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end8:
                                                # -- End function
print_cord_on_terminal>                         # -- Begin function print_cord_on_terminal
                                                # @print_cord_on_terminal
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-2
	ssw	r4, -2                                  # 2-byte Folded Spill
	ldi	r2, Terminal_device
	ldw	r2, r3
	ldi	r4, 120
	stw	r3, r4
	ldw	r2, r3
	ldi	r4, 61
	stw	r3, r4
	add	r0, 48
	ldw	r2, r3
	stw	r3, r0
	ldi	r0, 32
	ldw	r2, r3
	stw	r3, r0
	ldi	r0, 121
	ldw	r2, r3
	stw	r3, r0
	ldw	r2, r0
	stw	r0, r4
	add	r1, 48
	ldw	r2, r0
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 10
	stw	r0, r1
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end9:
                                                # -- End function
main>                                           # -- Begin function main
                                                # @main
# %bb.0:                                        # %entry
	push	fp
	ldsp	fp
	addsp	-38
	ssw	r4, -2                                  # 2-byte Folded Spill
	ssw	r5, -4                                  # 2-byte Folded Spill
	ssw	r6, -6                                  # 2-byte Folded Spill
	ldi	r5, Terminal_device
	ldw	r5, r0
	ldi	r1, 71
	stw	r0, r1
	ldw	r5, r0
	ldi	r6, 101
	stw	r0, r6
	ldw	r5, r0
	ldi	r1, 110
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldi	r1, 114
	ldw	r5, r0
	stw	r0, r1
	move	r1, r3
	ldi	r1, 97
	ldw	r5, r0
	stw	r0, r1
	move	r1, r4
	ldi	r1, 116
	ldw	r5, r0
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldi	r2, 32
	ldw	r5, r0
	stw	r0, r2
	ldi	r1, 112
	ldw	r5, r0
	stw	r0, r1
	ldi	r1, 108
	ldw	r5, r0
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r4
	ldi	r1, 121
	ldw	r5, r0
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	stw	r0, r3
	ldi	r1, 39
	ldw	r5, r0
	stw	r0, r1
	ldi	r4, 115
	ldw	r5, r0
	stw	r0, r4
	ldw	r5, r0
	stw	r0, r2
	ldw	r5, r0
	stw	r0, r4
	ldi	r1, 104
	ldw	r5, r0
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	ldi	r1, 112
	stw	r0, r1
	ldi	r1, 10
	ldw	r5, r0
	stw	r0, r1
	addsp	-8
	ldi	r0, players_map
	ldi	r1, 0
	jsr	random_map
	addsp	8
	addsp	-8
	jsr	draw_on_monitor
	addsp	8
	ldw	r5, r0
	ldi	r1, 71
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	ldi	r1, 110
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	ldi	r1, 114
	stw	r0, r1
	ldw	r5, r0
	ldi	r1, 97
	stw	r0, r1
	ldw	r5, r0
	ldi	r3, 116
	stw	r0, r3
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	ldi	r2, 32
	stw	r0, r2
	ldi	r0, 98
	ldw	r5, r1
	stw	r1, r0
	ldi	r1, 111
	ldw	r5, r0
	ssw	r1, -36                                 # 2-byte Folded Spill
	stw	r0, r1
	ldw	r5, r0
	move	r3, r1
	ssw	r1, -34                                 # 2-byte Folded Spill
	stw	r0, r1
	ldw	r5, r0
	ldi	r1, 39
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r4
	ldw	r5, r0
	stw	r0, r2
	ldw	r5, r0
	stw	r0, r4
	ldi	r4, 10
	ldw	r5, r0
	ldi	r1, 104
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	stw	r0, r6
	ldw	r5, r0
	ldi	r1, 112
	stw	r0, r1
	ldw	r5, r0
	stw	r0, r4
	addsp	-8
	ldi	r6, bots_map
	ldi	r1, 1
	move	r6, r0
	jsr	random_map
	addsp	8
	ldw	r5, r0
	stw	r0, r4
	ldi	r0, 35
	ldw	r5, r1
	stw	r1, r0
	ldw	r5, r1
	stw	r1, r0
	ldw	r5, r1
	stw	r1, r0
	ldw	r5, r1
	ldi	r2, 32
	stw	r1, r2
	ldi	r2, 83
	ldw	r5, r1
	stw	r1, r2
	ldi	r2, 84
	ldw	r5, r1
	stw	r1, r2
	ldi	r3, 65
	ldw	r5, r1
	stw	r1, r3
	ldi	r3, 82
	ldw	r5, r1
	stw	r1, r3
	ldw	r5, r1
	stw	r1, r2
	ldw	r5, r1
	ldi	r2, 32
	stw	r1, r2
	ldw	r5, r1
	stw	r1, r0
	ldw	r5, r1
	stw	r1, r0
	ldw	r5, r1
	stw	r1, r0
	ldw	r5, r0
	stw	r0, r4
	ldi	r0, 66
	ssw	r0, -38                                 # 2-byte Folded Spill
	ssw	r4, -12                                 # 2-byte Folded Spill
	ssw	r4, -16                                 # 2-byte Folded Spill
	ldi	r0, 0
	move	r0, r1
	ssw	r0, -24                                 # 2-byte Folded Spill
	ssw	r0, -20                                 # 2-byte Folded Spill
	ssw	r0, -28                                 # 2-byte Folded Spill
	ssw	r0, -26                                 # 2-byte Folded Spill
	move	r0, r2
	ssw	r0, -18                                 # 2-byte Folded Spill
	ssw	r0, -30                                 # 2-byte Folded Spill
	ssw	r0, -14                                 # 2-byte Folded Spill
	br	.LBB10_2
.LBB10_1:                                       # %while.cond.loopexit
                                                #   in Loop: Header=BB10_2 Depth=1
	lsw	r0, -12                                 # 2-byte Folded Reload
	scl	r0, r0
	ldi	r4, 10
	tst	r0
	beq	.LBB10_57
	br	.LBB10_2
.LBB10_2:                                       # %while.body.i401.preheader
                                                # =>This Loop Header: Depth=1
                                                #     Child Loop BB10_3 Depth 2
                                                #       Child Loop BB10_8 Depth 3
                                                #     Child Loop BB10_12 Depth 2
                                                #     Child Loop BB10_19 Depth 2
                                                #       Child Loop BB10_21 Depth 3
                                                #       Child Loop BB10_40 Depth 3
	ssw	r2, -10                                 # 2-byte Folded Spill
	ssw	r1, -32                                 # 2-byte Folded Spill
	ldi	r1, Terminal_device
	ldw	r1, r0
	stw	r0, r4
	ldw	r1, r0
	ldi	r5, 45
	stw	r0, r5
	ldw	r1, r0
	stw	r0, r5
	ldw	r1, r0
	stw	r0, r5
	ldw	r1, r0
	ldi	r4, 32
	stw	r0, r4
	ldw	r1, r0
	ldi	r3, 80
	stw	r0, r3
	ldw	r1, r0
	ldi	r2, 76
	stw	r0, r2
	ldw	r1, r0
	ldi	r3, 65
	stw	r0, r3
	ldw	r1, r0
	ldi	r2, 89
	stw	r0, r2
	ldw	r1, r0
	ldi	r2, 69
	stw	r0, r2
	ldw	r1, r0
	ldi	r2, 82
	stw	r0, r2
	ldw	r1, r0
	ldi	r3, 39
	stw	r0, r3
	ldw	r1, r0
	ldi	r3, 83
	stw	r0, r3
	ldw	r1, r0
	stw	r0, r4
	ldw	r1, r0
	ldi	r3, 84
	stw	r0, r3
	ldw	r1, r0
	ldi	r3, 85
	stw	r0, r3
	ldw	r1, r0
	stw	r0, r2
	ldw	r1, r0
	ldi	r2, 78
	stw	r0, r2
	ldw	r1, r0
	stw	r0, r4
	ldw	r1, r0
	stw	r0, r5
	ldw	r1, r0
	stw	r0, r5
	ldw	r1, r0
	stw	r0, r5
	ldw	r1, r0
	ldi	r1, 10
	stw	r0, r1
.LBB10_3:                                       # %while.body10
                                                #   Parent Loop BB10_2 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB10_8 Depth 3
	addsp	-8
	jsr	waiting
	addsp	8
	ldi	r0, Gun_device
	ldw	r0, r0
	ldw	r0, r2
	ldi	r4, Terminal_device
	ldw	r4, r0
	ldi	r1, 120
	stw	r0, r1
	ldw	r4, r0
	ldi	r1, 61
	stw	r0, r1
	ldi	r0, 240
	and	r2, r0, r0
	shr	r0, r0, 4
	ldi	r5, 48
	or	r0, r5, r1
	ldw	r4, r3
	stw	r3, r1
	ldw	r4, r1
	ldi	r3, 32
	stw	r1, r3
	ldw	r4, r1
	ldi	r3, 121
	stw	r1, r3
	ldw	r4, r1
	ldi	r3, 61
	stw	r1, r3
	ldi	r1, 15
	and	r2, r1, r1
	or	r1, r5, r3
	ldw	r4, r5
	stw	r5, r3
	ldw	r4, r3
	ldi	r5, 10
	stw	r3, r5
	shl	r2, r2, 4
	add	r2, 16
	move	r0, r3
	inc	r3
	or	r2, r3, r2
	scl	r2, r2
	ssw	r2, -8                                  # 2-byte Folded Spill
	ldb	r2, r6, r2
	ldi	r3, 7
	and	r2, r3, r6
	ldw	r4, r3
	cmp	r6, 1
	beq	.LBB10_6
	br	.LBB10_4
.LBB10_4:                                       # %while.body10
                                                #   in Loop: Header=BB10_3 Depth=2
	cmp	r6, 3
	bne	.LBB10_10
	br	.LBB10_5
.LBB10_5:                                       # %while.body.i426.preheader
                                                #   in Loop: Header=BB10_3 Depth=2
	ldi	r0, 110
	move	r0, r2
	stw	r3, r2
	ldi	r0, Terminal_device
	move	r0, r1
	ldw	r1, r0
	ldi	r3, 111
	stw	r0, r3
	ldw	r1, r0
	ldi	r3, 32
	stw	r0, r3
	ldw	r1, r0
	ldi	r3, 115
	move	r3, r4
	stw	r0, r4
	ldw	r1, r0
	ldi	r3, 101
	stw	r0, r3
	ldw	r1, r0
	stw	r0, r2
	ldw	r1, r0
	stw	r0, r4
	ldw	r1, r0
	stw	r0, r3
	ldw	r1, r0
	ldi	r1, 10
	stw	r0, r1
	ldi	r6, bots_map
	br	.LBB10_15
.LBB10_6:                                       # %while.body.i408.preheader
                                                #   in Loop: Header=BB10_3 Depth=2
	ldi	r6, 72
	stw	r3, r6
	ldw	r4, r3
	ldi	r6, 105
	stw	r3, r6
	ldw	r4, r3
	ldi	r6, 116
	stw	r3, r6
	ldw	r4, r3
	ldi	r6, 33
	stw	r3, r6
	ldw	r4, r3
	stw	r3, r5
	ldi	r3, 512
	br	.LBB10_8
.LBB10_7:                                       # %while.body.i408.preheader
                                                #   in Loop: Header=BB10_8 Depth=3
	shr	r3, r3, 1
	dec	r0
.LBB10_8:                                       # %while.body.i408.preheader
                                                #   Parent Loop BB10_2 Depth=1
                                                #     Parent Loop BB10_3 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r0
	bgt	.LBB10_7
# %bb.9:                                        # %while.body.i408.preheader
                                                #   in Loop: Header=BB10_3 Depth=2
	shl	r1, r0, 1
	ldi	r1, Bots_monitor_device
	move	r1, r4
	ldw	r4, r1
	stw	r1, r0, r3
	ldw	r4, r1
	stw	r1, r0, r3
	ldw	r4, r1
	stw	r1, r0, r3
	shr	r2, r0, 5
	ldi	r1, 6
	and	r0, r1, r0
	shr	r2, r1, 3
	ldi	r2, 7
	and	r1, r2, r3
	shl	r3, r1, 1
	ldi	r2, status_ships
	ldw	r1, r2, r2
	ldw	r2, r0, r1
	ldi	r4, -512
	add	r1, r4, r6
	stw	r2, r0, r6
	ldi	r0, 7680
	and	r6, r0, r0
	ldi	r6, bots_map
	tst	r0
	beq	.LBB10_14
	br	.LBB10_15
.LBB10_14:                                      # %while.body.i414.preheader
                                                #   in Loop: Header=BB10_3 Depth=2
	ldi	r0, Terminal_device
	move	r0, r2
	ldw	r2, r0
	ldi	r4, 42
	move	r4, r5
	stw	r0, r5
	ldw	r2, r0
	ldi	r4, 115
	stw	r0, r4
	ldw	r2, r0
	ldi	r4, 97
	stw	r0, r4
	ldw	r2, r0
	ldi	r4, 110
	stw	r0, r4
	ldw	r2, r0
	ldi	r4, 107
	stw	r0, r4
	ldw	r2, r0
	stw	r0, r5
	ldw	r2, r0
	ldi	r2, 10
	move	r2, r4
	stw	r0, r4
	ldi	r0, Bots_monitor_device
	ldw	r0, r0
	addsp	-12
	ldsp	r2
	stw	r2, r4, r0
	ldi	r0, 8
	stw	r2, r0, r6
	shr	r1, r0, 8
	ldi	r2, 1
	and	r0, r2, r2
	ldi	r0, 15
	and	r1, r0, r0
	ldi	r4, 240
	and	r1, r4, r1
	shr	r1, r1, 4
	inc	r3
	jsr	make_frame
	addsp	12
	lsw	r0, -16                                 # 2-byte Folded Reload
	dec	r0
	ssw	r0, -16                                 # 2-byte Folded Spill
.LBB10_15:                                      # %if.end70
                                                #   in Loop: Header=BB10_3 Depth=2
	ldi	r0, 3
	lsw	r1, -8                                  # 2-byte Folded Reload
	stb	r1, r6, r0
	lsw	r0, -16                                 # 2-byte Folded Reload
	scl	r0, r0
	tst	r0
	bne	.LBB10_3
	br	.LBB10_16
.LBB10_10:                                      # %if.end70.thread
                                                #   in Loop: Header=BB10_2 Depth=1
	ldi	r2, 77
	stw	r3, r2
	ldi	r2, Terminal_device
	move	r2, r3
	ldw	r3, r2
	ldi	r4, 105
	stw	r2, r4
	ldw	r3, r2
	ldi	r4, 115
	stw	r2, r4
	ldw	r3, r2
	stw	r2, r4
	ldw	r3, r2
	ldi	r3, 10
	stw	r2, r3
	ldi	r2, 512
	ldi	r3, bots_map
	br	.LBB10_12
.LBB10_11:                                      # %if.end70.thread
                                                #   in Loop: Header=BB10_12 Depth=2
	shr	r2, r2, 1
	dec	r0
.LBB10_12:                                      # %if.end70.thread
                                                #   Parent Loop BB10_2 Depth=1
                                                # =>  This Inner Loop Header: Depth=2
	tst	r0
	bgt	.LBB10_11
# %bb.13:                                       # %if.end70.thread
                                                #   in Loop: Header=BB10_2 Depth=1
	shl	r1, r0, 1
	ldi	r1, Bots_monitor_device
	ldw	r1, r1
	stw	r1, r0, r2
	ldi	r0, 3
	lsw	r1, -8                                  # 2-byte Folded Reload
	stb	r1, r3, r0
	br	.LBB10_16
.LBB10_16:                                      # %while.end
                                                #   in Loop: Header=BB10_2 Depth=1
	ldi	r2, Terminal_device
	ldw	r2, r0
	lsw	r1, -16                                 # 2-byte Folded Reload
	scl	r1, r1
	tst	r1
	beq	.LBB10_18
	br	.LBB10_17
.LBB10_17:                                      # %while.body.i432.preheader
                                                #   in Loop: Header=BB10_2 Depth=1
	ldi	r4, 10
	stw	r0, r4
	ldw	r2, r0
	ldi	r5, 45
	stw	r0, r5
	ldw	r2, r0
	stw	r0, r5
	ldw	r2, r0
	stw	r0, r5
	ldw	r2, r0
	ldi	r1, 84
	move	r1, r3
	stw	r0, r3
	ldw	r2, r0
	ldi	r1, 72
	stw	r0, r1
	ldw	r2, r0
	ldi	r6, 69
	stw	r0, r6
	ldw	r2, r0
	ldi	r1, 32
	stw	r0, r1
	ldw	r2, r0
	ldi	r4, 66
	stw	r0, r4
	ldw	r2, r0
	ldi	r4, 79
	stw	r0, r4
	ldw	r2, r0
	stw	r0, r3
	ldw	r2, r0
	ldi	r3, 39
	stw	r0, r3
	ldw	r2, r0
	ldi	r3, 83
	stw	r0, r3
	ldw	r2, r0
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 77
	stw	r0, r1
	ldw	r2, r0
	stw	r0, r4
	ldw	r2, r0
	ldi	r1, 86
	stw	r0, r1
	ldw	r2, r0
	stw	r0, r6
	ldw	r2, r0
	stw	r0, r5
	ldw	r2, r0
	stw	r0, r5
	ldw	r2, r0
	stw	r0, r5
	ldw	r2, r0
	ldi	r1, 10
	stw	r0, r1
	ldi	r4, 15
	lsw	r1, -32                                 # 2-byte Folded Reload
	lsw	r2, -10                                 # 2-byte Folded Reload
	br	.LBB10_19
.LBB10_48:                                      # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	ldi	r0, Terminal_device
	move	r0, r1
	ldw	r1, r0
	ldi	r2, 42
	move	r2, r4
	stw	r0, r4
	ldw	r1, r0
	ldi	r2, 115
	stw	r0, r2
	ldw	r1, r0
	ldi	r2, 97
	stw	r0, r2
	ldw	r1, r0
	ldi	r2, 110
	stw	r0, r2
	ldw	r1, r0
	ldi	r2, 107
	stw	r0, r2
	ldw	r1, r0
	stw	r0, r4
	ldw	r1, r0
	ldi	r1, 10
	move	r1, r2
	stw	r0, r2
	ldi	r0, Players_monitor_device
	ldw	r0, r0
	addsp	-12
	ldsp	r1
	stw	r1, r2, r0
	ldi	r0, players_map
	ldi	r2, 8
	stw	r1, r2, r0
	lsw	r0, -14                                 # 2-byte Folded Reload
	sxt	r0, r0
	lsw	r1, -26                                 # 2-byte Folded Reload
	tst	r0
	bgt	.LBB10_50
# %bb.49:                                       # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	move	r5, r1
.LBB10_50:                                      # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r0, -30                                 # 2-byte Folded Reload
	sxt	r0, r2
	lsw	r0, -28                                 # 2-byte Folded Reload
	tst	r2
	bgt	.LBB10_52
# %bb.51:                                       # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	move	r6, r0
.LBB10_52:                                      # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r2, -14                                 # 2-byte Folded Reload
	scl	r2, r4
	ldi	r2, 1
	tst	r4
	bne	.LBB10_54
# %bb.53:                                       # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	ldi	r2, 0
.LBB10_54:                                      # %if.then241
                                                #   in Loop: Header=BB10_19 Depth=2
	dec	r0
	scl	r0, r0
	dec	r1
	scl	r1, r1
	lsw	r3, -8                                  # 2-byte Folded Reload
	jsr	make_frame
	addsp	12
	lsw	r0, -12                                 # 2-byte Folded Reload
	dec	r0
	ssw	r0, -12                                 # 2-byte Folded Spill
	lsw	r0, -18                                 # 2-byte Folded Reload
	ssw	r0, -10                                 # 2-byte Folded Spill
	ssw	r5, -20                                 # 2-byte Folded Spill
	ssw	r6, -24                                 # 2-byte Folded Spill
	ldi	r1, 0
	ldi	r4, 15
	br	.LBB10_56
.LBB10_56:                                      # %cleanup290
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r0, -12                                 # 2-byte Folded Reload
	scl	r0, r0
	ldi	r6, bots_map
	lsw	r2, -10                                 # 2-byte Folded Reload
	tst	r0
	beq	.LBB10_1
	br	.LBB10_19
.LBB10_19:                                      # %while.body86
                                                #   Parent Loop BB10_2 Depth=1
                                                # =>  This Loop Header: Depth=2
                                                #       Child Loop BB10_21 Depth 3
                                                #       Child Loop BB10_40 Depth 3
	ssw	r1, -8                                  # 2-byte Folded Spill
	ssw	r2, -22                                 # 2-byte Folded Spill
	tst	r1
	bne	.LBB10_26
	br	.LBB10_20
.LBB10_26:                                      # %if.else107
                                                #   in Loop: Header=BB10_19 Depth=2
	scl	r2, r0
	ldi	r3, players_map
	cmp	r0, 1
	bne	.LBB10_32
	br	.LBB10_27
.LBB10_27:                                      # %for.body.preheader
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r6, -28                                 # 2-byte Folded Reload
	inc	r6
	lsw	r5, -26                                 # 2-byte Folded Reload
	shl	r5, r2, 4
	or	r2, r6, r0
	scl	r0, r0
	ldb	r0, r3, r0
	ldi	r3, 0
	ldi	r1, 1
	ssw	r1, -32                                 # 2-byte Folded Spill
	cmp	r0, 3
	bne	.LBB10_31
	br	.LBB10_28
.LBB10_28:                                      # %for.cond
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r5, -26                                 # 2-byte Folded Reload
	inc	r5
	shl	r5, r0, 4
	lsw	r6, -28                                 # 2-byte Folded Reload
	or	r0, r6, r0
	scl	r0, r0
	ldi	r1, players_map
	ldb	r0, r1, r0
	ldi	r3, 1
	ldi	r1, 0
	ssw	r1, -32                                 # 2-byte Folded Spill
	cmp	r0, 3
	bne	.LBB10_31
	br	.LBB10_29
.LBB10_29:                                      # %for.cond.1
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r6, -28                                 # 2-byte Folded Reload
	dec	r6
	or	r2, r6, r0
	scl	r0, r0
	ldi	r1, players_map
	ldb	r0, r1, r0
	ldi	r3, 0
	ldi	r1, 255
	ssw	r1, -32                                 # 2-byte Folded Spill
	lsw	r5, -26                                 # 2-byte Folded Reload
	cmp	r0, 3
	bne	.LBB10_31
	br	.LBB10_30
.LBB10_30:                                      # %for.cond.2
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r5, -26                                 # 2-byte Folded Reload
	dec	r5
	shl	r5, r0, 4
	lsw	r6, -28                                 # 2-byte Folded Reload
	or	r0, r6, r0
	scl	r0, r0
	ldi	r1, players_map
	ldb	r0, r1, r2
	ldi	r3, 255
	ldi	r1, 0
	ssw	r1, -32                                 # 2-byte Folded Spill
	ldi	r0, 1
	ssw	r0, -10                                 # 2-byte Folded Spill
	cmp	r2, 3
	beq	.LBB10_56
	br	.LBB10_31
.LBB10_31:                                      # %cleanup148.if.end199_crit_edge
                                                #   in Loop: Header=BB10_19 Depth=2
	shl	r5, r0, 4
	or	r0, r6, r0
	scl	r0, r2
	ssw	r3, -14                                 # 2-byte Folded Spill
	lsw	r0, -32                                 # 2-byte Folded Reload
	ssw	r0, -30                                 # 2-byte Folded Spill
	ldi	r0, 1
	move	r0, r1
	br	.LBB10_38
.LBB10_20:                                      # %do.body.preheader
                                                #   in Loop: Header=BB10_19 Depth=2
	ldi	r3, players_map
.LBB10_21:                                      # %do.body
                                                #   Parent Loop BB10_2 Depth=1
                                                #     Parent Loop BB10_19 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	ldi	r0, Rand_device
	move	r0, r2
	ldw	r2, r0
	ldw	r0, r1
	ldw	r2, r0
	ldw	r0, r0
	and	r0, r4, r0
	ldi	r2, 246
	add	r0, r2, r5
	cmp	r0, 9
	bhi	.LBB10_23
# %bb.22:                                       # %do.body
                                                #   in Loop: Header=BB10_21 Depth=3
	move	r0, r5
.LBB10_23:                                      # %do.body
                                                #   in Loop: Header=BB10_21 Depth=3
	and	r1, r4, r0
	ldi	r1, 246
	add	r0, r1, r6
	cmp	r0, 9
	bhi	.LBB10_25
# %bb.24:                                       # %do.body
                                                #   in Loop: Header=BB10_21 Depth=3
	move	r0, r6
.LBB10_25:                                      # %do.body
                                                #   in Loop: Header=BB10_21 Depth=3
	inc	r6
	inc	r5
	shl	r5, r0, 4
	or	r0, r6, r0
	scl	r0, r2
	ldb	r2, r3, r0
	ldi	r1, 0
	cmp	r0, 3
	beq	.LBB10_21
	br	.LBB10_38
.LBB10_32:                                      # %if.else156
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r0, -14                                 # 2-byte Folded Reload
	lsw	r1, -20                                 # 2-byte Folded Reload
	add	r1, r0, r5
	scl	r5, r1
	cmp	r1, 10
	bhi	.LBB10_37
	br	.LBB10_33
.LBB10_33:                                      # %if.else156
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r0, -30                                 # 2-byte Folded Reload
	lsw	r2, -24                                 # 2-byte Folded Reload
	add	r2, r0, r6
	scl	r6, r2
	cmp	r2, 10
	bhi	.LBB10_37
	br	.LBB10_34
.LBB10_34:                                      # %if.else156
                                                #   in Loop: Header=BB10_19 Depth=2
	tst	r1
	beq	.LBB10_37
	br	.LBB10_35
.LBB10_35:                                      # %if.else156
                                                #   in Loop: Header=BB10_19 Depth=2
	tst	r2
	beq	.LBB10_37
	br	.LBB10_36
.LBB10_36:                                      # %if.else156
                                                #   in Loop: Header=BB10_19 Depth=2
	shl	r5, r0, 4
	or	r0, r6, r0
	scl	r0, r2
	ldb	r2, r3, r0
	scl	r0, r0
	ldi	r1, 1
	cmp	r0, 3
	bne	.LBB10_38
	br	.LBB10_37
.LBB10_38:                                      # %if.end199
                                                #   in Loop: Header=BB10_19 Depth=2
	ssw	r1, -32                                 # 2-byte Folded Spill
	ldi	r3, Terminal_device
	ldw	r3, r0
	ldi	r1, 120
	stw	r0, r1
	ldw	r3, r0
	ldi	r4, 61
	stw	r0, r4
	scl	r6, r0
	add	r0, 48
	ldw	r3, r1
	stw	r1, r0
	ldw	r3, r0
	ldi	r1, 32
	stw	r0, r1
	ldw	r3, r0
	ldi	r1, 121
	stw	r0, r1
	ldw	r3, r0
	stw	r0, r4
	scl	r5, r0
	add	r0, 48
	ldw	r3, r1
	stw	r1, r0
	ldw	r3, r0
	ldi	r1, players_map
	ldi	r3, 10
	stw	r0, r3
	ldb	r2, r1, r3
	ldi	r0, 3
	stb	r2, r1, r0
	move	r6, r0
	dec	r0
	scl	r0, r1
	ldi	r2, 512
	br	.LBB10_40
.LBB10_39:                                      # %if.end199
                                                #   in Loop: Header=BB10_40 Depth=3
	shr	r2, r2, 1
	dec	r1
.LBB10_40:                                      # %if.end199
                                                #   Parent Loop BB10_2 Depth=1
                                                #     Parent Loop BB10_19 Depth=2
                                                # =>    This Inner Loop Header: Depth=3
	tst	r1
	bgt	.LBB10_39
# %bb.41:                                       # %if.end199
                                                #   in Loop: Header=BB10_19 Depth=2
	ssw	r2, -10                                 # 2-byte Folded Spill
	move	r5, r0
	dec	r0
	scl	r0, r1
	ldi	r0, 7
	move	r3, r2
	and	r3, r0, r3
	ldi	r4, Terminal_device
	ldw	r4, r0
	cmp	r3, 1
	beq	.LBB10_44
	br	.LBB10_42
.LBB10_44:                                      # %while.body.i448.preheader
                                                #   in Loop: Header=BB10_19 Depth=2
	ldi	r3, 72
	stw	r0, r3
	ldw	r4, r0
	ldi	r3, 105
	stw	r0, r3
	ldw	r4, r0
	ldi	r3, 116
	stw	r0, r3
	ldw	r4, r0
	ldi	r3, 33
	stw	r0, r3
	ldw	r4, r0
	ldi	r4, 10
	stw	r0, r4
	shl	r1, r0, 1
	ldi	r1, Players_monitor_device
	ldw	r1, r1
	lsw	r3, -10                                 # 2-byte Folded Reload
	stw	r1, r0, r3
	lsw	r0, -8                                  # 2-byte Folded Reload
	tst	r0
	bne	.LBB10_46
	br	.LBB10_45
.LBB10_46:                                      # %if.else234
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r2, -22                                 # 2-byte Folded Reload
	inc	r2
	ldi	r1, 1
	ldi	r4, 15
	lsw	r0, -18                                 # 2-byte Folded Reload
.LBB10_47:                                      # %if.end236
                                                #   in Loop: Header=BB10_19 Depth=2
	ssw	r0, -18                                 # 2-byte Folded Spill
	scl	r0, r3
	ssw	r2, -10                                 # 2-byte Folded Spill
	scl	r2, r0
	ssw	r5, -20                                 # 2-byte Folded Spill
	ssw	r6, -24                                 # 2-byte Folded Spill
	ssw	r3, -8                                  # 2-byte Folded Spill
	cmp	r0, r3
	bne	.LBB10_56
	br	.LBB10_48
.LBB10_45:                                      # %if.then228
                                                #   in Loop: Header=BB10_19 Depth=2
	shr	r2, r0, 3
	ldi	r1, 7
	and	r0, r1, r0
	inc	r0
	ldi	r1, 1
	move	r1, r2
	ssw	r5, -26                                 # 2-byte Folded Spill
	ssw	r6, -28                                 # 2-byte Folded Spill
	ldi	r4, 15
	br	.LBB10_47
.LBB10_37:                                      # %if.then190
                                                #   in Loop: Header=BB10_19 Depth=2
	lsw	r0, -14                                 # 2-byte Folded Reload
	neg	r0, r0
	ssw	r0, -14                                 # 2-byte Folded Spill
	lsw	r0, -30                                 # 2-byte Folded Reload
	neg	r0, r0
	ssw	r0, -30                                 # 2-byte Folded Spill
	lsw	r0, -22                                 # 2-byte Folded Reload
	ssw	r0, -10                                 # 2-byte Folded Spill
	lsw	r0, -26                                 # 2-byte Folded Reload
	ssw	r0, -20                                 # 2-byte Folded Spill
	lsw	r0, -28                                 # 2-byte Folded Reload
	ssw	r0, -24                                 # 2-byte Folded Spill
	ldi	r1, 1
	br	.LBB10_56
.LBB10_42:                                      # %while.body.i460.preheader
                                                #   in Loop: Header=BB10_2 Depth=1
	ldi	r3, 77
	stw	r0, r3
	ldw	r4, r0
	ldi	r3, 105
	stw	r0, r3
	ldw	r4, r0
	ldi	r3, 115
	stw	r0, r3
	ldw	r4, r0
	stw	r0, r3
	ldw	r4, r0
	ldi	r4, 10
	stw	r0, r4
	shl	r1, r0, 1
	ldi	r1, Players_monitor_device
	ldw	r1, r1
	lsw	r2, -10                                 # 2-byte Folded Reload
	stw	r1, r0, r2
	lsw	r3, -22                                 # 2-byte Folded Reload
	move	r3, r2
	ldi	r6, bots_map
	lsw	r1, -32                                 # 2-byte Folded Reload
	lsw	r0, -8                                  # 2-byte Folded Reload
	tst	r0
	beq	.LBB10_1
	br	.LBB10_43
.LBB10_43:                                      # %while.body.i460.preheader
                                                #   in Loop: Header=BB10_2 Depth=1
	scl	r3, r0
	move	r3, r2
	cmp	r0, 1
	bhi	.LBB10_55
	br	.LBB10_1
.LBB10_55:                                      # %if.then281
                                                #   in Loop: Header=BB10_2 Depth=1
	lsw	r0, -14                                 # 2-byte Folded Reload
	neg	r0, r0
	ssw	r0, -14                                 # 2-byte Folded Spill
	lsw	r0, -30                                 # 2-byte Folded Reload
	neg	r0, r0
	ssw	r0, -30                                 # 2-byte Folded Spill
	ldi	r1, 1
	lsw	r0, -28                                 # 2-byte Folded Reload
	ssw	r0, -24                                 # 2-byte Folded Spill
	lsw	r0, -26                                 # 2-byte Folded Reload
	ssw	r0, -20                                 # 2-byte Folded Spill
	move	r3, r2
	br	.LBB10_1
.LBB10_18:                                      # %while.body.i466.preheader
	ldi	r1, 80
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 108
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 97
	stw	r0, r1
	ldi	r0, 121
	ssw	r0, -38                                 # 2-byte Folded Spill
	ldi	r0, 101
	ssw	r0, -36                                 # 2-byte Folded Spill
	ldi	r0, 114
	ssw	r0, -34                                 # 2-byte Folded Spill
	br	.LBB10_57
.LBB10_57:                                      # %if.end304
	ldi	r2, Terminal_device
	ldw	r2, r0
	lsw	r1, -38                                 # 2-byte Folded Reload
	stw	r0, r1
	ldw	r2, r0
	lsw	r1, -36                                 # 2-byte Folded Reload
	stw	r0, r1
	ldw	r2, r0
	lsw	r1, -34                                 # 2-byte Folded Reload
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 32
	stw	r0, r1
	ldi	r0, 119
	ldw	r2, r1
	stw	r1, r0
	ldw	r2, r0
	ldi	r1, 105
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 110
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 33
	stw	r0, r1
	ldw	r2, r0
	ldi	r1, 10
	stw	r0, r1
	ldi	r0, 0
	lsw	r6, -6                                  # 2-byte Folded Reload
	lsw	r5, -4                                  # 2-byte Folded Reload
	lsw	r4, -2                                  # 2-byte Folded Reload
	stsp	fp
	pop	fp
	rts
.Lfunc_end10:
                                                # -- End function
### SECTION: .data                              # @Rand_device
	align	2
Rand_device>
	dc	65330

	align	2                                       # @Players_monitor_device
Players_monitor_device>
	dc	65410

	align	2                                       # @Bots_monitor_device
Bots_monitor_device>
	dc	65282

	align	2                                       # @Gun_device
Gun_device>
	dc	65320

	align	2                                       # @Terminal_device
Terminal_device>
	dc	65312

	align	2                                       # @Reset_bots_monitor_device
Reset_bots_monitor_device>
	dc	65310

	align	2                                       # @Reset_players_monitor_device
Reset_players_monitor_device>
	dc	65438

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

waiting: ext
end.