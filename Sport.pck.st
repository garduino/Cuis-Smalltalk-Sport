'From Cuis 4.1 of 12 December 2012 [latest update: #1578] on 29 January 2013 at 10:01:56 am'!
'Description Please enter a description for this package '!
!classDefinition: #SpAbstractError category: #'Sport-Exceptions'!
Error subclass: #SpAbstractError
	instanceVariableNames: 'parameter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Exceptions'!
!classDefinition: 'SpAbstractError class' category: #'Sport-Exceptions'!
SpAbstractError class
	instanceVariableNames: ''!

!classDefinition: #SpDate category: #'Sport-Times'!
Object subclass: #SpDate
	instanceVariableNames: 'underlyingDate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Times'!
!classDefinition: 'SpDate class' category: #'Sport-Times'!
SpDate class
	instanceVariableNames: ''!

!classDefinition: #SpEnvironment category: #'Sport-Environmental'!
Object subclass: #SpEnvironment
	instanceVariableNames: ''
	classVariableNames: 'ImageShutdownTaskBlocks ImageStartupTaskBlocks'
	poolDictionaries: ''
	category: 'Sport-Environmental'!
!classDefinition: 'SpEnvironment class' category: #'Sport-Environmental'!
SpEnvironment class
	instanceVariableNames: ''!

!classDefinition: #SpError category: #'Sport-Exceptions'!
SpAbstractError subclass: #SpError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Exceptions'!
!classDefinition: 'SpError class' category: #'Sport-Exceptions'!
SpError class
	instanceVariableNames: ''!

!classDefinition: #SpExceptionContext category: #'Sport-Exceptions'!
Object subclass: #SpExceptionContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Exceptions'!
!classDefinition: 'SpExceptionContext class' category: #'Sport-Exceptions'!
SpExceptionContext class
	instanceVariableNames: ''!

!classDefinition: #SpFileStream category: #'Sport-Files'!
Object subclass: #SpFileStream
	instanceVariableNames: 'underlyingStream filename'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Files'!
!classDefinition: 'SpFileStream class' category: #'Sport-Files'!
SpFileStream class
	instanceVariableNames: ''!

!classDefinition: #SpFilename category: #'Sport-Files'!
Object subclass: #SpFilename
	instanceVariableNames: 'filename'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Files'!
!classDefinition: 'SpFilename class' category: #'Sport-Files'!
SpFilename class
	instanceVariableNames: ''!

!classDefinition: #SpSocket category: #'Sport-Sockets'!
Object subclass: #SpSocket
	instanceVariableNames: 'underlyingSocket socketAddress'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Sockets'!
!classDefinition: 'SpSocket class' category: #'Sport-Sockets'!
SpSocket class
	instanceVariableNames: ''!

!classDefinition: #SpSocketAddress category: #'Sport-Sockets'!
Object subclass: #SpSocketAddress
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Sockets'!
!classDefinition: 'SpSocketAddress class' category: #'Sport-Sockets'!
SpSocketAddress class
	instanceVariableNames: ''!

!classDefinition: #SpIPAddress category: #'Sport-Sockets'!
SpSocketAddress subclass: #SpIPAddress
	instanceVariableNames: 'hostAddress portNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Sockets'!
!classDefinition: 'SpIPAddress class' category: #'Sport-Sockets'!
SpIPAddress class
	instanceVariableNames: ''!

!classDefinition: #SpSocketError category: #'Sport-Sockets'!
SpError subclass: #SpSocketError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Sockets'!
!classDefinition: 'SpSocketError class' category: #'Sport-Sockets'!
SpSocketError class
	instanceVariableNames: ''!

!classDefinition: #SpStringUtilities category: #'Sport-Environmental'!
Object subclass: #SpStringUtilities
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Environmental'!
!classDefinition: 'SpStringUtilities class' category: #'Sport-Environmental'!
SpStringUtilities class
	instanceVariableNames: ''!

!classDefinition: #SpTimestamp category: #'Sport-Times'!
Object subclass: #SpTimestamp
	instanceVariableNames: 'underlyingTimestamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Times'!
!classDefinition: 'SpTimestamp class' category: #'Sport-Times'!
SpTimestamp class
	instanceVariableNames: ''!

!classDefinition: #SpTranscript category: #'Sport-Environmental'!
Object subclass: #SpTranscript
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Environmental'!
!classDefinition: 'SpTranscript class' category: #'Sport-Environmental'!
SpTranscript class
	instanceVariableNames: ''!

!classDefinition: #SpWeakArray category: #'Sport-Environmental'!
Object subclass: #SpWeakArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sport-Environmental'!
!classDefinition: 'SpWeakArray class' category: #'Sport-Environmental'!
SpWeakArray class
	instanceVariableNames: ''!


!SpExceptionContext commentStamp: '<historical>' prior: 0!
Exceptions vary quite a bit between Smalltalk implementaions, despite the presence of the ANSI Smalltalk specification.  This class representss a portable exception context in which a block can be executed, exceptions trapped and handlers defined.!

!SpFilename commentStamp: 'JM 4/18/2007 16:10' prior: 0!
A SpFilename represents a file or directory and allows operations like delete, makeDirectory, etc
Part of code is copied with permission from Cincom VisualWorks

Instance Variables
	filename:		<String> name of a file or directory

!

!SpAbstractError methodsFor: 'accessing' stamp: 'BB 1/25/2006 21:52'!
errorString
	^self messageText! !

!SpAbstractError methodsFor: 'priv handling' stamp: 'BB 1/23/2006 22:16'!
isResumable
	"Determine whether an exception is resumable."

	^self class mayResume! !

!SpAbstractError methodsFor: 'accessing' stamp: 'BB 1/23/2006 22:03'!
parameter
	^parameter ! !

!SpAbstractError methodsFor: 'accessing' stamp: 'BB 1/23/2006 22:03'!
parameter: anObject 
	parameter := anObject! !

!SpAbstractError methodsFor: 'signalling' stamp: 'BB 1/23/2006 22:11'!
raiseSignal
	"Raise an an exception."
	^ self signal! !

!SpAbstractError methodsFor: 'signalling' stamp: 'BB 1/25/2006 22:02'!
raiseSignal: aString 
	"Raise an an exception."
	^ self signal: aString! !

