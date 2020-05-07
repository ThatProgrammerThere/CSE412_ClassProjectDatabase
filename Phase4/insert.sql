--Andrew Bland
--Abland4@asu.edu
/*
** ----------------------------------------------------------------------------
** script to insert data into the student table
** Schema: (stID, fName, lName, numberOfPayments, balance, styear, lastPayment, paymentFrequency
** --------------------------------------------------------------------------*/
INSERT INTO student VALUES('1','Andrew','Bland',2,25,'Senior','8/22/2019','Quarterly');
INSERT INTO student VALUES('2','John','Smith',1,15,'Sophomore','10/15/2019','monthly');
INSERT INTO student VALUES('3','Scuba','Steve',10,0,'Junior','9/19/2019','Annually');
INSERT INTO student VALUES('4','Alexia','Camino',1,5,'Freshman','11/5/2019','Weekly');
/*
** ----------------------------------------------------------------------------
** update balance in the student table 
** --------------------------------------------------------------------------*/
UPDATE student SET balance = 25 WHERE balance = 5;
UPDATE student SET balance = 35 WHERE balance = 15;

/*
** ----------------------------------------------------------------------------
** script to insert data into the attends table
** Schema: (stID, eventID)
** --------------------------------------------------------------------------*/
INSERT INTO attends VALUES('1','1');
INSERT INTO attends VALUES('1','3');
INSERT INTO attends VALUES('2','1');
INSERT INTO attends VALUES('3','4');
INSERT INTO attends VALUES('2','4');
/*
** ----------------------------------------------------------------------------
** update eventID in the student table 
** --------------------------------------------------------------------------*/
UPDATE attends SET eventID = 2 WHERE eventID = 1;
UPDATE attends SET eventID = 1 WHERE eventID = 3;

/*
** ----------------------------------------------------------------------------
** script to insert data into the club table
** --------------------------------------------------------------------------*/
INSERT INTO club VALUES('SDMC',50,1,'Hobby');
INSERT INTO club VALUES('SDCC',25,0,'Academic');
INSERT INTO club VALUES('SDRC',75,1,'Special Interest');
INSERT INTO club VALUES('SDOC',10,0,'Volunteer');
/*
** ----------------------------------------------------------------------------
** update members in the Club table 
** --------------------------------------------------------------------------*/
UPDATE club SET numberOfMembers = 2 WHERE balance = 0;
UPDATE club SET numberOfMembers = 1 WHERE balance = 1;

/*
** ----------------------------------------------------------------------------
** script to insert data into the creation table
** --------------------------------------------------------------------------*/
INSERT INTO creation VALUES('1','SDRC');
INSERT INTO creation VALUES('2','SDCC');
INSERT INTO creation VALUES('0','SDMC');
INSERT INTO creation VALUES('5','SDOC');

/*
** ----------------------------------------------------------------------------
** update stID in the creation table 
** --------------------------------------------------------------------------*/
UPDATE creation SET stID = '3' WHERE stID = '0';
UPDATE creation SET stID = '4' WHERE stID = '5';

/*
** ----------------------------------------------------------------------------
** script to insert data into the event table
** --------------------------------------------------------------------------*/
INSERT INTO event VALUES('1','Open Mic',2,'Mesa','Open Mic','6:30 PM','11/1/2019');
INSERT INTO event VALUES('2','build demo',2,'Phoenix','build demo','4:30 PM','11/5/2019');
INSERT INTO event VALUES('3','software demo',2,'Tempe','software demo','5:30 PM','9/18/2019');
INSERT INTO event VALUES('4','concert',2,'Scottsdale','Concert','3:30 PM','10/11/2019');
/*
** ----------------------------------------------------------------------------
** update eventLocation in the event table 
** --------------------------------------------------------------------------*/
UPDATE event SET eventLocation = 'Glendale' WHERE eventLocation = 'Phoenix';
UPDATE event SET eventLocation = 'ASU' WHERE eventLocation = 'Tempe';

/*
** ----------------------------------------------------------------------------
** script to insert data into the meeting table
** --------------------------------------------------------------------------*/
INSERT INTO meeting VALUES('1','startup',2,'Mesa','Open Mic','6:30 PM','11/1/2019');
INSERT INTO meeting VALUES('2','startup',2,'Phoenix','build demo','4:30 PM','11/5/2019');
INSERT INTO meeting VALUES('3','meeting 2',2,'Tempe','software demo','5:30 PM','9/18/2019');
INSERT INTO meeting VALUES('4','meeting 2',2,'Scottsdale','Concert','3:30 PM','10/11/2019');
/*/*
** ----------------------------------------------------------------------------
** update location in the meeting table 
** --------------------------------------------------------------------------*/
UPDATE meeting SET mtgLocation = 'Mesa' WHERE mtgLocation = 'Phoenix';
UPDATE meeting SET mtgLocation = 'Tempe' WHERE mtgLocation = 'Scottsdale';

