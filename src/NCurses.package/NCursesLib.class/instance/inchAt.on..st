char at cursor
inchAt: aPoint on: aWindow
	^self inchAtY: (aPoint y-1) x: (aPoint x-1) on: aWindow