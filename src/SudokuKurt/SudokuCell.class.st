Class {
	#name : #SudokuCell,
	#superclass : #Object,
	#instVars : [
		'realValue',
		'chosenValue',
		'annotationList'
	],
	#category : #SudokuKurt
}

{ #category : #testing }
SudokuCell >> hasChosenValue [

	" test comment "
	^ chosenValue ~= 0
]

{ #category : #initialization }
SudokuCell >> initialize [

	chosenValue := 0.
	realValue := 0.
	annotationList := OrderedCollection new
]

{ #category : #testing }
SudokuCell >> isSolved [

	^ self hasChosenValue & (chosenValue = realValue )
]
