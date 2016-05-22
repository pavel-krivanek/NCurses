terminal capabilities
filter

	"changes the algorithm for initialising terminal capabilities that assume that the terminal has more than one line. A subsequent call to initscr() or newterm() performs the following additional actions:
	- Disable use of clear, cud, cud1, cup, cuu1 and vpa.
	- Set the value of the home string to the value of the cr. string
	- Set lines equal to 1.
	Any call to filter() must precede the call to initscr() or newterm()."
	
	^self ffiCall: #(void filter(void))