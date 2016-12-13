USE FRA_Trespass_Safety
GO

IF Object_ID('allTrespass032813') is not NULL DROP TABLE allTrespass032813
IF Object_ID('gxIncJoin') is not NULL DROP TABLE gxIncJoin
IF Object_ID('APT_ZONEINFO_HISTORY') is not NULL DROP TABLE APT_ZONEINFO_HISTORY


--THESE FIELDS NEED TO BE ADDED BECAUSE THEY ARE DUPLICATE FIELD NAMES AMONG THE TABLES
--ALTER TABLE gxALL ADD CROSSING2 NVARCHAR (7)
--UPDATE gxALL SET CROSSING2 = CROSSING
--ALTER TABLE Highway_Rail_Accidents ADD DAY2 smalldatetime
--UPDATE Highway_Rail_Accidents SET DAY2 = DAY

CREATE TABLE [dbo].[allTrespass032813](
	[IYR] [nvarchar](2) NULL,
	[IMO] [nvarchar](2) NULL,
	[RAILROAD] [nvarchar](4) NULL,
	[INCDTNO] [nvarchar](10) NULL,
	[TYPPERS] [nvarchar](1) NULL,
	[JOBCODE] [nvarchar](3) NULL,
	[NATINJ] [nvarchar](2) NULL,
	[LOCATION] [nvarchar](1) NULL,
	[IFATAL] [nvarchar](1) NULL,
	[OCCODE] [nvarchar](3) NULL,
	[TCODE] [nvarchar](1) NULL,
	[AGE] [nvarchar](2) NULL,
	[DAYSABS] [float] NULL,
	[DAYSRES] [float] NULL,
	[DUMMY] [nvarchar](1) NULL,
	[STATE] [nvarchar](2) NULL,
	[TYPRR] [nvarchar](2) NULL,
	[DUMMY1] [nvarchar](4) NULL,
	[REGION] [nvarchar](1) NULL,
	[DUMMY2] [nvarchar](1) NULL,
	[NARRLEN] [float] NULL,
	[CASFATAL] [nvarchar](1) NULL,
	[CAS57] [nvarchar](1) NULL,
	[CAS54] [nvarchar](1) NULL,
	[DUMMY3] [nvarchar](1) NULL,
	[DAY] [nvarchar](2) NULL,
	[DAY2] [nvarchar](2) NULL,
	[YEAR4] [nvarchar](4) NULL,
	[TIMEHR] [float] NULL,
	[TIMEMIN] [float] NULL,
	[AMPM] [nvarchar](2) NULL,
	[COUNTY] [nvarchar](20) NULL,
	[CNTYCD] [nvarchar](3) NULL,
	[STCNTY] [nvarchar](6) NULL,
	[ALCOHOL] [nvarchar](2) NULL,
	[DRUG] [nvarchar](2) NULL,
	[PHYACT] [nvarchar](2) NULL,
	[LOCA] [nvarchar](2) NULL,
	[LOCB] [nvarchar](2) NULL,
	[LOCC] [nvarchar](2) NULL,
	[EVENT] [nvarchar](2) NULL,
	[TOOLS] [nvarchar](2) NULL,
	[INJCAUS] [nvarchar](2) NULL,
	[HZMEXPOS] [nvarchar](1) NULL,
	[TERMINAT] [nvarchar](1) NULL,
	[NARR1] [nvarchar](100) NULL,
	[NARR2] [nvarchar](100) NULL,
	[NARR3] [nvarchar](100) NULL,
	[COVERDATA] [nvarchar](1) NULL,
	[LATITUDE] [float] NULL,
	[LONGITUD] [float] NULL,
	[CTFIPS][NVARCHAR] (6) NULL,
	[centroidX] [FLOAT]  NULL,
	[centroidY] [FLOAT] NULL,
	[AMTRAK] [nvarchar](1) NULL,
	[IYR2][nvarchar](2) NULL,
	[IMO2][nvarchar](2) NULL,
	[RR2][nvarchar](4) NULL,
	[INCDTNO2][nvarchar](10) NULL,
	[IYR3][nvarchar](2) NULL,
	[IMO3][nvarchar](2) NULL,
	[RR3][nvarchar](4) NULL,
	[INCDTNO3][nvarchar](10) NULL,
	[CASINJRR][float] NULL,
	[GXID][nvarchar](7) NULL,
	[YEAR][nvarchar](2) NULL,
	[MONTH][nvarchar](2) NULL,
	[STATION][nvarchar](20) NULL,
	[CITY][nvarchar](20) NULL,
	[HIGHWAY][nvarchar](20) NULL,
	[VEHSPD][nvarchar](3) NULL,
	[TYPVEH][nvarchar](1) NULL,
	[VEHDIR][nvarchar](1) NULL,
	[POSITION][nvarchar](1) NULL,
	[RREQUIP][nvarchar](1) NULL,
	[RRCAR][nvarchar](3) NULL,
	[TYPACC][nvarchar](1) NULL,
	[HAZARD][nvarchar](1) NULL,
	[TEMP][float] NULL,
	[VISIBLTY][nvarchar](1) NULL,
	[WEATHER][nvarchar](1) NULL,
	[TYPEQ][nvarchar](1) NULL,
	[TYPTRK][nvarchar](1) NULL,
	[TRKNAME][nvarchar](20) NULL,
	[TRKCLAS][nvarchar](1) NULL,
	[NBRLOCOS][float] NULL,
	[NBRCARS][float] NULL,
	[TRNSPD][nvarchar](3) NULL,
	[TYPSPD][nvarchar](1) NULL,
	[TRNDIR][nvarchar](1) NULL,
	[SIGNAL][nvarchar](1) NULL,
	[LOCWARN][nvarchar](1) NULL,
	[WARNSIG][nvarchar](1) NULL,
	[LIGHTS][nvarchar](1) NULL,
	[STANDVEH][nvarchar](1) NULL,
	[TRAIN2][nvarchar](1) NULL,
	[MOTORIST][nvarchar](1) NULL,
	[VIEW][nvarchar](1) NULL,
	[VEHDMG][float] NULL,
	[DRIVER][nvarchar](1) NULL,
	[INVEH][nvarchar](1) NULL,
	[TOTKLD][float] NULL,
	[TOTINJ][float] NULL,
	[TOTOCC][float] NULL,
	[INCDRPT][nvarchar](1) NULL,
	[JOINTCD][nvarchar](1) NULL,
	[CASKLDRR][float] NULL,
	[DUMMY4][nvarchar](2) NULL,
	[CROSSING][nvarchar](24) NULL,
	[DUMMY5][nvarchar](4) NULL,
	[DIVISION][nvarchar](20) NULL,
	[PUBLIC][nvarchar](1) NULL,
	[HZMRLSED][nvarchar](1) NULL,
	[HZMNAME][nvarchar](30) NULL,
	[HZMQNTY][nvarchar](3) NULL,
	[HZMMEAS][nvarchar](4) NULL,
	[SIGWARNX][nvarchar](1) NULL,
	[WHISBAN][nvarchar](1) NULL,
	[DRIVAGE][nvarchar](2) NULL,
	[DRIVGEN][nvarchar](1) NULL,
	[PLEONTRN][nvarchar](4) NULL,
	[SSB1][nvarchar](20) NULL,
	[SSB2][nvarchar](20) NULL,
	[USERKLD][float] NULL,
	[USERINJ][float] NULL,
	[RREMPKLD][float] NULL,
	[RREMPINJ][float] NULL,
	[PASSKLD][float] NULL,
	[PASSINJ][float] NULL,
	[NARR4][nvarchar](100) NULL,
	[NARR5][nvarchar](100) NULL,
	[SUBDIV][nvarchar](20) NULL,
	[ROADCOND][nvarchar](1) NULL,
	[VIDEOT][nvarchar](2) NULL,
	[VIDEOU][nvarchar](2) NULL
) ON [PRIMARY]

