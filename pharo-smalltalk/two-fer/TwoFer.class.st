Class {
	#name : #TwoFer,
	#superclass : #Object,
	#category : #'Exercise@TwoFer'
}

{ #category: #output }
TwoFer << who [
    'One for you, one for me.'
]

{ #category: #output }
TwoFer << who: aString [
    ^'One for ', aString, ', one for me.'
]
