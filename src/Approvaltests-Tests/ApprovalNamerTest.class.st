Class {
	#name : #ApprovalNamerTest,
	#superclass : #TestCase,
	#category : #'Approvaltests-Tests'
}

{ #category : #tests }
ApprovalNamerTest >> testApprovedFile [
	"a comment"
	| namer approvedFileName |
	
	namer := ApprovalNamer new.
	approvedFileName := namer approvedFileName, '.txt'.
	self assert: (File exists: approvedFileName).
]
