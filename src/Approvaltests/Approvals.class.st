Class {
	#name : #Approvals,
	#superclass : #Object,
	#category : #Approvaltests
}

{ #category : #'as yet unclassified' }
Approvals class >> verify: anObject [

	self verify: anObject options: (Options new)

]

{ #category : #'as yet unclassified' }
Approvals class >> verify: anObject index: anInteger [

	

]

{ #category : #accessing }
Approvals class >> verify: anObject options: anOptions [

	self assert:anObject equals: ApprovalNamer getApprovedText.

]

{ #category : #'as yet unclassified' }
Approvals class >> verify: anObject with: anInteger [

	

]
