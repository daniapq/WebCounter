"
Model of Web Counter
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'WebCounter-Models'
}

{ #category : #accessing }
Counter >> count [
	
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	
	count := anInteger
]

{ #category : #actions }
Counter >> decrease [
	
	count := count - 1
]

{ #category : #actions }
Counter >> increase [
	
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	
	count := 0
]
