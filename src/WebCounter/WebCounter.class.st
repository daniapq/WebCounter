"
A counter that can count up and down

Instance Variables
	count <Number>
"
Class {
	#name : #WebCounter,
	#superclass : #WAComponent,
	#instVars : [
		'counter'
	],
	#category : #'WebCounter-Components'
}

{ #category : #'class initialization' }
WebCounter class >> initialize [
	
	WAAdmin register: self asApplicationAt: 'webcounter'
]

{ #category : #accessing }
WebCounter >> count [
	^ counter count
]

{ #category : #accessing }
WebCounter >> count: anInteger [ 
	counter count: anInteger
]

{ #category : #actions }
WebCounter >> decrease [
	
	counter decrease
]

{ #category : #actions }
WebCounter >> increase [
	
	counter increase
]

{ #category : #initialization }
WebCounter >> initialize [
	
	super initialize.
	counter := Counter new
]

{ #category : #rendering }
WebCounter >> renderContentOn: html [
	
	html heading: counter count.
	html anchor
		callback: [ self increase ];
		with: '++'.
	html space.
	html anchor
		callback: [ self decrease ];
		with: '--'
]
