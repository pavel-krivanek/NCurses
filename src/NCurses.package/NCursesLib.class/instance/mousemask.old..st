mouse
mousemask: newMask old: oldMask

	"TODO: comment"

	^self ffiCall: #(ulong mousemask(ulong newMask, ulong * oldMask) )