!SpAbstractError class methodsFor: 'testing' stamp: 'BB 1/23/2006 22:17'!
mayResume

	^false! !

!SpAbstractError class methodsFor: 'signalling' stamp: 'BB 1/23/2006 22:08'!
raiseSignal
	"Raise an an exception."
	^ self signal! !

!SpAbstractError class methodsFor: 'signalling' stamp: 'BB 1/23/2006 21:24'!
raiseSignal: aString 
	"Raise an an exception."
	^ self signal: aString! !

!SpDate methodsFor: 'comparing' stamp: 'JM 4/26/2007 21:38'!
< anotherSpDate 
	"^a Boolean
	Answer true if anotherSpDate is less (i.e. earlier) than me."
	^self underlyingDate < anotherSpDate underlyingDate! !

!SpDate methodsFor: 'comparing' stamp: 'mivsek 8/17/2007 16:07'!
<= anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is greater (i.e. later) than me."

	^self underlyingDate <= anotherOSkDate underlyingDate! !

!SpDate methodsFor: 'comparing' stamp: 'mivsek 8/17/2007 16:07'!
= anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is equivalent to me."
	^self underlyingDate = anotherOSkDate underlyingDate! !

!SpDate methodsFor: 'comparing' stamp: 'JM 4/14/2007 18:50'!
> anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is greater (i.e. later) than me."
	^self underlyingDate > anotherOSkDate underlyingDate! !

!SpDate methodsFor: 'comparing' stamp: 'mivsek 8/17/2007 16:07'!
>= anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is greater (i.e. later) than me."

	^self underlyingDate >= anotherOSkDate underlyingDate! !

!SpDate methodsFor: 'services' stamp: 'JM 4/26/2007 21:24'!
addDays: anInteger 
	"^a SpDate
	I don't change the date I represent.  Rather, I create a new date which represents
	my date offset by anInteger days."
	^SpDate fromDays: self asDays + anInteger! !

!SpDate methodsFor: 'services' stamp: 'JM 4/26/2007 21:31'!
addYears: anInteger 	
	"^an OSkDate
	I don't change the date I represent.  Rather, I create a new date which represents my 
	date offset by anInteger years."
	^SpDate onDate: 
		(Date newDay: self underlyingDate dayOfMonth
		 	month: self underlyingDate monthIndex
			year: self underlyingDate year + anInteger)! !

!SpDate methodsFor: 'converting' stamp: 'JM 4/26/2007 21:19'!
asDays	
	"^an Integer
	I return the integer number of days between January 1, 1901 and
	the date I represent. "
	^self underlyingDate asSeconds / (3600*24)! !

!SpDate methodsFor: 'printing' stamp: 'JM 4/14/2007 18:51'!
asISO8610String 
	|targetStream|
	targetStream := WriteStream on: String new.
	self asISO8610StringOn: targetStream.
	^targetStream contents! !

!SpDate methodsFor: 'printing' stamp: 'JM 4/14/2007 18:52'!
asISO8610StringOn: aStream 	
	aStream
		nextPutAll: self underlyingDate year printString;
		nextPut: $-.
	self underlyingDate monthIndex < 10 ifTrue: [aStream nextPut: $0].
	aStream
		nextPutAll: self underlyingDate monthIndex printString;
		nextPut: $-.
	self underlyingDate dayOfMonth < 10 ifTrue: [aStream nextPut: $0].
	aStream nextPutAll: self underlyingDate dayOfMonth printString.
	^self! !

!SpDate methodsFor: 'accessing' stamp: 'JM 4/25/2007 21:24'!
day
	^self underlyingDate day! !

!SpDate methodsFor: 'accessing' stamp: 'janko 1/29/2013 10:26'!
dayOfYear

	^self underlyingDate dayOfYear! !

!SpDate methodsFor: 'accessing' stamp: 'JM 4/26/2007 21:37'!
daysInMonth
	^self underlyingDate daysInMonth! !

!SpDate methodsFor: 'comparing' stamp: 'JM 4/14/2007 18:50'!
hash
	"^an Object"
	^self underlyingDate hash! !

!SpDate methodsFor: 'comparing' stamp: 'mivsek 8/17/2007 16:07'!
max: anSpDate 
	^self > anSpDate ifTrue: [self] ifFalse: [anSpDate]! !

!SpDate methodsFor: 'comparing' stamp: 'mivsek 8/17/2007 16:08'!
min: anSpDate 
	^self < anSpDate ifTrue: [self] ifFalse: [anSpDate]! !

!SpDate methodsFor: 'accessing' stamp: 'JM 4/26/2007 21:22'!
monthIndex
	^self underlyingDate monthIndex! !

!SpDate methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 18:51'!
onDate: aDate 
	underlyingDate := aDate.
	^self! !

!SpDate methodsFor: 'printing' stamp: 'JM 4/26/2007 21:06'!
printOn: aStream
	self underlyingDate printOn: aStream! !

!SpDate methodsFor: 'services' stamp: 'JM 4/26/2007 21:25'!
subtractDays: anInteger 
	"^a SpDate
	I don't change the date I represent.  Rather, I create a new date which represents
	my date offset by anInteger days."
	^SpDate fromDays: self asDays - anInteger! !

!SpDate methodsFor: 'private' stamp: 'JM 4/14/2007 18:49'!
underlyingDate
	^underlyingDate! !

!SpDate methodsFor: 'accessing' stamp: 'JM 4/26/2007 21:27'!
weekdayIndex
	"Sunday=1, ... , Saturday=7"
	^self underlyingDate weekdayIndex
! !

!SpDate methodsFor: 'accessing' stamp: 'janko 1/29/2013 09:50'!
year	"Cuis specific"
	^self underlyingDate yearNumber! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:45'!
fromDays: anInteger
	^self new onDate: (Date fromDays: anInteger)! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:45'!
fromISO8610Stream: aStream 	
	| date |
	date := SpExceptionContext
		for: [self parseDateFromISO8601Stream: aStream]
		on: SpError
		do: [:ex | nil].
	^date isNil ifTrue: [nil] ifFalse: [self onDate: date]! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:44'!
fromISO8610String: aString
	^aString size == 10
		ifFalse: [nil]
		ifTrue: [self fromISO8610Stream: aString readStream]! !

