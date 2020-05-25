PlaceWaitingText::
	hlcoord 3, 10
	lb bc, 1, 11

	ld a, [wBattleMode]
	and a
	jr z, .notinbattle

	call Textbox
	jr .proceed

.notinbattle
	call Textbox

.proceed
	hlcoord 4, 11
	ld de, .Waiting
	rst PlaceString
	ld c, 50
	jp DelayFrames

.Waiting:
	db "Waiting...!@"
