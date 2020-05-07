--Andrew Bland
--Abland4@asu.edu
/* 
** ----------------------------------------------------------------------------
** create the student table 
** --------------------------------------------------------------------------*/

CREATE TABLE student (
	stID				VARCHAR(10)		PRIMARY KEY,
	fName				VARCHAR(20)		NOT NULL,		
	lName				VARCHAR(20)		NOT NULL,
	numberOfPayments	NUMBER			NOT NULL CHECK(numberOfPayments >= 0),
	balance	 			FLOAT			NOT NULL,
	stYear				VARCHAR(10)		NOT NULL CHECK (stYear = 'Freshman' OR stYear = 'Sophomore' OR stYear = 'Junior' OR stYear = 'Senior'),
	lastPayment			DATE			NOT NULL CHECK (lastPayment <= CURRENT_DATE ),
	paymentFrequency	VARCHAR(20)		NOT NULL CHECK (paymentFrequency = 'weekly' OR paymentFrequency = 'monthly' OR paymentFrequency = 'Quarterly' OR paymentFrequency = 'Annually')
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** add foreign key for the student table 
** --------------------------------------------------------------------------*/
ALTER TABLE student
	ADD (FOREIGN KEY (superstID) REFERENCES student(stID) ON DELETE SET NULL);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the club table 
** --------------------------------------------------------------------------*/

CREATE TABLE club (
	clubName			VARCHAR(20) PRIMARY KEY,
	fee					INTEGER		 NOT NULL,
	numberOfMembers		NUMBER		 NOT NULL,
	clubType			VARCHAR(20)	 NOT NULL CHECK(clubType = 'Athletic' OR clubType = 'Academic' OR clubType = 'Volunteer' OR clubType = 'Hobby' OR clubType = 'Special Interest' OR clubType = 'Other')
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create club creation table 
** --------------------------------------------------------------------------*/
CREATE TABLE creation (
	stID		VARCHAR(10) NOT NULL,
	clubName	VARCHAR(20) NOT NULL,
	FOREIGN KEY (stID) REFERENCES student(stID)
);
SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** script to create the event table 
** --------------------------------------------------------------------------*/

CREATE TABLE event (
	eventID				VARCHAR(20) PRIMARY KEY,
	eventDescription	TEXT NOT NULL,
	eventDuration		NUMBER NOT NULL CHECK(eventDuration > 0),
	eventLocation		TEXT NOT NULL,
	eventSubject		TEXT NOT NULL,
	eventTime			TIME NOT NULL,
	eventDate			DATE NOT NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the meeting table 
** --------------------------------------------------------------------------*/

CREATE TABLE meeting (
	meetingID			VARCHAR(20) PRIMARY KEY,
	mtgDescription		TEXT NOT NULL,
	mtgDuration			NUMBER NOT NULL CHECK(mtgDuration > 0),
	mtgLocation			TEXT NOT NULL,
	mtgSubject			TEXT NOT NULL,
	mtgTime				TIME NOT NULL,
	mtgDate				DATE NOT NULL
);
SHOW ERRORS;
/*
** ----------------------------------------------------------------------------
** script to create the hostsEvent table 
** --------------------------------------------------------------------------*/

CREATE TABLE hostsEvent (
	clubName	VARCHAR(20) NOT NULL,
	eventID		VARCHAR(20) PRIMARY KEY,
	FOREIGN KEY (clubName) REFERENCES club(clubName)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the hostsMeeting table 
** --------------------------------------------------------------------------*/

CREATE TABLE hostsMeeting (
	clubName		VARCHAR(20) NOT NULL,
	meetingID		NUMBER PRIMARY KEY,
	FOREIGN KEY (clubName) REFERENCES club(clubName)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the memberOf table 
** --------------------------------------------------------------------------*/

CREATE TABLE memberOf (
	stID		VARCHAR(10) NOT NULL,
	clubName	VARCHAR2(20) NOT NULL,
	FOREIGN KEY (stID) REFERENCES student(stID)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the pays table 
** --------------------------------------------------------------------------*/

CREATE TABLE pays (
	pmtID		VARCHAR(10) PRIMARY KEY,
	stID		VARCHAR(10) NOT NULL,
	clubName	VARCHAR(20) NOT NULL,
	amount		NUMBER NOT NULL CHECK (amount >= 0),
	payDate		DATE NOT NULL CHECK (payDate <= CURRENT_DATE),
	FOREIGN KEY (stID) REFERENCES student(stID)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the president table 
** --------------------------------------------------------------------------*/

CREATE TABLE president (
	stID		VARCHAR(10) NOT NULL,
	clubName	VARCHAR(20) NOT NULL,
	FOREIGN KEY (clubName) REFERENCES club(clubName)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the vicePresident table 
** --------------------------------------------------------------------------*/

CREATE TABLE vicePresident (
	stID		VARCHAR(10) NOT NULL,
	clubName	VARCHAR(20) NOT NULL,
	FOREIGN KEY (clubName) REFERENCES club(clubName)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the attends table 
** --------------------------------------------------------------------------*/

CREATE TABLE attends (
	stID		VARCHAR(10) NOT NULL,
	eventID		VARCHAR(20) NOT NULL,
);
SHOW ERRORS;