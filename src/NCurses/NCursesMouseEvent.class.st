Class {
	#name : #NCursesMouseEvent,
	#superclass : #FFIExternalStructure,
	#pools : [
		'NCursesConstants'
	],
	#category : 'NCurses'
}

{ #category : #'as yet unclassified' }
NCursesMouseEvent class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
   short id;
   int x;
	int y;
	int z;
	ulong bstate;
	)
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> bstate [
	"This method was automatically generated"
	^handle unsignedLongAt: 17
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> bstate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 17 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> id [
	"This method was automatically generated"
	^handle signedShortAt: 1
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> id: anObject [
	"This method was automatically generated"
	handle signedShortAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> x [
	"This method was automatically generated"
	^handle signedLongAt: 5
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> x: anObject [
	"This method was automatically generated"
	handle signedLongAt: 5 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> y [
	"This method was automatically generated"
	^handle signedLongAt: 9
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> y: anObject [
	"This method was automatically generated"
	handle signedLongAt: 9 put: anObject
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> z [
	"This method was automatically generated"
	^handle signedLongAt: 13
]

{ #category : #'accessing structure variables' }
NCursesMouseEvent >> z: anObject [
	"This method was automatically generated"
	handle signedLongAt: 13 put: anObject
]
