mouse
mousemask: newMask old: oldMask
	^self ffiCall: #(ulong mousemask(ulong newMask, ulong * oldMask) )