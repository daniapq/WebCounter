"
Baseline of web counter package
"
Class {
	#name : #BaselineOfWebCounter,
	#superclass : #BaselineOf,
	#category : #BaselineOfWebCounter
}

{ #category : #baselines }
BaselineOfWebCounter >> baseline: spec [
	<baseline>
	
	spec
		for: #common
		do: [ 
			"Packages"
			spec
				package: 'WebCounter' ]
]
