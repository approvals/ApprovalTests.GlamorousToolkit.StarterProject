Class {
	#name : #SimpleTest,
	#superclass : #TestCase,
	#classVars : [
		'TestVerifyApproved'
	],
	#category : #'Approvaltests-Tests'
}

{ #category : #accessing }
SimpleTest class >> testVerify_Approved [ ^'Hello, world.'
]

{ #category : #tests }
SimpleTest >> test3Is3 [

	TestVerifyApproved := 10 atRandom.
	
self assert: 3 equals: 3.
]

{ #category : #tests }
SimpleTest >> testVerify [

	"Approvals verify: 'Hello, world!'"
	
	Approvals verify: 'Hello, world.'.
]
