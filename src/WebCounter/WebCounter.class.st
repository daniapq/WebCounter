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
WebCounter >> counter [
	^ counter count
]

{ #category : #accessing }
WebCounter >> counter: anInteger [ 
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
	
	html heading: self counter.
	html anchor
		callback: [ self increase ];
		with: '++'.
	html space.
	html anchor
		callback: [ self decrease ];
		with: '--'
]

{ #category : #hooks }
WebCounter >> states [
	
	^ Array with: self
]
