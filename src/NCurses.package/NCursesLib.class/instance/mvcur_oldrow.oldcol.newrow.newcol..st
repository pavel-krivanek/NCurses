cursor
mvcur_oldrow: oldrow oldcol: oldcol newrow: newrow newcol: newcol

	"output cursor movement commands to the terminal"

	^self ffiCall: #(int mvcur(oldrow, oldcol, newrow, newcol) )