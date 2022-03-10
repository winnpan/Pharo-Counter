Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [
	^ count.
]

{ #category : #accessing }
Counter >> count: val [

	count := val.
]

{ #category : #API }
Counter >> decrement [

	count > 0 ifTrue: [ count := count - 1 ].
]

{ #category : #accessing }
Counter >> increment [
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [
	count := 0.
]