INSERT INTO allTrespass032813 (IYR
      ,IMO
      ,RAILROAD
      ,INCDTNO
      ,TYPPERS
      ,JOBCODE
      ,NATINJ
      ,LOCATION
      ,IFATAL
      ,OCCODE
      ,TCODE
      ,AGE
      ,DAYSABS
      ,DAYSRES
      ,DUMMY
      ,STATE
      ,TYPRR
      ,DUMMY1
      ,REGION
      ,DUMMY2
      ,NARRLEN
      ,CASFATAL
      ,CAS57
      ,CAS54
      ,DUMMY3
      ,DAY
      ,YEAR4
      ,TIMEHR
      ,TIMEMIN
      ,AMPM
      ,COUNTY
      ,CNTYCD
      ,STCNTY
      ,ALCOHOL
      ,DRUG
      ,PHYACT
      ,LOCA
      ,LOCB
      ,LOCC
      ,EVENT
      ,TOOLS
      ,INJCAUS
      ,HZMEXPOS
      ,TERMINAT
      ,NARR1
      ,NARR2
      ,NARR3
      ,COVERDATA
      ,LATITUDE
      ,LONGITUD)
SELECT Railroad_Casualties.IYR
	  ,Railroad_Casualties.IMO
      ,Railroad_Casualties.RAILROAD
      ,Railroad_Casualties.INCDTNO
      ,Railroad_Casualties.TYPPERS
      ,Railroad_Casualties.JOBCODE
      ,Railroad_Casualties.NATINJ
      ,Railroad_Casualties.LOCATION
      ,Railroad_Casualties.IFATAL
      ,Railroad_Casualties.OCCODE
      ,Railroad_Casualties.TCODE
      ,Railroad_Casualties.AGE
      ,Railroad_Casualties.DAYSABS
      ,Railroad_Casualties.DAYSRES
      ,Railroad_Casualties.DUMMY
      ,Railroad_Casualties.STATE
      ,Railroad_Casualties.TYPRR
      ,Railroad_Casualties.DUMMY1
      ,Railroad_Casualties.REGION
      ,Railroad_Casualties.DUMMY2
      ,Railroad_Casualties.NARRLEN
      ,Railroad_Casualties.CASFATAL
      ,Railroad_Casualties.CAS57
      ,Railroad_Casualties.CAS54
      ,Railroad_Casualties.DUMMY3
      ,Railroad_Casualties.DAY
      ,Railroad_Casualties.YEAR4
      ,Railroad_Casualties.TIMEHR
      ,Railroad_Casualties.TIMEMIN
      ,Railroad_Casualties.AMPM
      ,Railroad_Casualties.COUNTY
      ,Railroad_Casualties.CNTYCD
      ,Railroad_Casualties.STCNTY
      ,Railroad_Casualties.ALCOHOL
      ,Railroad_Casualties.DRUG
      ,Railroad_Casualties.PHYACT
      ,Railroad_Casualties.LOCA
      ,Railroad_Casualties.LOCB
      ,Railroad_Casualties.LOCC
      ,Railroad_Casualties.EVENT
      ,Railroad_Casualties.TOOLS
      ,Railroad_Casualties.INJCAUS
      ,Railroad_Casualties.HZMEXPOS
      ,Railroad_Casualties.TERMINAT
      ,Railroad_Casualties.NARR1
      ,Railroad_Casualties.NARR2
      ,Railroad_Casualties.NARR3
      ,Railroad_Casualties.COVERDATA
      ,Railroad_Casualties.LATITUDE
      ,Railroad_Casualties.LONGITUD
