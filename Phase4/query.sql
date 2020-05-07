--Andrew Bland
--Abland4@asu.edu
/*
** ----------------------------------------------------------------------------
** Retrieve information of each club & its club type
** --------------------------------------------------------------------------*/
CREATE OR REPLACE VIEW clubInfo AS
SELECT clubType, clubName, fee, numberOfMembers
FROM club;

/*
** ----------------------------------------------------------------------------
** Student Leadership
** Retrieve information for each student who is an officer for a club
** --------------------------------------------------------------------------*/
CREATE OR REPLACE VIEW studentLeadership AS
SELECT S.stID, S.fName, S.lName, S.stYear
FROM Student S
WHERE exists (SELECT *
                       From President P
                       Where S.stID = P.stID)
Or exists (SELECT *
                   FROM Vice President V
                   Where S.stID = V.stID);

/*
** ----------------------------------------------------------------------------
**  Outstanding Balance
**	Get info of all students with outstanding balances
** --------------------------------------------------------------------------*/
CREATE OR REPLACE VIEW outstandingBalance AS
SELECT stID, fName, lName, lastPayment, balance
FROM Student
WHERE (balance > 0);