as yet unclassified
box: aWindow ls: ls rs: rs ts: ts bs: bs tl: tl tr: tr bl: bl br: br
	^ self
		ffiCall: #(int wborder (window * aWindow , ulong ls , ulong rs , ulong ts , ulong bs , ulong tl , ulong trNCursesLib g bl , ulong br))