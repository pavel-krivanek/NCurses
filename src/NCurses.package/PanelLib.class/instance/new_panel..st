as yet unclassified
new_panel: aWindow
	^ self ffiCall: #(#panel #* #new_panel #(#window #* #aWindow)) 