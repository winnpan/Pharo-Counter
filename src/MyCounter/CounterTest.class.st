Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest class >> testCounterStartingAt5 [
self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
self assert: ((Counter startingAt: 19) increment ; count) equals:
20
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 4.
	self assert: c count equals: 4.
]

{ #category : #tests }
CounterTest >> testCounterStartingAt5 [
self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : #tests }
CounterTest >> testDecrement [
	|c|
	c := Counter new.
	c
		count: 3;
		decrement;
		decrement;
		decrement.
	self assert: c count equals: 0.
	c decrement.
	self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c
		count: 0;
		increment;
		increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testInitialize [

	self assert: Counter new count equals: 0
]
