printing
print: aString at: aPoint on: aWindow
	
	^ self print: aString atY: (aPoint y-1) x: (aPoint x-1) on: aWindow