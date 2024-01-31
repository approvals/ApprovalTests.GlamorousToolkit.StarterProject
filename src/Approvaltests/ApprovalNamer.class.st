Class {
	#name : #ApprovalNamer,
	#superclass : #Object,
	#category : #Approvaltests
}

{ #category : #accessing }
ApprovalNamer class >> approvalName [
	| className methodName testName sender|
	
	sender := self findTestMethod: thisContext sender.
	className :=  sender className.
	methodName :=  sender selector.
	testName := className , '.',  methodName .
	^testName 
]

{ #category : #accessing }
ApprovalNamer class >> findTestMethod: aContext [
	| aReceiver |
	
	aContext ifNil: [ ^nil ].
	
	aReceiver := aContext receiver.
	^(aReceiver isKindOf: TestCase)
		ifTrue:[ aReceiver ]
		ifFalse:[self findTestMethod: aContext sender]
	
]

{ #category : #accessing }
ApprovalNamer class >> getApprovedText [
	| methodName sender |
	sender := self findTestMethod: thisContext sender.
	methodName :=  sender selector , '_Approved'.
	^ sender class perform: methodName asSymbol
]