/*
** ----------------------------------------------------------------------------
** script to insert data into the hostsEvent table
** --------------------------------------------------------------------------*/
INSERT INTO hostsEvent VALUES('NONE','1');
INSERT INTO hostsEvent VALUES('NADA','2');
INSERT INTO hostsEvent VALUES('SDRC','3');
INSERT INTO hostsEvent VALUES('SDMC','4');
/*
** ----------------------------------------------------------------------------
** update clubName in the hostsEvent table 
** --------------------------------------------------------------------------*/
UPDATE hostsEvent SET clubName = 'SDCC' WHERE clubName = 'NONE';
UPDATE hostsEvent SET clubName = 'SDOC' WHERE clubName = 'NADA';


/*
** ----------------------------------------------------------------------------
** script to insert data into the hostsMeeting table
** --------------------------------------------------------------------------*/
INSERT INTO hostsMeeting VALUES('NONE','1');
INSERT INTO hostsMeeting VALUES('NADA','2');
INSERT INTO hostsMeeting VALUES('SDRC','3');
INSERT INTO hostsMeeting VALUES('SDMC','4');
/*
** ----------------------------------------------------------------------------
** update clubName in the hostsMeeting table 
** --------------------------------------------------------------------------*/
UPDATE hostsMeeting SET clubName = 'SDCC' WHERE clubName = 'NONE';
UPDATE hostsMeeting SET clubName = 'SDOC' WHERE clubName = 'NADA';



/*
** ----------------------------------------------------------------------------
** script to insert data into the memberOf table
** --------------------------------------------------------------------------*/
INSERT INTO memberOf VALUES('1','SDMC');
INSERT INTO memberOf VALUES('2','SDRC');
INSERT INTO memberOf VALUES('3','NADA');
INSERT INTO memberOf VALUES('4','NONE');
/*
** ----------------------------------------------------------------------------
** update clubName in the memberOf table 
** --------------------------------------------------------------------------*/
UPDATE memberOf SET clubName = 'SDCC' WHERE clubName = 'NONE';
UPDATE memberOf SET clubName = 'SDOC' WHERE clubName = 'NADA';


/*
** ----------------------------------------------------------------------------
** script to insert data into the President table
** --------------------------------------------------------------------------*/
INSERT INTO President VALUES('1','SDMC');
INSERT INTO President VALUES('3','SDRC');
INSERT INTO President VALUES('2','NONE');
INSERT INTO President VALUES('4','NADA');
/*
** ----------------------------------------------------------------------------
** update clubName in the President table 
** --------------------------------------------------------------------------*/
UPDATE President SET clubName = 'SDCC' WHERE clubName = 'NONE';
UPDATE President SET clubName = 'SDOC' WHERE clubName = 'NADA';

/*
** ----------------------------------------------------------------------------
** Script to insert data into the Vice President table 
** --------------------------------------------------------------------------*/
INSERT INTO vicePresident VALUES('2','SDMC');
INSERT INTO vicePresident VALUES('4','SDRC');
INSERT INTO vicePresident VALUES('1','NONE');
INSERT INTO vicePresident VALUES('3','NADA');
/*
** ----------------------------------------------------------------------------
** update clubName in the Vice President table 
** --------------------------------------------------------------------------*/
UPDATE vicePresident SET clubName = 'SDCC' WHERE clubName = 'NONE';
UPDATE vicePresident SET clubName = 'SDOC' WHERE clubName = 'NADA';



/*
** ----------------------------------------------------------------------------
** Script to insert data into the Pays table 
** --------------------------------------------------------------------------*/
INSERT INTO pays VALUES('1','1','SDRC',10,'8/22/2019');
INSERT INTO pays VALUES('2','2','SDMC',0,'10/17/2019');
INSERT INTO pays VALUES('3','3','SDCC',10,'11/2/2019');
INSERT INTO pays VALUES('4','4','SDOC',0,'9/12/2019');
/*
** ----------------------------------------------------------------------------
** update amount in the Pays table 
** --------------------------------------------------------------------------*/
UPDATE pays set amount = 20 where amount = 0;
UPDATE pays set amount = 20 where amount = 10;
