!SpDate class methodsFor: 'private' stamp: 'JM 4/14/2007 18:46'!
integerOfLength: aLength FromString: aString
	"^an Integer or nil
	I parse an integer from aString, if I have problems I return nil.  I make sure
	the string form of the integer is exactly aLength characters long."
	"SpDate integerOfLength: 4 FromString: '2004'"
	^(aString size == aLength and: 
		[(aString asOrderedCollection select: [:aDigit | aDigit isDigit not]) isEmpty])
			ifFalse: [nil]
			ifTrue: [aString asNumber]! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/26/2007 21:05'!
newDay: day month: month year: year 
	^self new onDate: (Date newDay: day month: month year: year) ! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/26/2007 21:28'!
newDay: day monthNumber: month year: year 
	^self new onDate: (Date newDay: day month: month year: year) ! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:44'!
onDate: aDate
	^self new onDate: aDate! !

!SpDate class methodsFor: 'private' stamp: 'JM 4/26/2007 21:32'!
parseDateFromISO8601Stream: sourceStream	
	"^a Date or nil
	I parse an ISO 8601 date from sourceStream.  If there are any parsing
	problems, I return nil."
	| yyyy mm dd |
	yyyy := self integerOfLength: 4 FromString: (sourceStream upTo: $-).
	mm := self integerOfLength: 2 FromString: (sourceStream upTo: $-).
	dd := self integerOfLength: 2 FromString: (sourceStream next: 2).
	(yyyy isNil or: [mm isNil or: [dd isNil]]) ifTrue: [^nil].
	^SpExceptionContext 
		for: [Date newDay: dd month: mm year: yyyy]
		on: SpError
		do: [:ex | nil]! !

!SpDate class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:43'!
today
	^self onDate: Date today! !

!SpEnvironment class methodsFor: 'image startup/shutdown' stamp: 'mivsek 9/5/2007 22:45'!
addImageShutdownTask: aBlock for: anObject 
	"^self
	I add aBlock to the list of actions and note that this is for anObject"

	self imageShutdownTaskBlocks at: anObject put: aBlock.
	^self
! !

!SpEnvironment class methodsFor: 'image startup/shutdown' stamp: 'mivsek 9/5/2007 22:45'!
addImageStartupTask: aBlock for: anObject 
	"^self
	I add aBlock to the list of actions and note that this is for anObject"

	self imageStartupTaskBlocks at: anObject put: aBlock.
	^self
! !

!SpEnvironment class methodsFor: 'queries' stamp: 'JM 6/8/2007 12:01'!
allSubclassesOf: aClass
	"^an Array
	I return the array of classes which are subclasses of aClass."

	^aClass allSubclasses asArray
	
"SpEnvironment allSubclassesOf: Error"! !

!SpEnvironment class methodsFor: 'hex' stamp: 'mivsek 8/17/2007 16:34'!
byteArrayFromHexString: aString 

"not yet ported!!
	^ByteArray fromHexString: aString
"	
"SpEnvironmet byteArrayFromHexString: '1abc3' "! !

!SpEnvironment class methodsFor: 'services' stamp: 'JM 6/8/2007 11:59'!
characterFromInteger: anInteger 
	^Character value: anInteger
	
"SpEnvironment characterFromInteger: 32"! !

!SpEnvironment class methodsFor: 'compiling' stamp: 'JM 4/17/2007 09:58'!
evaluate: aString in: anEnvironment
	"Squeak doesn't need anEnvironment as VW"
	^Compiler 
		evaluate: aString
		for: nil
		notifying: nil
		logged: false! !

!SpEnvironment class methodsFor: 'compiling' stamp: 'JM 4/17/2007 09:59'!
evaluate: aString receiver: anObject in: anEnvironment
	"Squeak doesn't need anEnvironment as VW"
	^Compiler 
		evaluate: aString
		for: anObject
		notifying: nil
		logged: false! !

!SpEnvironment class methodsFor: 'hex' stamp: 'mivsek 8/17/2007 16:34'!
hexStringFromByteArray: aByteArray 

"not yet ported!!
	^aByteArray asHexString
"! !

!SpEnvironment class methodsFor: 'private' stamp: 'mivsek 9/5/2007 23:15'!
imageShutdownTaskBlocks
	"self imageShutdownTaskBlocks"
	ImageShutdownTaskBlocks isNil 
		ifTrue: [ImageShutdownTaskBlocks := IdentityDictionary new].
	^ImageShutdownTaskBlocks! !

!SpEnvironment class methodsFor: 'private' stamp: 'mivsek 9/5/2007 23:15'!
imageStartupTaskBlocks
	"self imageStartupTaskBlocks"
	ImageStartupTaskBlocks isNil 
		ifTrue: [ImageStartupTaskBlocks := IdentityDictionary new].
	^ImageStartupTaskBlocks! !

!SpEnvironment class methodsFor: 'private' stamp: 'mivsek 9/5/2007 22:43'!
initialize
	"self initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self! !

!SpEnvironment class methodsFor: 'services' stamp: 'JM 6/8/2007 11:59'!
integerFromString: aString
	"^an Integer
	We need this because of what looks like a bug in GemStone's String>>asNumber 
	(e.g. '16rFF' -> 1.6000000000000000E+01, not 255)."

	^aString asNumber
	
"SpEnvironment integerFromString: '32' "! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 11:17'!
isAmbraiSmalltalk
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'JM 6/8/2007 11:55'!
isDolphin
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 10:47'!
isGNUSmalltalk
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'JM 4/14/2007 19:09'!
isGemStone
	^false! !

!SpEnvironment class methodsFor: 'testing' stamp: 'JM 4/14/2007 19:09'!
isHeadless
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 11:11'!
isObjectStudio
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 11:10'!
isSmalltalkX
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 11:17'!
isSmalltalkXY
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'JM 4/14/2007 19:09'!
isSqueak
	^true! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 11:13'!
isVASmalltalk
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'mivsek 9/6/2007 11:14'!
isVisualSmalltalk
	^false! !

!SpEnvironment class methodsFor: 'testing-dialects' stamp: 'JM 4/14/2007 19:09'!
isVisualWorks
	^false! !

!SpEnvironment class methodsFor: 'image startup/shutdown' stamp: 'mivsek 9/5/2007 22:49'!
removeShutdownActionFor: anObject 
	"^self
	I remove the task block for an object it it has one"

	self imageShutdownTaskBlocks removeKey: anObject ifAbsent: [nil].
	^self! !

