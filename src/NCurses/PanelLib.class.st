Class {
	#name : #PanelLib,
	#superclass : #FFILibrary,
	#classVars : [
		'TypeMap'
	],
	#pools : [
		'NCursesConstants'
	],
	#category : 'NCurses'
}

{ #category : #'as yet unclassified' }
PanelLib class >> ffiBindingOf: aTypeName [
	^ TypeMap at: aTypeName ifAbsent: [ super ffiBindingOf: aTypeName ]
]

{ #category : #'as yet unclassified' }
PanelLib class >> initialize [

	"self initialize"
	self initializeTypeMap

]

{ #category : #'as yet unclassified' }
PanelLib class >> initializeTypeMap [

	"self initializeTypeMap"

	TypeMap := Dictionary newFromPairs: #(
		window FFIOpaqueObject
		panel FFIOpaqueObject
	)
]

{ #category : #'as yet unclassified' }
PanelLib >> new_panel: aWindow [
	^ self ffiCall: #(#panel #* #new_panel #(#window #* #aWindow)) 
]

{ #category : #'as yet unclassified' }
PanelLib >> unixModuleName [
	^ '/lib/libpanel.so.5.9'
]

{ #category : #'as yet unclassified' }
PanelLib >> update_panels [
	^self ffiCall: #(void update_panels(void) )
]
