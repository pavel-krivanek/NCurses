as yet unclassified
ffiBindingOf: aTypeName
	^ TypeMap at: aTypeName ifAbsent: [ super ffiBindingOf: aTypeName ]