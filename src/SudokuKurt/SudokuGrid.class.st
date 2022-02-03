Class {
	#name : #SudokuGrid,
	#superclass : #Array,
	#type : #variable,
	#instVars : [
		'grid'
	],
	#category : #SudokuKurt
}

{ #category : #accessing }
SudokuGrid class >> dimension [

	^ 9
]

{ #category : #'instance creation' }
SudokuGrid class >> new [

	^ (self new: self dimension squared ) initialize
]

{ #category : #initialization }
SudokuGrid >> initialize [

	self withIndexDo: [ :each :index | self at: index put: SudokuCell new ]
]

{ #category : #'as yet unclassified' }
SudokuGrid >> listCellsWhere: aBlock [

	| list |
	list := OrderedCollection new.
	self doWithIndex: [ :each :index | 
		(aBlock value: each) ifTrue: [ list add: index ] ].
	^ list
]

{ #category : #'as yet unclassified' }
SudokuGrid >> listOfSolvedCells [

	^ self listCellsWhere: [ :cell | cell isSolved ]
]

{ #category : #'as yet unclassified' }
SudokuGrid >> listOfUnsolvedCells [

	^ self listCellsWhere: [ :cell | cell isSolved not ]
]

{ #category : #utilities }
SudokuGrid >> oneToNineShuffled [

	^ #( 1 2 3 4 5 6 7 8 9 ) shuffled
]

{ #category : #'as yet unclassified' }
SudokuGrid >> pointFromIndex: anInteger [

	| x y |
	x := anInteger - 1 // self class dimension + 1.
	y := anInteger - (x - 1 * self class dimension).
	^ x @ y
]