!SpEnvironment class methodsFor: 'image startup/shutdown' stamp: 'mivsek 9/5/2007 22:49'!
removeStartupActionFor: anObject 
	"^self
	I remove the task block for an object it it has one"

	self imageStartupTaskBlocks removeKey: anObject ifAbsent: [nil].
	^self! !

!SpEnvironment class methodsFor: 'os commands' stamp: 'mivsek 8/17/2007 16:32'!
runShellCommandString: aCommandString

" not yet ported!!
 
	^UnixProcess cshOne: aCommandString
"! !

!SpEnvironment class methodsFor: 'private' stamp: 'mivsek 9/5/2007 22:39'!
shutDown
	"Squeak specific!!"
	self imageShutdownTaskBlocks values do: [:shutdownTask | shutdownTask value].
	^self! !

!SpEnvironment class methodsFor: 'private' stamp: 'mivsek 9/5/2007 22:38'!
startUp
	"Squeak specific!!"
	self imageStartupTaskBlocks values do: [:startupTask | startupTask value].
	^self! !

!SpEnvironment class methodsFor: 'services' stamp: 'JM 4/14/2007 19:08'!
streamStartPosition
	"^an Integer
	Streams start at position 0 in VisualWorks & Squeak, and position 1 in
	GemStone(!!). "
	^ 0! !

!SpEnvironment class methodsFor: 'services' stamp: 'JM 6/8/2007 11:56'!
writeStackDumpForException: exception to: targetStream 
	targetStream nextPutAll: 
		'SpEnvironment class>>writeStackDumpForException:to: does not work yet :-/'! !

!SpExceptionContext class methodsFor: 'native exceptions' stamp: 'JM 4/14/2007 18:41'!
brokenPipeException
	"I return the exception that get's thrown when a socket connection gets
	broken."

	^ProtocolClientError! !

!SpExceptionContext class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:42'!
for: aBlock on: anException do: exceptionBlock
	"^an Object
	I return the result of evaluating aBlock. In VisualWorks and other
	Smalltalks which are ANSI compliant, I delegate to aBlock."

	^aBlock on: anException do: exceptionBlock! !

!SpExceptionContext class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 18:42'!
for: aBlock onAnyExceptionDo: exceptionBlock	
	"^an Object
	I execute aBlock and if there is any exception I evaluate exceptionBlock.  
	Essentially, I look out for the most abstract kind of exception which , 
	of course, will vary between Smalltalk implementations."
	
	^aBlock on: Exception do: exceptionBlock! !

!SpFileStream methodsFor: 'initialize-release' stamp: 'JM 4/18/2007 13:54'!
appendingToFilename: aSpFilename
	self filename: aSpFilename.
	underlyingStream := aSpFilename exists
		ifTrue: [FileStream oldFileNamed: self filename asString]
		ifFalse: [FileStream newFileNamed: self filename asString].
"	underlyingStream guessDefaultLineEndConvention. "
	^self! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:00'!
atEnd
	^self underlyingStream atEnd! !

!SpFileStream methodsFor: 'services' stamp: 'mivsek 8/22/2007 17:13'!
binary
	^self underlyingStream binary! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:00'!
close
	^self underlyingStream close! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:00'!
closed
	^self underlyingStream closed! !

!SpFileStream methodsFor: 'accessing' stamp: 'JM 4/14/2007 19:19'!
contentsStream
	^self underlyingStream contents readStream! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
cr
	^self underlyingStream cr! !

!SpFileStream methodsFor: 'accessing' stamp: 'JM 4/14/2007 19:19'!
filename
	^filename! !

!SpFileStream methodsFor: 'accessing' stamp: 'JM 4/18/2007 12:52'!
filename: aSpFilename
	filename := aSpFilename! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
flush
	^self underlyingStream flush! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
next
	^self underlyingStream next! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
nextPut: anObject 
	^self underlyingStream nextPut: anObject! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
nextPutAll: aCollection 
	^self underlyingStream nextPutAll: aCollection! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
peek
	^self underlyingStream peek! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:01'!
position
	^self underlyingStream position! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:02'!
position: aNumber
	^self underlyingStream position: aNumber! !

!SpFileStream methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 19:17'!
readingFromFileNamed: aString
	"^self
	I initialize myself to write to a file named aString."
	filename := aString.
	underlyingStream := (FileUrl named: aString) readStream.
	underlyingStream lineEndTransparent.
	^self! !

!SpFileStream methodsFor: 'initialize-release' stamp: 'JM 4/18/2007 14:00'!
readingFromFilename: aSpFilename 
	self filename: aSpFilename.
	underlyingStream := FileStream oldFileNamed: self filename asString.
	^self! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:02'!
skip: anInteger
	^self underlyingStream skip: anInteger! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:02'!
store: anObject 
	^self underlyingStream store: anObject! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:02'!
throughAll: aCollection
	^self underlyingStream throughAll: aCollection! !

!SpFileStream methodsFor: 'accessing' stamp: 'JM 4/14/2007 19:19'!
underlyingStream
	^underlyingStream! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:02'!
upTo: anObject
	^self underlyingStream upTo: anObject! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:05'!
upToAll: aCollection
	^self underlyingStream upToAll: aCollection! !

!SpFileStream methodsFor: 'services' stamp: 'BB 1/25/2006 16:05'!
upToEnd
	^self underlyingStream upToEnd! !

!SpFileStream methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 19:18'!
writingToFileNamed: aString 
	"^self
	I initialize myself to write to a file named aString."
	filename := aString.
	underlyingStream := (FileUrl named: aString) writeStream.
	underlyingStream lineEndTransparent.
	^self! !

!SpFileStream methodsFor: 'initialize-release' stamp: 'JM 4/18/2007 14:02'!
writingToFilename: aSpFilename 
	self filename: aSpFilename.
	underlyingStream := FileStream newFileNamed: self filename asString.
	^self! !

!SpFileStream class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:20'!
appendingToFilename: aSpFilename 
	"^a SpFileStream
	I create a new instance of myself to append to the file identified by anOSkFilename."

	^self new appendingToFilename: aSpFilename! !

