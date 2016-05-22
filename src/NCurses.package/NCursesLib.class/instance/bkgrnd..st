background
bkgrnd: charWithAttributes

	" turn off the previous background attributes, OR the requested attributes into the window rendition, and set the background property of the current or specified window and then apply this setting to every character position in that window:
	- The rendition of every character on the screen is changed to the new window rendition.
	- Wherever the former background character appears, it is changed to the new background character.
If charWithAttributes refers to a non-spacing complex character for bkgrnd(), bkgrndset(), wbkgrnd() and wbkgrndset(), then charWithAttributes is added to the existing spacing complex character that is the background character. If charWithAttributes refers to a multi-column character, the results are unspecified."
	
	^self ffiCall: #(void bkgrnd(ulong charWithAttributes) )