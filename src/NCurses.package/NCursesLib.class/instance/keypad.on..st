modes
keypad: aBoolean on: aWindow

	"The keypad() function controls keypad translation. If aBoolean is TRUE, keypad translation is turned on. If aBoolean is FALSE, keypad translation is turned off. The initial state is FALSE.
This function affects the behaviour of any function that provides keyboard input.

If the terminal in use requires a command to enable it to transmit distinctive codes when a function key is pressed, then after keypad translation is first enabled, the implementation transmits this command to the terminal before an affected input function tries to read any characters from that terminal."

	^self ffiCall: #(int keypad(window * aWindow, bool aBoolean) )