!SpFileStream class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:21'!
readingFromFileNamed: aString 
	"^a SpFileStream
	I create a new instance of myself to read from a file named aString."

	^self new readingFromFileNamed: aString! !

!SpFileStream class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:21'!
readingFromFilename: aSpFilename 
	"^a SpFileStream
	I create a new instance of myself to read the file identified by anOSkFilename."

	^self new readingFromFilename: aSpFilename! !

!SpFileStream class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:22'!
writingToFileNamed: aString 
	"^a SpFileStream
	I create a new instance of myself to write to a file named aString."

	^self new writingToFileNamed: aString! !

!SpFileStream class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:22'!
writingToFilename: aSpFilename 
	"^an SpFileStream
	I create a new instance of myself to append to the file identified by aSpFilename."

	^self new writingToFilename: aSpFilename! !

!SpFilename methodsFor: 'services' stamp: 'JM 4/14/2007 19:13'!
appendStream
	"^a SpFileStream
	I create an append stream on the file I represent."

	^SpFileStream appendingToFilename: self! !

!SpFilename methodsFor: 'accessing' stamp: 'JM 4/18/2007 12:30'!
asString
	^self filename! !

!SpFilename methodsFor: 'testing' stamp: 'JM 4/26/2007 15:38'!
exists	
	"^a Boolean
	I return true if the file or direcotory I represent actually exists"
	^[(FileDirectory default fileExists: self asAbsoluteFilename asString) 
		or: [FileDirectory default directoryExists: self asString] ]
			on: Error, Exception 
			do: [:ex | ^false].
! !

!SpFilename methodsFor: 'initialize-release' stamp: 'JM 4/18/2007 12:27'!
named: aString 
	"^self
	I initialize myself to represent the filename identified by aString."

	filename := aString.
	^self! !

!SpFilename methodsFor: 'services' stamp: 'JM 4/14/2007 19:14'!
readStream
	"^a SpFileStream
	I create a read stream on the file I represent."

	^SpFileStream readingFromFilename: self! !

!SpFilename methodsFor: 'private' stamp: 'JM 4/14/2007 19:15'!
underlyingFilename
	"^a Filename
	I return the Filename instance that I am a wrapper for."
	^underlyingFilename! !

!SpFilename methodsFor: 'services' stamp: 'JM 4/14/2007 19:14'!
writeStream
	"^a SpFileStream
	I create a write stream on the file I represent."

	^SpFileStream writingToFilename: self! !

!SpFilename class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:11'!
named: aString 
	"^a SpFilename
	I create a new instance of myself to represent the filename identified by aString."

	^self new named: aString! !

!SpIPAddress methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 19:44'!
host: aHostAddress port: aPortNumber 
	hostAddress := aHostAddress.
	portNumber := aPortNumber! !

!SpIPAddress methodsFor: 'accessing' stamp: 'JM 4/14/2007 19:44'!
hostAddress
	^ hostAddress! !

!SpIPAddress methodsFor: 'printing' stamp: 'JM 4/14/2007 19:46'!
hostAddressString
	| targetStream |
	targetStream := String new writeStream.

	targetStream
		nextPutAll: (self hostAddress at: 1) printString;
		nextPut: $.;
		nextPutAll: (self hostAddress at: 2) printString;
		nextPut: $.;
		nextPutAll: (self hostAddress at: 3) printString;
		nextPut: $.;
		nextPutAll: (self hostAddress at: 4) printString.
	^targetStream contents! !

!SpIPAddress methodsFor: 'accessing' stamp: 'JM 4/14/2007 19:45'!
portNumber
	^ portNumber! !

!SpIPAddress class methodsFor: 'instance creation' stamp: 'mivsek 8/17/2007 16:24'!
connectToServerOnHost: hostName port: portNumber
	"^an OSkSocket 
	I return a new instance of myself which represents a socket connector
	to a server listening on portNumber at hostName."
	| newSocket |
	newSocket := self newTCPSocket.
	newSocket connectTo: (SpIPAddress hostName: hostName port: portNumber).
	^ newSocket! !

