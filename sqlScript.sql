CREATE DATABASE HRM;
use HRM;
CREATE TABLE BusStops(BusStopID varchar(255), Location varchar(255), StopNumber varchar(255), accessiblity varchar(255));
show databases;
show tables;
select * from busstops;
create table BusRoutes(Title varchar(255), routeNum int, class varchar(255));
select * from BusRoutes;
select * from bus_routes;
drop table BusRoutes;
create table BikeInfrastructureAndSuggestedRoutes(bikefacilityid varchar(255),  bikefacilitytype varchar(255), bikefacilityname varchar(255), streetname varchar(255));
select * from BikeInfrastructureAndSuggestedRoutes;
ALTER TABLE busstops
ADD src varchar(255);
select * from busstops;
select src from busstops;
ALTER TABLE bus_routes
ADD src varchar(255);
select * from bus_routes;
ALTER TABLE bus_routes DROP COLUMN TITLE;
select * from bus_routes;
ALTER TABLE bus_routes DROP COLUMN TITLE;
select * from BikeInfrastructureAndSuggestedRoutes;
ALTER TABLE BikeInfrastructureAndSuggestedRoutes DROP COLUMN streetname;
ALTER TABLE BikeInfrastructureAndSuggestedRoutes
ADD Location varchar(255);
create table location_details( Location varchar(255), Locationid int);
select * from location_details;
create table sideWalkClosuresAndDisrruptions(startDate date, EndDate date, permitNo int, Location varchar(255));
create table streetClosures(startDate date, EndDate date, closureType varchar(255), Location varchar(255));
 drop table streetClosures;
 create table streetClosures(startDate date, EndDate date, closureType varchar(255), Location varchar(255), permitNo int);
 select * from streetClosures;
 desc streetClosures;
  create table streetClosures(closureType varchar(255), Location varchar(255), permitNo int);
  create table streetNameRoutes(Location varchar(255), strCodeL int, strCodeR int);
