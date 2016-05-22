printing - characters
addch: charWithAttributes atY: y x: x on: aWindow

	"The addch(), mvaddch(), mvwaddch() and waddch() functions place ch into the current or specified window at the current or specified position, and then advance the window's cursor position. These functions perform wrapping. These functions perform special-character processing."

	^self ffiCall: #(int mvwaddch(window * aWindow, int y, int x, ulong charWithAttributes) )