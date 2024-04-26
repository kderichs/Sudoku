Class {
	#name : #MyClass,
	#superclass : #Object,
	#instVars : [
		'var1',
		'test'
	],
	#category : #Sudoku
}

{ #category : #initialization }
MyClass >> initialize [ 

	test := TestClass new
]