FROM Railroad_Casualties
WHERE TYPPERS = 'E' AND 
	  CAS57 = 'N'

INSERT INTO allTrespass032813 (AMTRAK
      ,IYR
      ,IMO
      ,RAILROAD
      ,INCDTNO
      ,IYR2
      ,IMO2
      ,RR2
      ,INCDTNO2
      ,IYR3
      ,IMO3
      ,RR3
      ,INCDTNO3
      ,DUMMY1
      ,CASINJRR
      ,GXID
      --,YEAR
      --,MONTH
      ,DAY2
      ,TIMEHR
      ,TIMEMIN
      ,AMPM
      ,STATION
      ,COUNTY
      --,STATE
      ,REGION
      ,DUMMY2
      ,CITY
      ,HIGHWAY
      ,VEHSPD
      ,TYPVEH
      ,VEHDIR
      ,POSITION
      ,RREQUIP
      ,RRCAR
      ,TYPACC
      ,HAZARD
      ,TEMP
      ,VISIBLTY
      ,WEATHER
      ,TYPEQ
      ,TYPTRK
      ,TRKNAME
      ,TRKCLAS
      ,NBRLOCOS
      ,NBRCARS
      ,TRNSPD
      ,TYPSPD
      ,TRNDIR
      ,SIGNAL
      ,LOCWARN
      ,WARNSIG
      ,LIGHTS
      ,STANDVEH
      ,TRAIN2
      ,MOTORIST
      --,VIEW
      ,VEHDMG
      ,DRIVER
      ,INVEH
      ,TOTKLD
      ,TOTINJ
      ,TOTOCC
      ,INCDRPT
      ,JOINTCD
      ,TYPRR
      ,DUMMY3
      ,CASKLDRR
      ,DUMMY4
      ,CROSSING
      ,NARRLEN
      ,DUMMY5
      ,YEAR4
      ,DIVISION
      --,PUBLIC
      ,CNTYCD
      ,STCNTY
      ,HZMRLSED
      ,HZMNAME
      ,HZMQNTY
      ,HZMMEAS
      ,SIGWARNX
      ,WHISBAN
      ,DRIVAGE
      ,DRIVGEN
      ,PLEONTRN
      ,SSB1
      ,SSB2
      ,USERKLD
      ,USERINJ
      ,RREMPKLD
      ,RREMPINJ
      ,PASSKLD
      ,PASSINJ
      ,NARR1
      ,NARR2
      ,NARR3
      ,NARR4
      ,NARR5
      ,SUBDIV
      ,ROADCOND
      ,VIDEOT
      ,VIDEOU)
