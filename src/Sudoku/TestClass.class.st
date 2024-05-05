"
TestClass is a class insertet to test working with github
"
Class {
	#name : 'TestClass',
	#superclass : 'Object',
	#instVars : [
		'test'
	],
	#category : 'Sudoku',
	#package : 'Sudoku'
}

{ #category : 'initialization' }
TestClass >> initialize [

	test := false
]

{ #category : 'accessing' }
TestClass >> test [

	"comment"
	^ test
]

{ #category : 'accessing' }
TestClass >> test: anObject [

	test := anObject
]
