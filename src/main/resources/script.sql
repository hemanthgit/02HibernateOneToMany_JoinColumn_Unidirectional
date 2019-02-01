CREATE SEQUENCE TEST_SEQUENCE
  MINVALUE 1
  MAXVALUE 999999
  START WITH 1
  INCREMENT BY 1
  CACHE 20;  
-------------------------------
--  DDL for Table POST
-------------------------------
  CREATE TABLE "POST" ("ID" NUMBER(20,0),"TITLE" VARCHAR2(255 BYTE));
----------------------------------
--  DDL for Index POST_PK
----------------------------------
  CREATE UNIQUE INDEX "POST_PK" ON "POST" ("ID") ;
--------------------------------------
--  Constraints for Table POST
--------------------------------------
  ALTER TABLE "POST" ADD CONSTRAINT "POST_PK" PRIMARY KEY ("ID");
  ALTER TABLE "POST" MODIFY ("ID" NOT NULL ENABLE);  
----------------------------------------------
--  DDL for Table POST_COMMENT
----------------------------------------------
  CREATE TABLE "POST_COMMENT" ("ID" NUMBER(20,0),"REVIEW" VARCHAR2(255 BYTE),"POST_ID" NUMBER(20,0));
--------------------------------------------------------
--  DDL for Index POST_COMMENT_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "POST_COMMENT_PK" ON  "POST_COMMENT" ("ID"); 
--------------------------------------------------------
--  Constraints for Table POST_COMMENT
--------------------------------------------------------
  ALTER TABLE "POST_COMMENT" ADD CONSTRAINT "POST_COMMENT_PK" PRIMARY KEY ("ID");
  ALTER TABLE "POST_COMMENT" MODIFY ("ID" NOT NULL ENABLE);