SELECT Highway_Rail_Accidents.AMTRAK
      ,Highway_Rail_Accidents.IYR
      ,Highway_Rail_Accidents.IMO
      ,Highway_Rail_Accidents.RAILROAD
      ,Highway_Rail_Accidents.INCDTNO
      ,Highway_Rail_Accidents.IYR2
      ,Highway_Rail_Accidents.IMO2
      ,Highway_Rail_Accidents.RR2
      ,Highway_Rail_Accidents.INCDTNO2
      ,Highway_Rail_Accidents.IYR3
      ,Highway_Rail_Accidents.IMO3
      ,Highway_Rail_Accidents.RR3
      ,Highway_Rail_Accidents.INCDTNO3
      ,Highway_Rail_Accidents.DUMMY1
      ,Highway_Rail_Accidents.CASINJRR
      ,Highway_Rail_Accidents.GXID
      --,Highway_Rail_Accidents.YEAR
      --,Highway_Rail_Accidents.MONTH
      ,Highway_Rail_Accidents.DAY2
      ,Highway_Rail_Accidents.TIMEHR
      ,Highway_Rail_Accidents.TIMEMIN
      ,Highway_Rail_Accidents.AMPM
      ,Highway_Rail_Accidents.STATION
      ,Highway_Rail_Accidents.COUNTY
      --,Highway_Rail_Accidents.STATE
      ,Highway_Rail_Accidents.REGION
      ,Highway_Rail_Accidents.DUMMY2
      ,Highway_Rail_Accidents.CITY
      ,Highway_Rail_Accidents.HIGHWAY
      ,Highway_Rail_Accidents.VEHSPD
      ,Highway_Rail_Accidents.TYPVEH
      ,Highway_Rail_Accidents.VEHDIR
      ,Highway_Rail_Accidents.POSITION
      ,Highway_Rail_Accidents.RREQUIP
      ,Highway_Rail_Accidents.RRCAR
      ,Highway_Rail_Accidents.TYPACC
      ,Highway_Rail_Accidents.HAZARD
      ,Highway_Rail_Accidents.TEMP
      ,Highway_Rail_Accidents.VISIBLTY
      ,Highway_Rail_Accidents.WEATHER
      ,Highway_Rail_Accidents.TYPEQ
      ,Highway_Rail_Accidents.TYPTRK
      ,Highway_Rail_Accidents.TRKNAME
      ,Highway_Rail_Accidents.TRKCLAS
      ,Highway_Rail_Accidents.NBRLOCOS
      ,Highway_Rail_Accidents.NBRCARS
      ,Highway_Rail_Accidents.TRNSPD
      ,Highway_Rail_Accidents.TYPSPD
      ,Highway_Rail_Accidents.TRNDIR
      ,Highway_Rail_Accidents.SIGNAL
      ,Highway_Rail_Accidents.LOCWARN
      ,Highway_Rail_Accidents.WARNSIG
      ,Highway_Rail_Accidents.LIGHTS
      ,Highway_Rail_Accidents.STANDVEH
      ,Highway_Rail_Accidents.TRAIN2
      ,Highway_Rail_Accidents.MOTORIST
      --,Highway_Rail_Accidents.VIEW
      ,Highway_Rail_Accidents.VEHDMG
      ,Highway_Rail_Accidents.DRIVER
      ,Highway_Rail_Accidents.INVEH
      ,Highway_Rail_Accidents.TOTKLD
      ,Highway_Rail_Accidents.TOTINJ
      ,Highway_Rail_Accidents.TOTOCC
      ,Highway_Rail_Accidents.INCDRPT
      ,Highway_Rail_Accidents.JOINTCD
      ,Highway_Rail_Accidents.TYPRR
      ,Highway_Rail_Accidents.DUMMY3
      ,Highway_Rail_Accidents.CASKLDRR
      ,Highway_Rail_Accidents.DUMMY4
      ,Highway_Rail_Accidents.CROSSING
      ,Highway_Rail_Accidents.NARRLEN
      ,Highway_Rail_Accidents.DUMMY5
      ,Highway_Rail_Accidents.YEAR4
      ,Highway_Rail_Accidents.DIVISION
      --,Highway_Rail_Accidents.PUBLIC
      ,Highway_Rail_Accidents.CNTYCD
      ,Highway_Rail_Accidents.STCNTY
      ,Highway_Rail_Accidents.HZMRLSED
      ,Highway_Rail_Accidents.HZMNAME
      ,Highway_Rail_Accidents.HZMQNTY
      ,Highway_Rail_Accidents.HZMMEAS
      ,Highway_Rail_Accidents.SIGWARNX
      ,Highway_Rail_Accidents.WHISBAN
      ,Highway_Rail_Accidents.DRIVAGE
      ,Highway_Rail_Accidents.DRIVGEN
      ,Highway_Rail_Accidents.PLEONTRN
      ,Highway_Rail_Accidents.SSB1
      ,Highway_Rail_Accidents.SSB2
      ,Highway_Rail_Accidents.USERKLD
      ,Highway_Rail_Accidents.USERINJ
      ,Highway_Rail_Accidents.RREMPKLD
      ,Highway_Rail_Accidents.RREMPINJ
      ,Highway_Rail_Accidents.PASSKLD
      ,Highway_Rail_Accidents.PASSINJ
      ,Highway_Rail_Accidents.NARR1
      ,Highway_Rail_Accidents.NARR2
      ,Highway_Rail_Accidents.NARR3
      ,Highway_Rail_Accidents.NARR4
      ,Highway_Rail_Accidents.NARR5
      ,Highway_Rail_Accidents.SUBDIV
      ,Highway_Rail_Accidents.ROADCOND
      ,Highway_Rail_Accidents.VIDEOT
      ,Highway_Rail_Accidents.VIDEOU
