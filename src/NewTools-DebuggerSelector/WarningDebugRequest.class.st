Class {
	#name : #WarningDebugRequest,
	#superclass : #DebugRequest,
	#category : #'NewTools-DebuggerSelector-Core'
}

{ #category : #submit }
WarningDebugRequest >> submit [
	DebuggerSystem handleWarningDebugRequest: self
]