/*Create Table dummy*/

CREATE TABLE "LMP_USER_MGMT"."DUMMY_ALBERT" 
(
   	"ID" VARCHAR2(50) NOT NULL ENABLE, 
	"VERSION" VARCHAR2(50), 
	"NAME" VARCHAR2(50), 
	"AMOUNT" NUMBER,
	"DETAILS" CLOB,
	"CREATED_DATE" DATE, 
	"CREATED_BY" VARCHAR2(50),  
	"UPDATED_DATE" DATE, 
	"UPDATED_BY" VARCHAR2(50),  
	"IS_DELETE" NUMBER(1,0), 
	"STATUS" VARCHAR2(50), 
	PRIMARY KEY ("ID"),
	CONSTRAINT "DUMMY_ALBERT_FK_CREATED_BY" FOREIGN KEY ("CREATED_BY") REFERENCES "LMP_USER_MGMT"."LMP_USER"("ID") ENABLE,
	CONSTRAINT "DUMMY_ALBERT_FK_UPDATED_BY" FOREIGN KEY ("UPDATED_BY") REFERENCES "LMP_USER_MGMT"."LMP_USER"("ID") ENABLE
	 );

	SELECT * FROM DUMMY_ALBERT  
	
	ALTER TABLE "LMP_USER_MGMT"."DUMMY_ALBERT" MODIFY (
    AMOUNT INVISIBLE,
	DETAILS INVISIBLE,
	CREATED_DATE INVISIBLE,
	CREATED_BY INVISIBLE,
	UPDATED_DATE INVISIBLE,
	UPDATED_BY INVISIBLE,
	IS_DELETE INVISIBLE,
	STATUS INVISIBLE
);

ALTER TABLE "LMP_USER_MGMT"."DUMMY_ALBERT" ADD "LOGDATE" DATE DEFAULT SYSDATE NOT NULL;

ALTER TABLE "LMP_USER_MGMT"."DUMMY_ALBERT" MODIFY (
    AMOUNT VISIBLE,
	DETAILS VISIBLE,
	CREATED_DATE VISIBLE,
	CREATED_BY VISIBLE,
	UPDATED_DATE VISIBLE,
	UPDATED_BY VISIBLE,
	IS_DELETE VISIBLE,
	STATUS VISIBLE
);

ALTER TABLE "LMP_USER_MGMT"."DUMMY_ALBERT" ADD "IS_PROCESSED" NUMBER(1,0);
