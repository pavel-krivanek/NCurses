printing
print: aString on: aWindow

	^self ffiCall: #(bool has_colors())