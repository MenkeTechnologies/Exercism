Class {
	#name : #ReverseString,
	#superclass : #Object,
	#category : #'Exercise@ReverseString'
}
{ #category : #'string' }
ReverseString >> reverseValue: string [
	^ String streamContents: [ :stream |
		(string size to: 1 by: -1) do: [ :i |
			stream nextPutAll: (string at: i) asString
		]
	]
]

