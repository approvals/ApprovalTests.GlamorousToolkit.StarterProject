Class {
	#name : #ApprovalNamerTest,
	#superclass : #TestCase,
	#category : #'Approvaltests-Tests'
}

{ #category : #tests }
ApprovalNamerTest >> testApprovedFile [
	| approvedFileName |
	approvedFileName := ApprovalNamer approvalName.
	self assert: approvedFileName equals: 'ApprovalNamerTest.testApprovedFile'
]
