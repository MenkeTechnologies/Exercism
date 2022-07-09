Class {
	#name : #Leap,
	#superclass : #Object,
	#category : #'Exercise@Leap'
}

{ #category : #run }
Leap >> leapYear: aYear [
	^ ((aYear \\ 4 = 0) & (aYear \\ 100 ~= 0)) | (aYear \\ 400 = 0).
	
]
