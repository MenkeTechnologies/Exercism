Class {
	#name : #Grains,
	#superclass : #Object,
	#category : #'Exercise@Grains'
}
{ #category : #operations }
Grains >> atSquare: n [
	(n < 1 or: [ n > 64 ])
		ifTrue: [ self error: 'square must be between 1 and 64' ].
	^ 2 ** (n - 1)
]
{ #category : #operations }
Grains >> total [
	^ ((1 to: 64) collect: [ :x | self atSquare: x ]) sum
]