FROM Highway_Rail_Accidents
WHERE TYPVEH = 'K' AND (USERKLD > 0 OR USERINJ > 0)

ALTER TABLE allTrespass032813
ADD allTrespassID INT IDENTITY (1,1)

UPDATE allTrespass032813 SET CTFIPS = LEFT(STCNTY, 2) + RIGHT(STCNTY, 3)
UPDATE allTrespass032813 SET CTFIPS = '12086' WHERE CTFIPS = '12025'

CREATE TABLE CTFIPSlookup (
	FIPS[varchar] (50) NULL,
	centroidX[varchar] (50) NULL,
	centroidY[varchar] (50) NULL
	)

BULK INSERT CTFIPSlookup FROM 'G:\GISSERVER\USERS\TomL\CTFIPSlookup.txt'
with (FIRSTROW = 2, FIELDTERMINATOR = '\t',ROWTERMINATOR = '\n')

UPDATE allTrespass032813 
SET centroidX = (SELECT centroidX FROM CTFIPSlookup
WHERE allTrespass032813.CTFIPS = CTFIPSlookup.FIPS)

UPDATE allTrespass032813 
SET centroidY = (SELECT centroidY FROM CTFIPSlookup
WHERE allTrespass032813.CTFIPS = CTFIPSlookup.FIPS)

ALTER TABLE allTrespass032813
ADD incDate smalldatetime

UPDATE allTrespass032813
SET incDate = CAST(YEAR4 + '-' + IMO + '-' + DAY AS smalldatetime)

UPDATE allTrespass032813
SET incDate = CAST(YEAR4 + '-' + IMO + '-' + DAY2 AS smalldatetime)
WHERE incDate IS NULL 

SELECT a.GXID
      ,a.allTrespassID
	  ,a.incDate
	  ,b.*
