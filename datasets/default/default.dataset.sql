BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"AccountNumber" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','(212) 555-5555','Acme','','(212) 555-5555','','','','Prospect','100000000.0','New York','USA','','','','NY','10 Main Rd.','31349','','680','Manufacturing','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','');
INSERT INTO "Account" VALUES(2,'Founded in March 1999, salesforce.com (http://www.salesforce.com) builds and delivers customer relationship management (CRM) applications as scalable online services. The salesforce.com product suite - Team Edition, Professional Edition, Enterprise Edition, Wireless Edition and Offline Edition - gives companies of all sizes a complete 360-degree view of the customer. The company''s award-winning CRM solutions provide integrated online sales force automation, customer service and support management, and marketing automation applications to help companies meet the complex challenges of global customer communication. Salesforce.com has received considerable recognition in the industry, including Editors'' Choice and two Five-Star ratings from PC Magazine, two Deploy Awards from InfoWorld, Red Herring 100, Upside Hot 100, Investor''s Choice Award from Enterprise Outlook, Editors'' Choice from TMCLabs, Top 10 CRM Implementation from Aberdeen Group, and InfoWorld''s 2001 CRM Technology of the Year. Founded in 1999, salesforce.com is headquartered in San Francisco, with offices in Europe and Asia.','(415) 901-7040','salesforce.com','','(415) 901-7000','','','','Customer','','San Francisco','USA','','','','CA','The Landmark @ One Market, Suite 300','94105','','','Technology','','San Francisco','USA','','','','CA','The Landmark @ One Market, Suite 300','94105','','','','http://www.salesforce.com','');
INSERT INTO "Account" VALUES(3,'GBM is the worldwide leader in technology news and information on the Web and the producer of the longest-running and farthest-reaching television shows about technology. GBM''s network of sites combines breakthrough interactive technology with engaging content and design and is consistently ranked as the Internet''s leading content network in terms of both audience size and revenue, serving millions of users each day. The company''s television programming is broadcast by the USA Network and the Sci-Fi Channel to more than 70 million households and is syndicated to broadcast television stations in the nation''s top 120 markets, including the top 10 markets.','','Global Media','','(905) 555-1212','','','','Prospect','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','14668','Media','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','','','');
INSERT INTO "Account" VALUES(4,'','','NTO - India','','','','','','','','','','','','','','','','','10','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(5,'','','NTO - Mexico','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(6,'Parent Account','','NTO Corp','','','','','','','1000000.0','','','','','','','','','','100','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(7,'','','NTO - Germany','','','','','','','','','','','','','','','','','20','','','','','','','','','','','','','','','');
CREATE TABLE "AccountAccountRelation" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"HierarchyType" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"PartyRoleRelationId" VARCHAR(255), 
	"RelatedAccountId" VARCHAR(255), 
	"RelatedInverseRecordId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "AccountAccountRelation" VALUES(1,'True','','Parent','2023-11-01','6','1','4','');
INSERT INTO "AccountAccountRelation" VALUES(2,'True','','Parent','2023-11-01','6','1','5','');
INSERT INTO "AccountAccountRelation" VALUES(3,'True','','Parent','2023-11-01','6','1','7','');
CREATE TABLE "AnnualEmssnInventory" (
	id INTEGER NOT NULL, 
	"AllocScope1EmssnOverride" VARCHAR(255), 
	"AllocScope2EmssnOverride" VARCHAR(255), 
	"AllocScope3EmssnOverride" VARCHAR(255), 
	"EnergyUsageCmclBldOverride" VARCHAR(255), 
	"EnergyUsageDataCtrOverride" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RenewableEnrgyPctCmclBldOvride" VARCHAR(255), 
	"RenewableEnrgyPctDataCtrOvride" VARCHAR(255), 
	"Scope1EmssnCmclBldOverride" VARCHAR(255), 
	"Scope1EmssnDataCentersOverride" VARCHAR(255), 
	"Scp1EmssnFleetVehiclesOverride" VARCHAR(255), 
	"Scope1EmssnPrivateJetsOverride" VARCHAR(255), 
	"Scp1EmssnWstGenOvrideInTco2e" VARCHAR(255), 
	"Scp2EmssnFleetVehiclesOverride" VARCHAR(255), 
	"Scp2EmssnPrivateJetsOverride" VARCHAR(255), 
	"Scope2EmissionsType" VARCHAR(255), 
	"Scp2LocBsdEmssnCmclBldOverride" VARCHAR(255), 
	"Scp2LocBsdEmssnDataCtrOvride" VARCHAR(255), 
	"Scp2MktBsdEmssnCmclBldOverride" VARCHAR(255), 
	"Scp2MktBsdEmssnDataCtrOverride" VARCHAR(255), 
	"Scp3EmssnBusinessTravelOvride" VARCHAR(255), 
	"Scope3EmssnCapitalGoodsOvride" VARCHAR(255), 
	"Scope3EmssnCmclBldOverride" VARCHAR(255), 
	"Scope3EmssnDataCentersOverride" VARCHAR(255), 
	"Scp3EmssnDnstrmLeasedAstOvride" VARCHAR(255), 
	"Scp3EmssnDnstrmTrnspDstrOvride" VARCHAR(255), 
	"Scope3EmssnEmpCommutingOvride" VARCHAR(255), 
	"Scp3EmssnEolSoldPrdctOvride" VARCHAR(255), 
	"Scp3EmssnFleetVehiclesOverride" VARCHAR(255), 
	"Scope3EmssnFranchisesOverride" VARCHAR(255), 
	"Scp3EmssnFuelEnrgyActvtyOvride" VARCHAR(255), 
	"Scope3EmssnInvestmentsOverride" VARCHAR(255), 
	"Scp3EmssnPrivateJetsOverride" VARCHAR(255), 
	"Scp3EmssnProcSoldPrdctOverride" VARCHAR(255), 
	"Scp3EmssnPurchGoodsSrvcsOvride" VARCHAR(255), 
	"Scp3EmssnUpstrmLeasedAstOvride" VARCHAR(255), 
	"Scp3EmssnUpstrmTrnspDstrOvride" VARCHAR(255), 
	"Scp3EmssnUseOfSoldPrdctOvride" VARCHAR(255), 
	"Scp3EmssnWasteGenInOperOvride" VARCHAR(255), 
	"Scp3UncategorizedEmssnOverride" VARCHAR(255), 
	"TotalScope1EmissionsOverride" VARCHAR(255), 
	"TotalScope2EmissionsOverride" VARCHAR(255), 
	"TotalScope3EmissionsOverride" VARCHAR(255), 
	"TotalSuplScope3EmssnOverride" VARCHAR(255), 
	"Year" VARCHAR(255), 
	"AccountNameId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "AnnualEmssnInventory" VALUES(1,'','','','','','NTO FY23','','','','','','','','','','LocationBased','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2022','6');
INSERT INTO "AnnualEmssnInventory" VALUES(2,'','','','','','NTO FY24','','','','','','','','','','LocationBased','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2023','6');
INSERT INTO "AnnualEmssnInventory" VALUES(3,'','','','','','NTO Germany FY23','','','','','','','','','','LocationBased','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2022','7');
CREATE TABLE "BldgEnrgyIntensity" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "CrbnEmssnScopeAlloc" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ElectricityEmssnFctrSet" (
	id INTEGER NOT NULL, 
	"Ch4EmissionRate" VARCHAR(255), 
	"Ch4EmissionRateUnit" VARCHAR(255), 
	"City" VARCHAR(255), 
	"Co2EmissionRate" VARCHAR(255), 
	"Co2EmissionRateUnit" VARCHAR(255), 
	"Co2eEmissionRate" VARCHAR(255), 
	"Co2eEmissionRateUnit" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"EmissionFactorDataSource" VARCHAR(255), 
	"GenlConversionFctrRevisionDate" VARCHAR(255), 
	"EmissionsFactorType" VARCHAR(255), 
	"EmissionFactorUpdateYear" VARCHAR(255), 
	"ExternalIdentifier" VARCHAR(255), 
	"GridSubregion" VARCHAR(255), 
	"LocationBasedBiomassMixPct" VARCHAR(255), 
	"LocationBasedCoalMixPct" VARCHAR(255), 
	"LocationBasedGasMixPct" VARCHAR(255), 
	"LocBasedGeothermalMixPct" VARCHAR(255), 
	"LocationBasedHydroMixPct" VARCHAR(255), 
	"LocationBasedNuclearMixPct" VARCHAR(255), 
	"LocationBasedOilMixPct" VARCHAR(255), 
	"LocBasedOtherFossilFuelMixPct" VARCHAR(255), 
	"LocationBasedOtherFuelMixPct" VARCHAR(255), 
	"LocationBasedSolarMixPct" VARCHAR(255), 
	"LocationBasedWindMixPct" VARCHAR(255), 
	"ShouldLockDtastUpdtForRec" VARCHAR(255), 
	"MarketBasedBiomassMixPct" VARCHAR(255), 
	"MktBsdCh4EmssnRate" VARCHAR(255), 
	"MktBsdCh4EmssnRateUnit" VARCHAR(255), 
	"MktBsdCo2EmssnRate" VARCHAR(255), 
	"MktBsdCo2EmssnRateUnit" VARCHAR(255), 
	"MktBsdCo2eEmissionRate" VARCHAR(255), 
	"MktBsdCo2eEmissionRateUnit" VARCHAR(255), 
	"MarketBasedCoalMixPct" VARCHAR(255), 
	"MktBsdDataSrcType" VARCHAR(255), 
	"MarketBasedGasMixPct" VARCHAR(255), 
	"MktBasedGeothermalMixPct" VARCHAR(255), 
	"MarketBasedHydroMixPct" VARCHAR(255), 
	"MktBsdN2oEmssnRate" VARCHAR(255), 
	"MktBsdN2oEmssnRateUnit" VARCHAR(255), 
	"MarketBasedNuclearMixPct" VARCHAR(255), 
	"MarketBasedOilMixPct" VARCHAR(255), 
	"MktBasedOtherFossilFuelMixPct" VARCHAR(255), 
	"MarketBasedOtherFuelMixPct" VARCHAR(255), 
	"MarketBasedSolarMixPct" VARCHAR(255), 
	"MarketBasedWindMixPct" VARCHAR(255), 
	"N2oEmissionRate" VARCHAR(255), 
	"N2oEmissionRateUnit" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PostalCodeSet" VARCHAR(255), 
	"State" VARCHAR(255), 
	"MktBsdElectrSupplierId" VARCHAR(255), 
	"OtherEmssnFctrId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ElectricityEmssnFctrSet" VALUES(1,'0.056','LBS_PER_MWH','','600.0','LBS_PER_MWH','603.8','LBS_PER_MWH','US','','','LocationBased','2023','','','1.1','18.3','18.6','0.6','45.7','3.3','0.2','0.2','0.1','1.6','10.2','False','','','KG_PER_KWH','','KG_PER_KWH','','KG_PER_KWH','','','','','','','KG_PER_KWH','','','','','','','0.008','LBS_PER_MWH','Sample EEF','','','','');
CREATE TABLE "EnvironmentalRisk" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "InternalOrganizationUnit" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"OrganizationCode" VARCHAR(255), 
	"OrganizationName" VARCHAR(255), 
	"IsParentCompany" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ParentOrganizationId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "InternalOrganizationUnit" VALUES(1,'','Parent Company - NTO Corp','','True','INTERNAL_ORGANIZATION','6','');
CREATE TABLE "OtherEmssnFctrSet" (
	id INTEGER NOT NULL, 
	"Ch4GlblWarmingPot" VARCHAR(255), 
	"EmissionFactorDataSource" VARCHAR(255), 
	"EmissionFactorUpdateYear" VARCHAR(255), 
	"ExternalIdentifier" VARCHAR(255), 
	"N2oGlblWarmingPot" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RefrigerantLeakageRtInKgItKwh" VARCHAR(255), 
	"RefrigerantLeakageRtInKgM2" VARCHAR(255), 
	"RefrigerantLeakageRtInKgSqft" VARCHAR(255), 
	"ShouldLockDtastUpdtForRec" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "OtherEmssnFctrSet" VALUES(1,'28.0','','2023','','264.0','sample OEF','1.66e-06','0.25187526','0.0234','False');
CREATE TABLE "PartyRoleRelation" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"RelatedRoleName" VARCHAR(255), 
	"RelationshipObjectName" VARCHAR(255), 
	"RoleName" VARCHAR(255), 
	"ShouldCreaInversRoleAuto" VARCHAR(255), 
	"RelatedInverseRecordId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "PartyRoleRelation" VALUES(1,'Subsidiary-Parent-AAR','Parent','Account_Account_Relationship','Subsidiary','False','');
CREATE TABLE "RefrigerantEmssnFctr" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "StnryAssetCrbnFtprnt" (
	id INTEGER NOT NULL, 
	"AllocationStatus" VARCHAR(255), 
	"AuditApprovalStatus" VARCHAR(255), 
	"DataGapStatus" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"FootprintStage" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OccupiedFloorArea" VARCHAR(255), 
	"OccupiedFloorAreaUnit" VARCHAR(255), 
	"ReportingDate" VARCHAR(255), 
	"ReportingYear" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"SuplScope1Emissions" VARCHAR(255), 
	"SuplScope2LocationBasedEmssn" VARCHAR(255), 
	"SuplScope2MarketBasedEmssn" VARCHAR(255), 
	"SuplScope3DnstrmEmissions" VARCHAR(255), 
	"SuplScope3UpstrmEmissions" VARCHAR(255), 
	"TotalFloorArea" VARCHAR(255), 
	"TotalFloorAreaUnit" VARCHAR(255), 
	"AnnualEmssnInventoryId" VARCHAR(255), 
	"BuildingEnergyIntensityId" VARCHAR(255), 
	"PrevYrAnnlCarbonFootprintId" VARCHAR(255), 
	"RegionalBldgEnergyIntensityId" VARCHAR(255), 
	"StnryAssetEnvrSrcId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(1,'','','','2023-12-31','Emission Source Confirmation','NTO Corp_CY_2023','5780.0','sqft','','2023','2023-01-01','','','','','','5780.0','sqft','2','','','','1');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(2,'','','','2022-12-31','Data Validation','NTO Corp_CY_2022','5780.0','sqft','','2022','2022-01-01','','','','','','5780.0','sqft','1','','','','1');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(3,'','','','2022-12-31','Emission Source Confirmation','NTO Germany_CY_2022','5700.0','sqft','','2022','2022-01-01','','','','','','5700.0','sqft','1','','','','3');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(4,'','','','2023-12-31','Emission Source Confirmation','NTO Germany_CY_2023','5700.0','sqft','','2023','2023-01-01','','','','','','5700.0','sqft','2','','','','3');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(5,'','','','2023-12-31','Emission Source Confirmation','NTO Mexico_CY_2023','1800.0','sqft','','2023','2023-01-01','','','','','','1800.0','sqft','2','','','','4');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(6,'','','','2022-12-31','Emission Source Confirmation','NTO Mexico_CY_2022','1800.0','sqft','','2022','2022-01-01','','','','','','1800.0','sqft','1','','','','4');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(7,'','','','2023-12-31','Data Validation','NTO India_CY_2023','9780.0','sqft','','2023','2023-01-01','','','','','','9780.0','sqft','2','','','','2');
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(8,'','','','2022-12-31','Data Gap Filling','NTO India_CY_2022','9780.0','sqft','','2022','2022-01-01','','','','','','9780.0','sqft','1','','','','2');
CREATE TABLE "StnryAssetEnrgyUse" (
	id INTEGER NOT NULL, 
	"AllocatedRenewableEnergyInKwh" VARCHAR(255), 
	"CarbonFootprintReportDate" VARCHAR(255), 
	"DataGapFillingMethodName" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"FinalEnergyConsumption" VARCHAR(255), 
	"FuelConsumption" VARCHAR(255), 
	"FuelConsumptionUnit" VARCHAR(255), 
	"FuelType" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OccupiedFloorArea" VARCHAR(255), 
	"OccupiedFloorAreaUnit" VARCHAR(255), 
	"PowerUsageEffectiveness" VARCHAR(255), 
	"ProposedEnergyConsumption" VARCHAR(255), 
	"RenewableEnergyType" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"SuplScope1Emissions" VARCHAR(255), 
	"SuplScope2LocationBasedEmssn" VARCHAR(255), 
	"SuplScope2MarketBasedEmssn" VARCHAR(255), 
	"SuplScope3DnstrmEmissions" VARCHAR(255), 
	"SuplScope3UpstrmEmissions" VARCHAR(255), 
	"IsSystemGeneratedRecord" VARCHAR(255), 
	"TotalFloorArea" VARCHAR(255), 
	"TotalFloorAreaUnit" VARCHAR(255), 
	"ElectricityEmissionFactorsId" VARCHAR(255), 
	"MktBsdElectriEmssnFctrId" VARCHAR(255), 
	"OtherEmssnFctrId" VARCHAR(255), 
	"RefrigerantEmssnFctrId" VARCHAR(255), 
	"StnryAssetCrbnFtprntId" VARCHAR(255), 
	"StnryAssetEnvrSrcId" VARCHAR(255), 
	"SupplierId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "StnryAssetEnrgyUse" VALUES(1,'','','','2023-01-31','','1000.0','kWh','Electricity','Sample 1','5780.0','sqft','1.0','','','2023-01-01','','','','','','False','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(2,'','','','2023-02-28','','690.0','kWh','Electricity','Sample 1','5780.0','sqft','1.0','','','2023-02-01','','','','','','False','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(3,'','','','2023-03-31','','790.0','kWh','Electricity','Sample 1','5780.0','sqft','1.0','','','2023-03-01','','','','','','False','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(4,'','','','2022-05-31','','684.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2022-05-01','','','','','','False','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(5,'','','','2023-05-31','','795.0','kWh','Electricity','Sample 1','5780.0','sqft','1.0','','','2023-05-01','','','','','','False','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(6,'','','','2022-01-31','','816.0','kWh','Electricity','Germany Data','5700.0','sqft','1.0','','','2022-01-01','','','','','','False','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(7,'','','','2023-07-31','','765.0','kWh','Electricity','Sample 1','5780.0','sqft','1.0','','','2023-07-01','','','','','','False','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(8,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-04-30','797.3684210526316','797.3684210526316','kWh','Electricity','NTO Corp - Apr 1, 2023 - Apr 30, 2023 - Electricity','5780.0','sqft','1.0','797.3684210526316','','2023-04-01','','','','','','True','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(9,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-06-30','797.3684210526316','797.3684210526316','kWh','Electricity','NTO Corp - Jun 1, 2023 - Jun 30, 2023 - Electricity','5780.0','sqft','1.0','797.3684210526316','','2023-06-01','','','','','','True','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(10,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-12-31','4066.5789473684213','4066.5789473684213','kWh','Electricity','NTO Corp - Aug 1, 2023 - Dec 31, 2023 - Electricity','5780.0','sqft','1.0','4066.5789473684213','','2023-08-01','','','','','','True','5780.0','sqft','1','','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(11,'','','','2022-01-31','','900.0','kWh','Electricity','Sample 2','5780.0','sqft','1.0','','','2022-01-01','','','','','','False','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(12,'','','','2022-03-31','','950.0','kWh','Electricity','Sample 2','5780.0','sqft','1.0','','','2022-03-01','','','','','','False','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(13,'','','','2022-05-31','','975.9','kWh','Electricity','Sample 2','5780.0','sqft','1.0','','','2022-05-01','','','','','','False','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(14,'','','','2022-07-31','','980.0','kWh','Electricity','Sample 2','5780.0','sqft','1.0','','','2022-07-01','','','','','','False','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(15,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-02-28','859.3967741935484','859.3967741935484','kWh','Electricity','NTO Corp - Feb 1, 2022 - Feb 28, 2022 - Electricity','5780.0','sqft','1.0','859.3967741935484','','2022-02-01','','','','','','True','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(16,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-04-30','920.7822580645161','920.7822580645161','kWh','Electricity','NTO Corp - Apr 1, 2022 - Apr 30, 2022 - Electricity','5780.0','sqft','1.0','920.7822580645161','','2022-04-01','','','','','','True','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(17,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-06-30','920.7822580645161','920.7822580645161','kWh','Electricity','NTO Corp - Jun 1, 2022 - Jun 30, 2022 - Electricity','5780.0','sqft','1.0','920.7822580645161','','2022-06-01','','','','','','True','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(18,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-12-31','4695.989516129032','4695.989516129032','kWh','Electricity','NTO Corp - Aug 1, 2022 - Dec 31, 2022 - Electricity','5780.0','sqft','1.0','4695.989516129032','','2022-08-01','','','','','','True','5780.0','sqft','1','','1','','2','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(19,'','','','2022-12-31','','786.0','kWh','Electricity','Germany Data','5700.0','sqft','1.0','','','2022-12-01','','','','','','False','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(20,'','','','2022-09-30','','766.0','kWh','Electricity','Germany Data','5700.0','sqft','1.0','','','2022-09-01','','','','','','False','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(21,'','','','2022-08-31','','866.0','kWh','Electricity','Germany Data','5700.0','sqft','1.0','','','2022-08-01','','','','','','False','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(22,'','','','2022-04-30','','446.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2022-04-01','','','','','','False','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(23,'','','','2022-05-31','','836.0','kWh','Electricity','Germany Data','5700.0','sqft','1.0','','','2022-05-01','','','','','','False','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(24,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-04-30','2352.1428571428573','2352.1428571428573','kWh','Electricity','NTO Germany - Feb 1, 2022 - Apr 30, 2022 - Electricity','5700.0','sqft','1.0','2352.1428571428573','','2022-02-01','','','','','','True','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(25,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-07-31','1612.142857142857','1612.142857142857','kWh','Electricity','NTO Germany - Jun 1, 2022 - Jul 31, 2022 - Electricity','5700.0','sqft','1.0','1612.142857142857','','2022-06-01','','','','','','True','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(26,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-11-30','1612.142857142857','1612.142857142857','kWh','Electricity','NTO Germany - Oct 1, 2022 - Nov 30, 2022 - Electricity','5700.0','sqft','1.0','1612.142857142857','','2022-10-01','','','','','','True','5700.0','sqft','1','','1','','3','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(27,'','','','2023-12-31','','678.0','kWh','Electricity','Germany Sample Data 23','5700.0','sqft','1.0','','','2023-12-01','','','','','','False','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(28,'','','','2023-10-31','','778.0','kWh','Electricity','Germany Sample Data 23','5700.0','sqft','1.0','','','2023-10-01','','','','','','False','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(29,'','','','2023-07-31','','758.0','kWh','Electricity','Germany Sample Data 23','5700.0','sqft','1.0','','','2023-07-01','','','','','','False','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(30,'','','','2023-04-30','','748.0','kWh','Electricity','Germany Sample Data 23','5700.0','sqft','1.0','','','2023-04-01','','','','','','False','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(31,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-03-31','2167.317073170732','2167.317073170732','kWh','Electricity','NTO Germany - Jan 1, 2023 - Mar 31, 2023 - Electricity','5700.0','sqft','1.0','2167.317073170732','','2023-01-01','','','','','','True','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(32,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-06-30','1468.959349593496','1468.959349593496','kWh','Electricity','NTO Germany - May 1, 2023 - Jun 30, 2023 - Electricity','5700.0','sqft','1.0','1468.959349593496','','2023-05-01','','','','','','True','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(33,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-09-30','1468.959349593496','1468.959349593496','kWh','Electricity','NTO Germany - Aug 1, 2023 - Sep 30, 2023 - Electricity','5700.0','sqft','1.0','1468.959349593496','','2023-08-01','','','','','','True','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(34,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-11-30','722.439024390244','722.439024390244','kWh','Electricity','NTO Germany - Nov 1, 2023 - Nov 30, 2023 - Electricity','5700.0','sqft','1.0','722.439024390244','','2023-11-01','','','','','','True','5700.0','sqft','1','','1','','4','3','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(35,'','','','2023-12-31','','456.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2023-12-01','','','','','','False','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(36,'','','','2023-10-31','','486.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2023-10-01','','','','','','False','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(37,'','','','2023-08-31','','436.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2023-08-01','','','','','','False','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(38,'','','','2023-05-31','','496.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2023-05-01','','','','','','False','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(39,'','','','2023-03-31','','486.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2023-03-01','','','','','','False','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(40,'','','','2022-03-31','','416.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2022-03-01','','','','','','False','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(41,'','','','2023-12-31','','544.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2023-12-01','','','','','','False','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(42,'','','','2022-07-31','','446.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2022-07-01','','','','','','False','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(43,'','','','2022-11-30','','476.0','kWh','Electricity','Mexico Energy Use','1800.0','sqft','1.0','','','2022-11-01','','','','','','False','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(44,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-02-28','862.7540983606557','862.7540983606557','kWh','Electricity','NTO Mexico - Jan 1, 2022 - Feb 28, 2022 - Electricity','1800.0','sqft','1.0','862.7540983606557','','2022-01-01','','','','','','True','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(45,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-06-30','892.0','892.0','kWh','Electricity','NTO Mexico - May 1, 2022 - Jun 30, 2022 - Electricity','1800.0','sqft','1.0','892.0','','2022-05-01','','','','','','True','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(46,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-10-31','1345.311475409836','1345.311475409836','kWh','Electricity','NTO Mexico - Aug 1, 2022 - Oct 31, 2022 - Electricity','1800.0','sqft','1.0','1345.311475409836','','2022-08-01','','','','','','True','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(47,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-12-31','453.3114754098361','453.3114754098361','kWh','Electricity','NTO Mexico - Dec 1, 2022 - Dec 31, 2022 - Electricity','1800.0','sqft','1.0','453.3114754098361','','2022-12-01','','','','','','True','1800.0','sqft','1','','1','','6','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(48,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-02-28','898.3225806451613','898.3225806451613','kWh','Electricity','NTO Mexico - Jan 1, 2023 - Feb 28, 2023 - Electricity','1800.0','sqft','1.0','898.3225806451613','','2023-01-01','','','','','','True','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(49,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-04-30','456.7741935483871','456.7741935483871','kWh','Electricity','NTO Mexico - Apr 1, 2023 - Apr 30, 2023 - Electricity','1800.0','sqft','1.0','456.7741935483871','','2023-04-01','','','','','','True','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(50,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-07-31','928.7741935483871','928.7741935483871','kWh','Electricity','NTO Mexico - Jun 1, 2023 - Jul 31, 2023 - Electricity','1800.0','sqft','1.0','928.7741935483871','','2023-06-01','','','','','','True','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(51,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-09-30','456.7741935483871','456.7741935483871','kWh','Electricity','NTO Mexico - Sep 1, 2023 - Sep 30, 2023 - Electricity','1800.0','sqft','1.0','456.7741935483871','','2023-09-01','','','','','','True','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(52,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-11-30','456.7741935483871','456.7741935483871','kWh','Electricity','NTO Mexico - Nov 1, 2023 - Nov 30, 2023 - Electricity','1800.0','sqft','1.0','456.7741935483871','','2023-11-01','','','','','','True','1800.0','sqft','1','','1','','5','4','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(53,'','','','2023-08-31','','644.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2023-08-01','','','','','','False','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(54,'','','','2023-04-30','','544.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2023-04-01','','','','','','False','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(55,'','','','2023-01-31','','744.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2023-01-01','','','','','','False','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(56,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-03-31','1187.6747967479675','1187.6747967479675','kWh','Electricity','NTO India - Feb 1, 2023 - Mar 31, 2023 - Electricity','9780.0','sqft','1.0','1187.6747967479675','','2023-02-01','','','','','','True','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(57,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-07-31','1851.9674796747968','1851.9674796747968','kWh','Electricity','NTO India - May 1, 2023 - Jul 31, 2023 - Electricity','9780.0','sqft','1.0','1851.9674796747968','','2023-05-01','','','','','','True','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(58,'','','DAILY_AVERAGE_CURRENT_YEAR','2023-11-30','1831.8373983739837','1831.8373983739837','kWh','Electricity','NTO India - Sep 1, 2023 - Nov 30, 2023 - Electricity','9780.0','sqft','1.0','1831.8373983739837','','2023-09-01','','','','','','True','9780.0','sqft','1','','1','','7','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(59,'','','','2022-01-31','','644.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2022-01-01','','','','','','False','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(60,'','','','2022-03-31','','674.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2022-03-01','','','','','','False','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(61,'','','','2022-10-31','','694.0','kWh','Electricity','India Energy Use','9780.0','sqft','1.0','','','2022-10-01','','','','','','False','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(62,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-02-28','608.7741935483871','608.7741935483871','kWh','Electricity','NTO India - Feb 1, 2022 - Feb 28, 2022 - Electricity','9780.0','sqft','1.0','608.7741935483871','','2022-02-01','','','','','','True','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(63,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-04-30','652.258064516129','652.258064516129','kWh','Electricity','NTO India - Apr 1, 2022 - Apr 30, 2022 - Electricity','9780.0','sqft','1.0','652.258064516129','','2022-04-01','','','','','','True','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(64,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-09-30','2652.516129032258','2652.516129032258','kWh','Electricity','NTO India - Jun 1, 2022 - Sep 30, 2022 - Electricity','9780.0','sqft','1.0','2652.516129032258','','2022-06-01','','','','','','True','9780.0','sqft','1','','1','','8','2','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(65,'','','DAILY_AVERAGE_CURRENT_YEAR','2022-12-31','1326.258064516129','1326.258064516129','kWh','Electricity','NTO India - Nov 1, 2022 - Dec 31, 2022 - Electricity','9780.0','sqft','1.0','1326.258064516129','','2022-11-01','','','','','','True','9780.0','sqft','1','','1','','8','2','');
CREATE TABLE "StnryAssetEnvrSrc" (
	id INTEGER NOT NULL, 
	"BusinessRegion" VARCHAR(255), 
	"City" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"IsCompanyOwnedAsset" VARCHAR(255), 
	"IsLeedCertified" VARCHAR(255), 
	"LeaseExpirationDate" VARCHAR(255), 
	"LeaseIdentifier" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OccupiedFloorArea" VARCHAR(255), 
	"OccupiedFloorAreaUnit" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"PremiseIdentifier" VARCHAR(255), 
	"State" VARCHAR(255), 
	"StationaryAssetIdentifier" VARCHAR(255), 
	"StationaryAssetType" VARCHAR(255), 
	"StreetAddress" VARCHAR(255), 
	"StreetAddress2" VARCHAR(255), 
	"TotalFloorArea" VARCHAR(255), 
	"TotalFloorAreaUnit" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"AccountNameId" VARCHAR(255), 
	"CrbnEmssnScopeAllocId" VARCHAR(255), 
	"ElectricityEmssnFctrId" VARCHAR(255), 
	"EnvironmentalRiskId" VARCHAR(255), 
	"MktBsdElectriEmssnFctrId" VARCHAR(255), 
	"OtherEmssnFctrId" VARCHAR(255), 
	"ParentEnvironmentalSourceId" VARCHAR(255), 
	"RefrigerantEmssnFctrId" VARCHAR(255), 
	"RegionalBldgEnergyIntensityId" VARCHAR(255), 
	"WstDispoEmssnFctrSetId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "StnryAssetEnvrSrc" VALUES(1,'AMER','','','','True','False','','','NTO Corp','5780.0','sqft','','','','','Office','','','5780.0','sqft','012Ow00000010kLIAQ','6','','1','','','1','','','','');
INSERT INTO "StnryAssetEnvrSrc" VALUES(2,'APAC','','','','False','False','','','NTO India','9780.0','sqft','','','','','Office','','','9780.0','sqft','012Ow00000010kLIAQ','4','','1','','','1','','','','');
INSERT INTO "StnryAssetEnvrSrc" VALUES(3,'Europe','','','','False','False','','','NTO Germany','5700.0','sqft','','','','','Office','','','5700.0','sqft','012Ow00000010kLIAQ','7','','1','','','1','','','','');
INSERT INTO "StnryAssetEnvrSrc" VALUES(4,'LATAM','','','','False','False','','','NTO Mexico','1800.0','sqft','','','','','Office','','','1800.0','sqft','012Ow00000010kLIAQ','5','','1','','','1','','','','');
CREATE TABLE "StnryAssetEnvrSrc_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "StnryAssetEnvrSrc_rt_mapping" VALUES('012Ow00000010kLIAQ','Commercial_Building');
INSERT INTO "StnryAssetEnvrSrc_rt_mapping" VALUES('012Ow00000010kMIAQ','Data_Center');
CREATE TABLE "Supplier" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "WstDispoEmssnFctrSet" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;
