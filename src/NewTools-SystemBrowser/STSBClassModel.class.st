Class {
	#name : #StSBClassModel,
	#superclass : #StSBModel,
	#instVars : [
		'modelClass'
	],
	#category : #'NewTools-SystemBrowser'
}

{ #category : #'instance creation' }
StSBClassModel class >> newEnvironment: anEnvironment  class: aClass [

	^ self new 
		environment: anEnvironment;
		modelClass: aClass;
		yourself
]

{ #category : #accessing }
StSBClassModel >> classProtocols [
	| metaclass |

	metaclass := self modelClass classSide.
	^ metaclass organization allProtocols collect: [ :each |
		StSBProtocolModel 
			newEnvironment: self environment 
			class: metaclass
			protocol: each ]
]

{ #category : #accessing }
StSBClassModel >> icon [

	^ self modelClass systemIcon
]

{ #category : #accessing }
StSBClassModel >> instanceProtocols [

	^ self modelClass organization allProtocols collect: [ :each |
		StSBProtocolModel 
			newEnvironment: self environment 
			class: self modelClass
			protocol: each  ]
]

{ #category : #accessing }
StSBClassModel >> modelClass [
	^ modelClass
]

{ #category : #accessing }
StSBClassModel >> modelClass: anObject [
	modelClass := anObject
]

{ #category : #accessing }
StSBClassModel >> name [

	^ self modelClass name
]