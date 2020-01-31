Class {
	#name : #WebCounterTest,
	#superclass : #TestCase,
	#instVars : [
		'counter'
	],
	#category : #'WebCounter-Tests'
}

{ #category : #running }
WebCounterTest >> setUp [

	super setUp.
	counter := WebCounter new.

]

{ #category : #running }
WebCounterTest >> tearDown [

	counter := nil.
	super tearDown

]

{ #category : #tests }
WebCounterTest >> testChangeCurrentValue [
	
	counter count: 1.
	self assert: counter count equals: 1
]

{ #category : #tests }
WebCounterTest >> testDecreaseCurrentValue [
	
	counter decrease.
	self assert: counter count equals: -1
]

{ #category : #tests }
WebCounterTest >> testGetCurrentValue [
	
	self assert: counter count equals: 0
]

{ #category : #tests }
WebCounterTest >> testIncreaseCurrentValue [
	
	counter increase.
	self assert: counter count equals: 1
]
