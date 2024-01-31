Class {
	#name : #ApprovalNamer,
	#superclass : #Object,
	#category : #Approvaltests
}

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
	methodName := '_' , sender selector , '_Approved'.
	^ sender class perform: methodName asSymbol
]

{ #category : #accessing }
ApprovalNamer >> approvalName [
	| className methodName testName sender|
	
	sender := self findTestMethod: thisContext sender.
	className :=  sender className.
	methodName :=  sender selector.
	testName := className , '.',  methodName .
	^testName 
]

{ #category : #'as yet unclassified' }
ApprovalNamer >> approvedFileName [

	| name sourceDirectory |
	name := self approvalName.
	sourceDirectory := ApprovalTestsBridge sourceDirectory resolve pathString.
	^ sourceDirectory , '/Approvaltests-Tests/' , name , '.approved'
]

{ #category : #'as yet unclassified' }
ApprovalNamer >> receivedFileName [
]
