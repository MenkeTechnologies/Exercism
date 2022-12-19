Class {
	#name : #ArmstrongNumbers,
	#superclass : #Object,
	#category : #'Exercise@ArmstrongNumbers'
}

{ #category : #testing }
ArmstrongNumbers >> isArmstrongNumber: n [
	|digits digitCount result|
	digits := (n printString asArray ) collect: [:each  | each digitValue ].
	digitCount := digits size.
	result := (digits collect: [:each | each raisedTo: digitCount]) sum.
	^ n = result.
]