select * from streetNameRoutes;
create table crime(evtRin int, location varchar(255), rucr int);
select * from crime;
create table earlyChildhoodEducationSupportSites(Location varchar(255),civicAddress varchar(255), city varchar(255), province varchar(255), postalCode varchar(255));
select * from earlyChildhoodEducationSupportSites;
create table earlyChildhoodEducationTrainingInstitution(institution varchar(255), credential varchar(255),civicAddress varchar(255), city varchar(255), province varchar(255),postalCode varchar(255));
select * from  earlyChildhoodEducationTrainingInstitution;
create table schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board varchar(255), hub varchar(255), schoolName varchar(255),civicAddress1 varchar(255), address varchar(255), city varchar(255), province varchar(255), postalCode varchar(255));
select * from schoolPlusSitesIncludingHubSitesAndSchoolsByHub;
create table novaScotiaPublicSchoolContactInfo(board varchar(255), schoolName varchar(255), mailingAddressLine1 varchar(255), mailingAddressLine2 varchar(255), mailingPostalCode varchar(255), civicAddress1 varchar(255), civicAddress2 varchar(255), civicPostalCode varchar(255));
select * from novaScotiaPublicSchoolContactInfo;
create table cooperatives(coopName varchar(255),address varchar(255), city varchar(255), province varchar(255),postalCode varchar(255),profitOrNonProfit varchar(255),TypeOfCoop varchar(255));
select * from cooperatives;
create table skilledTradeCentre(board varchar(255),tradeCentreSchool varchar(255),mailingAddress varchar(255),province varchar(255),postalCode varchar(255),civicAddress varchar(255));
select * from skilledTradeCentre;
create table businessEstablishments2007(geogName varchar(255), dataGroup varchar(255),datagroupOrder int,totalEmployees int);
select * from businessEstablishments2007;
create table businessEstablishments2010(geogName varchar(255), dataGroup varchar(255),datagroupOrder int,totalEmployees int);
select * from businessEstablishments2010;
select distinct(board) as boardNames from novaScotiaPublicSchoolContactInfo;
create table boardDetails(board varchar(255), boardID int AUTO_INCREMENT, PRIMARY KEY(boardID));
ALTER TABLE novaScotiaPublicSchoolContactInfo
ADD  boardID int;
select * from boardDetails;
insert into boardDetails values("CAPE BRETON-VICTORIA REGIONAL CENTRE FOR EDUCATION");
desc boardDetails;
INSERT INTO  boardDetails(board)
VALUES ("CAPE BRETON-VICTORIA REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
VALUES ("STRAIT REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
VALUES ("CHIGNECTO-CENTRAL REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
VALUES ("HALIFAX REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
values("ANNAPOLIS VALLEY REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
values("CONSEIL SCOLAIRE ACADIEN PROVINCIAL");
INSERT INTO  boardDetails(board)
values("SOUTH SHORE REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
values("TRI-COUNTY REGIONALCENTRE FOR EDUCATION");
INSERT INTO  boardDetails(board)
values("Cape Breton Victoria Regional Centre for Education");
INSERT INTO  boardDetails(board)
values("Chignecto Central Regional Centre for Education");
INSERT INTO  boardDetails(board)
values("Tri-County Regional Centre for Education");
select board from novaScotiaPublicSchoolContactInfo, boardDetails where boardDetails.boardName 
SELECT board
FROM   novaScotiaPublicSchoolContactInfo
WHERE  NOT EXISTS (SELECT board
                   FROM   boardDetails
                   WHERE   boardDetails.board = novaScotiaPublicSchoolContactInfo.board);
SELECT distinct( novaScotiaPublicSchoolContactInfo
WHERE board NOT IN (select board from boardDetails);
select distinct board from novaScotiaPublicSchoolContactInfo WHERE board NOT IN (select board from boardDetails);
INSERT INTO  boardDetails(board)
values("Chignecto Central Regional Centre for Education");
ALTER TABLE novaScotiaPublicSchoolContactInfo
ADD boardID int;
SELECT boardDetails.board
FROM boardDetails
INNER JOIN novaScotiaPublicSchoolContactInfo on boardDetails.board= novaScotiaPublicSchoolContactInfo.board;
SET SQL_SAFE_UPDATES=0;
UPDATE hrm.novaScotiaPublicSchoolContactInfo
SET novaScotiaPublicSchoolContactInfo.boardID=(select boardDetails.boardID from boardDetails
WHERE novaScotiaPublicSchoolContactInfo.board=boardDetails.board);
select * from  novaScotiaPublicSchoolContactInfo;
SELECT boardDetails.boardID
FROM boardDetails
INNER JOIN novaScotiaPublicSchoolContactInfo on boardDetails.boardID= novaScotiaPublicSchoolContactInfo.boardID;
 desc novaScotiaPublicSchoolContactInfo;
 select * from schoolPlusSitesIncludingHubSitesAndSchoolsByHub;
 ALTER TABLE schoolPlusSitesIncludingHubSitesAndSchoolsByHub
ADD  boardID int;
 INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
VALUES ("CAPE BRETON-VICTORIA REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
VALUES ("STRAIT REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
VALUES ("CHIGNECTO-CENTRAL REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
VALUES ("HALIFAX REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("ANNAPOLIS VALLEY REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("CONSEIL SCOLAIRE ACADIEN PROVINCIAL");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("SOUTH SHORE REGIONAL CENTRE FOR EDUCATION");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("TRI-COUNTY REGIONALCENTRE FOR EDUCATION");
INSERT INTO schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("Cape Breton Victoria Regional Centre for Education");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("Chignecto Central Regional Centre for Education");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("Tri-County Regional Centre for Education");
INSERT INTO  schoolPlusSitesIncludingHubSitesAndSchoolsByHub(board)
values("Chignecto Central Regional Centre for Education");
SELECT boardDetails.board
FROM boardDetails
INNER JOIN schoolPlusSitesIncludingHubSitesAndSchoolsByHub on boardDetails.board= schoolPlusSitesIncludingHubSitesAndSchoolsByHub.board;
UPDATE hrm.schoolPlusSitesIncludingHubSitesAndSchoolsByHub
SET schoolPlusSitesIncludingHubSitesAndSchoolsByHub.boardID=(select boardDetails.boardID from boardDetails
WHERE schoolPlusSitesIncludingHubSitesAndSchoolsByHub.board=boardDetails.board);
SELECT schoolPlusSitesIncludingHubSitesAndSchoolsByHub.board
FROM schoolPlusSitesIncludingHubSitesAndSchoolsByHub
INNER JOIN boardDetails on boardDetails.boardID= schoolPlusSitesIncludingHubSitesAndSchoolsByHub.boardID;
create table cityDetails( city varchar(255), cityId int AUTO_INCREMENT, PRIMARY KEY(cityID));
select distinct(city) from earlyChildhoodEducationTrainingInstitution;
INSERT INTO  cityDetails(city)
values("Truro");
select * from cityDetails;
INSERT INTO  cityDetails(city)
values("Church Point");
INSERT INTO  cityDetails(city)
values("Halifax");
INSERT INTO  cityDetails(city)
values("Kentville");
INSERT INTO  cityDetails(city)
values("Springhill");
INSERT INTO  cityDetails(city)
values("Yarmouth");
INSERT INTO  cityDetails(city)
values("Dartmouth");
INSERT INTO  cityDetails(city)
values("Baddeck");
INSERT INTO  cityDetails(city)
values("Shelburne");
INSERT INTO  cityDetails(city)
values("Sydney");
Alter table earlyChildhoodEducationTrainingInstitution
add cityId int;
select * from earlyChildhoodEducationTrainingInstitution;
Alter table earlyChildhoodEducationSupportSites
add cityId int;
SELECT cityDetails.city
FROM cityDetails
INNER JOIN earlyChildhoodEducationSupportSites on cityDetails.city= earlyChildhoodEducationSupportSites.city;
UPDATE hrm.earlyChildhoodEducationSupportSites
SET earlyChildhoodEducationSupportSites.cityId=(select cityDetails.cityId from cityDetails
WHERE earlyChildhoodEducationSupportSites.city=cityDetails.city);
select * from earlyChildhoodEducationSupportSites;
Alter table schoolPlusSitesIncludingHubSitesAndSchoolsByHub
add cityId int;
SELECT schoolPlusSitesIncludingHubSitesAndSchoolsByHub.city
FROM cityDetails
INNER JOIN schoolPlusSitesIncludingHubSitesAndSchoolsByHub on cityDetails.city= schoolPlusSitesIncludingHubSitesAndSchoolsByHub.city;
UPDATE hrm.schoolPlusSitesIncludingHubSitesAndSchoolsByHub
SET schoolPlusSitesIncludingHubSitesAndSchoolsByHub.cityId=(select cityDetails.cityId from cityDetails
WHERE schoolPlusSitesIncludingHubSitesAndSchoolsByHub.city=cityDetails.city);
select * from schoolPlusSitesIncludingHubSitesAndSchoolsByHub;
Alter table cooperatives
add cityId int;
SELECT cooperatives.city
FROM cityDetails
INNER JOIN cooperatives on cityDetails.city= cooperatives.city;
UPDATE hrm.cooperatives
SET cooperatives.cityId=(select cityDetails.cityId from cityDetails
WHERE cooperatives.city=cityDetails.city);
select * from cooperatives;
Alter table skilledTradeCentre
add boardID int;
SELECT skilledTradeCentre.board
FROM boarddetails
INNER JOIN skilledTradeCentre on boarddetails.board= skilledTradeCentre.board;
UPDATE hrm.skilledTradeCentre
SET skilledTradeCentre.boardID=(select boarddetails.boardID from boarddetails
WHERE skilledTradeCentre.board=boarddetails.board);
select * from skilledTradeCentre;
select distinct(dataGroup) from businessEstablishments2010;
create table businessOrganizationType(businessType varchar(255), typeID int);
drop table businessOrganizationType;
create table businessOrganizationType(businessType varchar(255), typeID int AUTO_INCREMENT, PRIMARY KEY(typeID));
INSERT INTO businessOrganizationType(businessType)
values("Retail Trade");
INSERT INTO businessOrganizationType(businessType)
values("All Industries");
INSERT INTO businessOrganizationType(businessType)
values("Agriculture, Forestry, Fishing and Hunting");
INSERT INTO businessOrganizationType(businessType)
values("Construction");
INSERT INTO businessOrganizationType(businessType)
 values("Mining, Quarrying, and Oil and Gas Extraction");
 INSERT INTO businessOrganizationType(businessType)
values(" Utilities");
 INSERT INTO businessOrganizationType(businessType)
values("Manufacturing");
 INSERT INTO businessOrganizationType(businessType)
values("Wholesale Trade");
 INSERT INTO businessOrganizationType(businessType)
values("Finance and Insurance");
 INSERT INTO businessOrganizationType(businessType)
values("Transportation and Warehousing");
 INSERT INTO businessOrganizationType(businessType)
values("Public Administration");
 INSERT INTO businessOrganizationType(businessType)
values("Information and Cultural Industries");
 INSERT INTO businessOrganizationType(businessType)
values("Real Estate, Rental and Leasing");
INSERT INTO businessOrganizationType(businessType)
values("Professional, Scientific and Technical Services");
INSERT INTO businessOrganizationType(businessType)
values("Management of Companies and Enterprises");
INSERT INTO businessOrganizationType(businessType)
values("Educational Services");
INSERT INTO businessOrganizationType(businessType)
values("56 - Administrative and Support, Waste Management and Remediati");
INSERT INTO businessOrganizationType(businessType)
values("Health Care and Social Assistance");
INSERT INTO businessOrganizationType(businessType)
values("Arts, Entertainment and Recreation");
INSERT INTO businessOrganizationType(businessType)
values("Accommodation and Food Services");
INSERT INTO businessOrganizationType(businessType)
values("Other Services (except Public Administration");
select * from businessOrganizationType;
select * from businessEstablishments2010;
Alter table businessEstablishments2010
add typeID int;
SELECT businessEstablishments2010.dataGroup
FROM businessOrganizationType
INNER JOIN businessEstablishments2010 on businessOrganizationType.businessType= businessEstablishments2010.dataGroup;
UPDATE hrm.businessEstablishments2010
SET businessEstablishments2010.typeID=(select businessOrganizationType.typeID from businessOrganizationType
WHERE businessEstablishments2010.dataGroup=businessOrganizationType.businessType);
select distinct(location) from crime;
select distinct Location from streetnameroutes WHERE Location NOT IN (select Location from streetclosures);
select * from bus_routes;
create table transitAutomatedPassengerCount(routeNum int,routeName varchar(255),ridershipTotal int);
drop table transitAutomatedPassengerCount;
select * from transitAutomatedPassengerCount;
select distinct(location) from crime;
select * from busstops;
desc schoolPlusSitesIncludingHubSitesAndSchoolsByHub;
ALTER TABLE  schoolPlusSitesIncludingHubSitesAndSchoolsByHub
DROP FOREIGN KEY boardID;
Alter table businessEstablishments2007
add typeID int;
SELECT businessEstablishments2007.dataGroup
FROM businessOrganizationType
INNER JOIN businessEstablishments2007 on businessOrganizationType.businessType= businessEstablishments2007.dataGroup;
UPDATE hrm.businessEstablishments2007
SET businessEstablishments2007.typeID=(select businessOrganizationType.typeID from businessOrganizationType
WHERE businessEstablishments2007.dataGroup=businessOrganizationType.businessType);

SELECT dataGroup , COUNT(dataGroup) 
FROM businessEstablishments2010  GROUP BY dataGroup
HAVING COUNT(dataGroup)=( 
SELECT MAX(maxOrganization.mo) 
FROM ( 
SELECT dataGroup, COUNT(dataGroup) as mo
FROM businessEstablishments2010
GROUP BY dataGroup)as maxOrganization);

SELECT civicAddress1 , COUNT(civicAddress1) 
FROM schoolPlusSitesIncludingHubSitesAndSchoolsByHub where city="HALIFAX" GROUP BY civicAddress1
HAVING COUNT(civicAddress1)=( 
SELECT MAX(maxSchool.ms) 
FROM ( 
SELECT civicAddress1, COUNT(civicAddress1) as ms 
FROM schoolPlusSitesIncludingHubSitesAndSchoolsByHub where city="HALIFAX"
GROUP BY civicAddress1)as maxSchool);


SELECT location , COUNT(location) 
FROM crime  GROUP BY location
HAVING COUNT(location)=( 
SELECT MAX(maxCrime.mc) 
FROM ( 
SELECT location, COUNT(location) as mc
FROM crime
GROUP BY location)as maxCrime);
select * from boarddetails;
select * from crime;
select * from novascotiapublicschoolcontactinfo;
select board, schoolName, boardID, mailingAddressLine1, mailingAddressLine2, mailingPostalCode from novascotiapublicschoolcontactinfo;

