cursor
movecur_oldrow: oldrow oldcol: oldcol newrow: newrow newcol: newcol

	"output cursor movement commands to the terminal"

	^self ffiCall: #(int movecur(oldrow, oldcol, newrow, newcol) )