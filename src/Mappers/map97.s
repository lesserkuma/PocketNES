 .align
 .pool
 .text
 .align
 .pool

#include "../equates.h"

	global_func mapper97init

@----------------------------------------------------------------------------
mapper97init:	@Irem
@----------------------------------------------------------------------------
	.word write97,write97,write97,write97

	mov r0,#-1
	b_long map89AB_
@-------------------------------------------------------
write97:
@-------------------------------------------------------
	stmfd sp!,{r0,lr}
	bl_long mapCDEF_
	ldmfd sp!,{r0,lr}
	tst r0,#0x40
	b_long mirror2V_

@-------------------------------------------------------
	@.end
