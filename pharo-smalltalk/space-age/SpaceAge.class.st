Class {
	#name : #SpaceAge,
	#superclass : #Object,
	#classVars : [
		'OrbitalPeriods',
		'SecondsInYear'
	],
	#category : #'Exercise@SpaceAge'
}

{ #category : #'class initialization' }
SpaceAge class >> initialize [
	SecondsInYear := 31557600.
	OrbitalPeriods := {
		                 (#Mercury -> 0.2408467).
		                 (#Venus -> 0.61519726).
		                 (#Earth -> 1.0).
		                 (#Mars -> 1.8808158).
		                 (#Jupiter -> 11.862615).
		                 (#Saturn -> 29.447498).
		                 (#Uranus -> 84.016846).
		                 (#Neptune -> 164.79132) } asDictionary
]

{ #category : #public }
SpaceAge >> ageOnPlanet: planet at: age [
	^ age / SecondsInYear/ (OrbitalPeriods at: planet)
]
