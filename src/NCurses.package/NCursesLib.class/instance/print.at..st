printing
print: aString at: aPoint
	
	^ self print: aString atY: (aPoint y-1) x: (aPoint x-1).