INTO gxIncJoin
FROM allTrespass032813 a
LEFT OUTER JOIN gxALL b on a.GXID = b.CROSSING2
WHERE a.incDate BETWEEN b.LONGBDAT AND b.LONGEDAT

--NEED TO DO A SPATIAL JOIN HERE BETWEEN THE INCIDENT TABLE AND THE TIMEZONE.  ALSO NEED TO PICK THE MOST ACCURATE COORDINATES, E.G., LAT/LONG OVER CENTROID (WHERE AVAILABLE)
--OR GXID LAT/LONG OVER CENTROID (WHERE AVAILABLE).  CENTROIDS ONLY WHERE NONE OTHER AVAILABLE.

CREATE TABLE [APT_ZONEINFO_HISTORY](
            [ZONEINFO_ZONE] [nvarchar](100) NOT NULL,
            [EFF_DATE] [datetime] NOT NULL,
            [EXP_DATE] [datetime] NOT NULL,
            [UTC_MINS_OFFSET] [int] NOT NULL,
            [IN_DST] [nchar](1) NOT NULL,
            [REC_ID] [int] IDENTITY(1,1) NOT NULL,
CONSTRAINT [PK_APT_ZONEINFO_HISTORY] PRIMARY KEY CLUSTERED 
(
            [ZONEINFO_ZONE] ASC,
            [EFF_DATE] ASC,
            [EXP_DATE] ASC
)
)
GO

BULK INSERT [APT_ZONEINFO_HISTORY] FROM 'G:\GISSERVER\USERS\TomL\zone_lookup.txt'
with (FIRSTROW = 2, FIELDTERMINATOR = '\t',ROWTERMINATOR = '\n')

CREATE TABLE tzIncJoin (
	allTrespas[int] NOT NULL,
	incDate[smalldatetime] NULL,
	finLAT[float] NULL,
	finLONG[float] NULL,
	TZID_1[nvarchar](50) NULL
	)
GO

BULK INSERT tzIncJoin FROM 'G:\GISSERVER\USERS\TomL\tzIncJoin.txt'
with (FIRSTROW = 2, FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')


SELECT a.*, b.finLAT, b.finLONG, b.TZID_1, c.UTC_MINS_OFFSET
INTO temp
FROM allTrespass032813 a
LEFT OUTER JOIN tzIncJoin b on a.allTrespassID = b.allTrespas
JOIN APT_ZONEINFO_HISTORY c on c.ZONEINFO_ZONE = b.TZID_1
WHERE b.incDate BETWEEN c.EFF_DATE AND c.EXP_DATE

CREATE TABLE [sunKeyTable](
			[allTrespassID] [INT] NULL,
			[sunDesc][NVARCHAR] (50) NULL
)

--RUN allTrespassPyodbc here to calculate the sun description for each incident.

SELECT a.*, b.sunDesc
INTO temp2
FROM temp a
LEFT OUTER JOIN sunKeyTable b ON a.allTrespassID = b.allTrespassID

--AFTER DOING THE SPATIAL JOINS FOR RURAL, SUBURBAN AND URBAN CATEGORIZATIONS
ALTER TABLE allTrespass
ADD UrbanRural[nvarchar](10)NULL

CREATE TABLE [urbanRuralTable](
			[allTrespas] [INT] NULL,
			[UrbanRural][NVARCHAR] (10) NULL
)

BULK INSERT [urbanRuralTable] FROM 'G:\GISSERVER\USERS\TomL\incByUrbanRural.txt'
with (FIRSTROW = 2, FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')

UPDATE allTrespass SET UrbanRural = (SELECT UrbanRural FROM urbanRuralTable
WHERE allTrespass.allTrespassID = urbanRuralTable.allTrespas)

ALTER TABLE allTrespass
ADD DENSITY[nvarchar](50)NULL

CREATE TABLE [trainDensityTable](
			[allTrespas] [INT] NULL,
			[DENSITY][NVARCHAR] (50) NULL
)

BULK INSERT [trainDensityTable] FROM 'G:\GISSERVER\USERS\TomL\densityResult.txt'
with (FIRSTROW = 2, FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')

UPDATE allTrespass SET DENSITY = (SELECT DENSITY FROM trainDensityTable
WHERE allTrespass.allTrespassID = trainDensityTable.allTrespas)