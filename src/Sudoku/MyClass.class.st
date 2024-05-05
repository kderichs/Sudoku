Class {
	#name : 'MyClass',
	#superclass : 'Object',
	#instVars : [
		'var1',
		'test'
	],
	#category : 'Sudoku',
	#package : 'Sudoku'
}

{ #category : 'initialization' }
MyClass >> initialize [ 

	test := TestClass new
]
