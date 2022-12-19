Class {
	#name : #Allergies,
	#superclass : #Object,
	#instVars : [
		'items'
	],
	#category : #'Exercise@Allergies'
}
{ #category : #api }
Allergies >> allergicToItem: aString forScore: score [
	| mask |
	mask := items at: aString.
	^(score bitAnd: mask) > 0
]
{ #category : #api }
Allergies >> allergyListForScore: score [
	^(items associationsSelect: [ :assoc | self allergicToItem: assoc key forScore: score ]) keys
	
]
{ #category : #initialization }
Allergies >> initialize [
	items := { 'eggs'->1. 'peanuts'->2. 'shellfish'->4. 'strawberries'->8.
					  'tomatoes'->16. 'chocolate'->32. 'pollen'->64. 'cats'->128. } asOrderedDictionary
]

