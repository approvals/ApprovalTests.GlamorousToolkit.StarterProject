Class {
	#name : #SimpleTest,
	#superclass : #TestCase,
	#classVars : [
		'TestVerifyApproved'
	],
	#category : #'Approvaltests-Tests'
}

{ #category : #'as yet unclassified' }
SimpleTest class >> _testVerify_Approved [ ^42
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
