Class {
	#name : #Isogram,
	#superclass : #Object,
	#category : #'Exercism-Isogram'
}

{ #category : #calculations }
Isogram >> isIsogramPhrase: s [
  |letters|
  letters := s asLowercase letters.
  ^letters asSet size = letters size.
]

