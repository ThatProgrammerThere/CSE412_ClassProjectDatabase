--Andrew Bland
--Abland4@asu.edu
/*
** ----------------------------------------------------------------------------
** script to drop all objects in the database
** --------------------------------------------------------------------------*/

-- Tables 
DROP TABLE student CASCADE CONSTRAINTS purge;
DROP TABLE club purge;
DROP TABLE event purge;
DROP TABLE meeting purge;
DROP TABLE hostsEvent purge;
DROP TABLE hostsMeeting purge;
DROP TABLE memberOf purge;
DROP TABLE creation purge;
DROP TABLE pays purge;
DROP TABLE president purge;
DROP TABLE vicePresident purge;
DROP TABLE attends purge;
-- Views for query
DROP VIEW clubType;
DROP VIEW studentLeadership;
DROP VIEW outstandingBalance;