!SpIPAddress class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:41'!
host: aHostAddress port: aPortNumber
	"^a SpSocketAddress
	I create a new instance of myself which represents an IP address/port
	combination (a TCP/IP address, really). Note that aHostAddress must be a
	four element byte array (e.g. #[127 0 0 1]) ."
	
	^ self new host: aHostAddress port: aPortNumber! !

!SpIPAddress class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:42'!
hostName: aHostNameString port: aPortNumber
	"^a SpSocketAddress
	I translate aHostNameString to an IP address and then create
	a new instance of myself with >>host:port:"	
		
	^ self
		host: (NetNameResolver addressForName: aHostNameString)
		port: aPortNumber! !

!SpSocket methodsFor: 'services-status' stamp: 'JM 4/14/2007 21:14'!
accept
	"^a SpSocket
	I accept the next connection made to the server socket I represent.
	This is a *blocking* request. That is, this method will not exit until
	an inbound socket connection is made. When that happens the new
	socket connected to the client (not the server socket) will be returned."
	^ SpExceptionContext
		for: [| clientSpecificSocket |
			[(clientSpecificSocket := self underlyingSocket
				waitForAcceptFor: 1
				ifTimedOut: [nil]) isNil] whileTrue.
			self class onNativeclientSocket: clientSpecificSocket for: self]
		on: Error
		do: [:ex | SpSocketError new 
			parameter: ex;
			raiseSignal: 'Error while trying to accept a socket connection.']! !

!SpSocket methodsFor: 'services-status' stamp: 'JM 4/14/2007 21:15'!
acceptRetryingIfTransientErrors

	"^a SpSocket
	I try to do an accept.  If I get an exception which is 'transient' I retry.
	For now in Squeak, I just do the accept"

	"^SpExceptionContext
		for: [self accept]
		on: OSErrorHolder transientErrorSignal
		do: [:ex | ex restart]"

	^self accept! !

!SpSocket methodsFor: 'services-status' stamp: 'JM 4/14/2007 21:15'!
bindSocketAddress: aSocketAddress
	"^self
	Equivalent of: bind(int sockfd, struct sockaddr *my_addr, socklen_t	addrlen); 
	see man bind. Bind the socket to aSocketAddress.	It seems that Squeak merges 
	the 'bind' and the 'listen', so here I'll just	remember the socket address and 
	use it when I get the listen request."
	
	socketAddress := aSocketAddress.
	^self! !

!SpSocket methodsFor: 'services-status' stamp: 'mivsek 9/5/2007 23:12'!
close
	"^self
	The same as the close() posix function."
	
	self underlyingSocket closeAndDestroy! !

!SpSocket methodsFor: 'services-status' stamp: 'JM 4/14/2007 21:16'!
connectTo: aSocketAddress	
	"^self
	I instruct my underlying socket to connect to aSocketAddress."
	
	self underlyingSocket 
		connectTo: aSocketAddress hostAddress 
		port: aSocketAddress portNumber! !

!SpSocket methodsFor: 'services-accessing' stamp: 'JM 4/14/2007 21:01'!
getPeerName
	"^a SpSocketAddress
	see man getpeername.
	I return the socket address of the other/remote/peer end of the socket I represent."
	
	^ SpIPAddress 
		host: self underlyingSocket remoteAddress 
		port: self underlyingSocket remotePort! !

!SpSocket methodsFor: 'services-accessing' stamp: 'JM 4/14/2007 21:02'!
getSocketName	
	"^a SpSocketAddress
	see: man getsockname
	I rreturn my local socket address which may be any subclass of SpSocketAddress."
	
	^ SpIPAddress 
		host: self underlyingSocket localAddress 
		port: self underlyingSocket localPort! !

!SpSocket methodsFor: 'testing' stamp: 'JM 4/14/2007 21:19'!
isActive	
	"^a Boolean
	In Squeak there is no simple >>isActive test, it seems."
	
	^self underlyingSocket isConnected
		or: [self underlyingSocket isWaitingForConnection]! !

!SpSocket methodsFor: 'services-status' stamp: 'JM 4/14/2007 21:18'!
listenBackloggingUpTo: aNumberOfConnections
	"^self
	I set the socket I represent listening for incomming connections,
	allowing a 	backlog of up to aNumberOfConnections.
	Note that Squeak combines bind and listen so I noted the socket address
	when I was asked to bind - and I use that now.
	OK - I really wanter to be able to specify the interface, but that seems
	to be broken - I get a primitive error when I try to use it"
	
	self underlyingSocket
		listenOn: socketAddress portNumber
		backlogSize: aNumberOfConnections
"		interface: socketAddress hostAddress".
 	^self! !

!SpSocket methodsFor: 'private' stamp: 'JM 4/14/2007 21:19'!
onNativeclientSocket: aNativeSocket for: aServerSocket
	"^self
	I initialize myself with the same properties as aServerSocket and with
	aNativeSocket as my underlying socket."
	
"	communicationDomain := aServerSocket communicationDomain.
	socketType := aServerSocket socketType.
	protocolNumber := aServerSocket protocolNumber."
	
	underlyingSocket := aNativeSocket.
	^self! !

!SpSocket methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 21:00'!
onUnderlyingSocket: aSocket
	underlyingSocket := aSocket.
	^self! !

!SpSocket methodsFor: 'services-io' stamp: 'JM 4/14/2007 21:05'!
read: targetNumberOfBytes 
	"^a ByteArray
	I attempt to read the targetNumberOfBytes from my underlying socket.
	If the targetNumberOfBytes	are not available, I return what I can get."
				
	| targetByteArray numberOfBytesActuallyRead |
	^ SpExceptionContext
		for: 
			[targetByteArray := ByteArray new: targetNumberOfBytes.
			numberOfBytesActuallyRead := self underlyingSocket 
				receiveDataInto: targetByteArray.
			targetByteArray copyFrom: 1 to: numberOfBytesActuallyRead]
		on: Error
		do: [:ex | SpSocketError raiseSignal: ex]! !

!SpSocket methodsFor: 'services-io' stamp: 'JM 4/14/2007 21:06'!
readInto: aByteArray startingAt: startIndex for: aNumberOfBytes
	"^an Integer
	I return the number of bytes actually read.	In Squeak it seems we can not specify the
	number of bytes to be read.	We get what its there no matter how much their is!!"
	| actuallyRead |
	actuallyRead := self underlyingSocket receiveDataInto: aByteArray startingAt: startIndex.
	actuallyRead > aNumberOfBytes
		ifTrue: [1 halt].
	^ actuallyRead! !

!SpSocket methodsFor: 'services-io' stamp: 'JM 4/14/2007 21:06'!
readyForRead
	"^a Boolean
	I return true if a read operation will return some number of bytes."
	
	^self underlyingSocket dataAvailable! !

!SpSocket methodsFor: 'services-options' stamp: 'JM 4/14/2007 21:10'!
setAddressReuse: aBoolean	
	"^self
	c.f. self class >>socketOptions and self >>setOptionForLevel:optionID:value:
	If a boolean is true, I set address reuse on, otherwise I set address reuse	off. "
		
	"self underlyingSocket setOption: 'SO_REUSEADDR' value: aBoolean"! !

!SpSocket methodsFor: 'private' stamp: 'JM 4/14/2007 21:20'!
underlyingSocket
	^underlyingSocket! !

!SpSocket methodsFor: 'services-io' stamp: 'JM 4/14/2007 21:08'!
waitForReadDataUpToMs: aNumberOfMilliseconds 
	"^a Boolean
	I return true if we think data became available within
	aNumberOfMilliseconds, and false if we timed out.
	Squeak wants a timeout in seconds, so I convert it here."
	
	| aNumberOfSeconds |
	aNumberOfSeconds := (aNumberOfMilliseconds / 1000) ceiling.
	self underlyingSocket
		waitForDataFor: aNumberOfSeconds
		ifClosed: [SpError signal: 'Socket closed while waiting for data'. ^false]
		ifTimedOut: [^false].
	^true! !

!SpSocket methodsFor: 'services-io' stamp: 'JM 4/14/2007 21:09'!
write: sourceByteArray	
	"^an Integer
	I write the contents of the sourceByteArray to my underlying Socket.
	I return the number of bytes written."
	
	^SpExceptionContext
		for: [self underlyingSocket sendSomeData: sourceByteArray]
		on: Error
		do: [:ex | SpSocketError raiseSignal: ex]! !

!SpSocket methodsFor: 'services-io' stamp: 'mivsek 7/22/2007 19:04'!
writeFrom: aByteArray startingAt: startIndex for: length
	"^an Integer
	I return the number of bytes actually written."
	
	^SpExceptionContext
		for: [self underlyingSocket
			sendSomeData: aByteArray
			startIndex: startIndex
			count: length]
		on: Error
		do: [:ex | SpSocketError raiseSignal: ex]
! !

!SpSocket class methodsFor: 'instance creation' stamp: 'JM 4/16/2007 22:40'!
connectToServerOnHost: hostName port: portNumber 
	"^a SpSocket
	I return a new instance of myself which represents a socket connecter
	to a server listening on portNumber at hostName."
	| newSocket |
	newSocket := self newTCPSocket.
	newSocket
		connectTo: (SpIPAddress hostName: hostName port: portNumber).
	^ newSocket! !

!SpSocket class methodsFor: 'instance creation' stamp: 'JM 4/17/2007 12:44'!
newSocketPair
	"I return an array containing two SpSockets each representing one end of a
	TCP connection. Port is fixed (for now)!! "
	"SpSocket newSocketPair"
	| s1 s2 s3 |
	[s1 := self newTCPSocket
		setAddressReuse: true; 
		bindSocketAddress: (SpIPAddress hostName: 'localhost' port: 3523);
		listenBackloggingUpTo: 50.
	s2 := SpSocket connectToServerOnHost: 'localhost' port: 3523.
	s3 := s1 accept]
		ifCurtailed: 	[s1 close. s2 close].
	s1 close.
	^Array with: s3 with: s2! !

!SpSocket class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:49'!
newTCPSocket
	"^a SpSocket
	I return a new instance of myself that represents an unconfigured TCP socket."
	
	Socket initializeNetwork.
	^self new onUnderlyingSocket: Socket newTCP! !

!SpSocket class methodsFor: 'private' stamp: 'JM 4/14/2007 19:50'!
onNativeclientSocket: aNativeSocket for: aServerSocket
	"^a SpSocket
	I create a new instance of my self at the request of aServerSocket  where
	this new instance will be a connected client socket (connected via aNativeSoket)."
	
	^self new onNativeclientSocket: aNativeSocket for: aServerSocket! !

!SpSocketAddress class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:47'!
on: subjectAddress for: aSocket 
	"^a SpSocketAddress
	Well, in the future there may be more than one kind of socket address,
	but for now there is just SpIPAddress, so I return one of those on the 
	details embodied in the subjectAddress. 
	No use is made of aSocket as yet, but it will be useful when there
	are more kinds of socket address supported."
	
	^SpIPAddress host: subjectAddress hostAddress port: subjectAddress port! !

!SpStringUtilities class methodsFor: 'services-encoding' stamp: 'JM 4/14/2007 19:06'!
bytes: subjectBytes asStringUsingEncodingNames: anEncodingName
	^ subjectBytes asString! !

!SpStringUtilities class methodsFor: 'services' stamp: 'JM 6/8/2007 12:13'!
prevIndexOf: anElement from: startIndex to: stopIndex in: aString
	"Answer the previous index of anElement within the receiver between 
	startIndex and stopIndex working backwards through the receiver.  If the receiver 
	does not contain anElement, answer nil"

	startIndex to: stopIndex by: -1 do:
		[:i |
		(aString at: i) = anElement
			ifTrue: [^i]].
	^nil! !

!SpStringUtilities class methodsFor: 'services-encoding' stamp: 'JM 4/14/2007 19:06'!
string: subjectString asBytesUsingEncodingNamed: anEncodingName
	^ subjectString asByteArray! !

!SpStringUtilities class methodsFor: 'services-encoding' stamp: 'JM 6/8/2007 12:11'!
stringFromBytes: aByteArray 
	"^a String
	In GemStone ['Hello, World' asByteArray asString] returns the string 'aByteArray' !!
	This is the boring long way of getting a string from a ByteArray - but it does work
	in GemStone."
	"SpStringUtilities stringFromBytes: ('Hello, World' asByteArray)"

	^aByteArray asString
! !

!SpStringUtilities class methodsFor: 'services' stamp: 'JM 4/14/2007 21:55'!
tokensBasedOn: separatorString in: aString 
	"Answer an OrderedCollection of the sub-sequences
	 of the receiver that are separated by anObject."

	| result lastIdx idx lastToken |
	result := OrderedCollection new.
	aString size = 0 ifTrue: [^result].
	lastIdx := 0.
	
	[idx := aString findString: separatorString startingAt: lastIdx + 1.
	idx > 0] 
			whileTrue: 
				[idx == (lastIdx + 1) 
					ifTrue: [result addLast: String new]
					ifFalse: [result addLast: (aString copyFrom: lastIdx + 1 to: idx - 1)].
				lastIdx := idx].
	lastToken := lastIdx = aString size 
				ifTrue: [String new]
				ifFalse: [aString copyFrom: lastIdx + 1 to: aString size].
	result addLast: lastToken.
	^result! !

!SpStringUtilities class methodsFor: 'services' stamp: 'JM 4/25/2007 20:53'!
trimBlanksFrom: aString 
	"^a String
	I return a copy of aString with all leading and trailing blanks removed."

	| first last |
	first := 1.
	last := aString size.
	[last > 0 and: [(aString at: last) isSeparator]] 
		whileTrue: [last := last - 1].
	^last == 0 
		ifTrue: [String new]
		ifFalse: 
			[[first < last and: [(aString at: first) isSeparator]] 
				whileTrue: [first := first + 1].
			aString copyFrom: first to: last]! !

!SpTimestamp methodsFor: 'comparing' stamp: 'JM 4/26/2007 17:50'!
< aSpTimeStamp
	^self underlyingTimestamp < aSpTimeStamp underlyingTimestamp! !

!SpTimestamp methodsFor: 'comparing' stamp: 'JM 4/26/2007 17:50'!
= aSpTimeStamp
	^self underlyingTimestamp = aSpTimeStamp underlyingTimestamp! !

!SpTimestamp methodsFor: 'comparing' stamp: 'JM 4/26/2007 17:50'!
> aSpTimeStamp
	^self underlyingTimestamp > aSpTimeStamp underlyingTimestamp! !

!SpTimestamp methodsFor: 'converting' stamp: 'JM 4/18/2007 17:39'!
asDate
	^SpDate onDate: (self underlyingTimestamp asDate)! !

!SpTimestamp methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 18:56'!
asNowUTC
	"^self
	Cheat for now and assumen that Timestamp>>now is UTC."
	underlyingTimestamp := TimeStamp now.
	^self! !

!SpTimestamp methodsFor: 'converting' stamp: 'JM 4/14/2007 18:58'!
asRFC1123String	
	"^a String
	c.f  >>asRFC1123StringOn: "

	| targetStream |
	targetStream := String new writeStream.
	self asRFC1123StringOn: targetStream.
	^targetStream contents! !

!SpTimestamp methodsFor: 'converting' stamp: 'JM 4/14/2007 19:00'!
asRFC1123StringOn: targetStream 
	"^self
	Code taken from Swazoo Timestamp extenton with the following comment: FIXME: Assumes 
	server's clock is GMT. Should convert server's clock to GMT if it is not. Besides that, 
	this whole method is really ugly."
	targetStream nextPutAll: (self underlyingTimestamp asDate weekday copyFrom: 1 to: 3);
		nextPutAll: ', '.
	self underlyingTimestamp day < 10 ifTrue: [targetStream nextPut: $0].
	self underlyingTimestamp asDate printOn: targetStream format: #(1 2 3 $  2 1).	
	targetStream space.
	self underlyingTimestamp printHMSOn: targetStream.
	targetStream nextPutAll: ' GMT'! !

!SpTimestamp methodsFor: 'converting' stamp: 'JM 4/14/2007 19:00'!
asSeconds
	"^an Integer
	I return the timestamp as a number of seconds."
	^self underlyingTimestamp asSeconds! !

!SpTimestamp methodsFor: 'converting' stamp: 'JM 4/26/2007 15:43'!
asSpTimestamp
	^self! !

!SpTimestamp methodsFor: 'converting' stamp: 'JM 4/25/2007 21:27'!
asTime
	^self underlyingTimestamp asTime! !

!SpTimestamp methodsFor: 'initialize-release' stamp: 'JM 4/18/2007 16:39'!
fromDate: aDate andTime: aTime
	"^self
	Initialize myself on the basis of aDate and aTime."
	underlyingTimestamp := TimeStamp date: aDate time: aTime.
	^self! !

!SpTimestamp methodsFor: 'initialize-release' stamp: 'JM 4/14/2007 18:57'!
fromSeconds: anInteger 
	"^a SpTimestamp
	I return an instance of myself that represents anInteger number of seconds 
	since January 1, 1901 0:00:00.000.  BTW, negative values of anInteger are fine."
	
	underlyingTimestamp := TimeStamp fromSeconds: anInteger.
	^self! !

!SpTimestamp methodsFor: 'comparing' stamp: 'JM 4/14/2007 18:55'!
hash
	^self underlyingTimestamp hash! !

!SpTimestamp methodsFor: 'private' stamp: 'mivsek 8/17/2007 16:16'!
printString
	^self underlyingTimestamp printString! !

!SpTimestamp methodsFor: 'private' stamp: 'JM 4/14/2007 19:00'!
underlyingTimestamp
	^underlyingTimestamp! !

!SpTimestamp class methodsFor: 'instance creation' stamp: 'JM 4/18/2007 17:15'!
fromDate: aDate andTime: aTime 
	^self new fromDate: aDate andTime: aTime! !

!SpTimestamp class methodsFor: 'instance creation' stamp: 'JM 4/18/2007 17:17'!
fromRFC1123String: aString
	"^a SpTimestamp"
	| sourceStream dd mmm yyyy time |
	^SpExceptionContext for:
		[sourceStream := ReadStream on: aString.
		sourceStream upTo: Character space.
		dd := sourceStream upTo: Character space.
		mmm := sourceStream upTo: Character space.
		yyyy := sourceStream upTo: Character space.
		time := sourceStream upTo: Character space.
		self fromDate: (Date 
				newDay: dd asNumber
				month: mmm
				year: yyyy asNumber)
			andTime: (Time readFrom: (ReadStream on: time))]
		onAnyExceptionDo: 
			[:exception | 
				SpError raiseSignal: 'Error parsing RFC1123 date: ' , aString]! !

!SpTimestamp class methodsFor: 'instance creation' stamp: 'JM 4/18/2007 17:18'!
fromSeconds: anInteger
	"^a SpTimestamp
	I return an instance of myself that represents anInteger number of seconds since..."
	^self new fromSeconds: anInteger! !

!SpTimestamp class methodsFor: 'instance creation' stamp: 'JM 4/18/2007 17:20'!
fromTimeStamp: aTimeStamp
	"^a SpTimestamp, from a Squeak TimeStamp"
	^self fromDate: aTimeStamp asDate andTime: aTimeStamp asTime! !

!SpTimestamp class methodsFor: 'instance creation' stamp: 'JM 4/18/2007 17:18'!
now
	"^a SpTimestamp
	I return a new instance of myself which represents the time now in the
	UTC (GMT ish) time zone."
	^self new asNowUTC! !

!SpTranscript class methodsFor: 'logging' stamp: 'JM 4/14/2007 19:05'!
cr	
	^ SpEnvironment isHeadless
		ifTrue: [self]
		ifFalse: [Transcript cr]! !

!SpTranscript class methodsFor: 'logging' stamp: 'JM 4/14/2007 19:05'!
nextPut: anObject
	^self show: (String with: anObject)! !

!SpTranscript class methodsFor: 'logging' stamp: 'JM 4/14/2007 19:05'!
nextPutAll: aCollection 
	^self show: aCollection! !

!SpTranscript class methodsFor: 'logging' stamp: 'JM 4/14/2007 19:06'!
show: aString
	^ SpEnvironment isHeadless
		ifTrue: [self]
		ifFalse: [Transcript show: aString]! !

!SpWeakArray class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:04'!
new: anInteger
	"^a WeakArray
	I don't return an instance of myself, I return a real WeakArray."
	^WeakArray new: anInteger! !

!SpWeakArray class methodsFor: 'instance creation' stamp: 'JM 4/14/2007 19:04'!
withAll: aCollection 
	"^a WeakArray
	I don't return an instance of myself at all. I return a real Weak array."
	^ WeakArray withAll: aCollection asArray! !
SpEnvironment initialize!
