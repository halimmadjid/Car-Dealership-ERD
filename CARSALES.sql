CREATE TABLE "car" (
  "vin_id" SERIAL,
  "color" VARCHAR(100),
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "_year" NUMERIC(4),
  PRIMARY KEY ("vin_id")
);

CREATE TABLE "salesperson_invoice" (
  "salesperson_id" INTEGER,
  "invoice_num" INTEGER
);

CREATE TABLE "service_invoice" (
  "invoice_id" SERIAL,
  "date_serviced" DATE,
  "customer_id" INTEGER,
  "part_id" INTEGER,
  "vin_id" INTEGER,
  PRIMARY KEY ("invoice_id")
);

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "sales_hire_date" DATE,
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "parts" (
  "part_id" SERIAL,
  "part_name" VARCHAR(150),
  "part_cost" NUMERIC(10,2),
  "part_quantity" INTEGER,
  PRIMARY KEY ("part_id")
);

CREATE TABLE "labor" (
  "invoice_id" INTEGER,
  "mechanic_id" INTEGER,
  "services_id" INTEGER,
  "labor_cost" NUMERIC(10,2)
);

CREATE TABLE "services" (
  "services_id" SERIAL,
  "services_name" VARCHAR(150),
  PRIMARY KEY ("services_id")
);

CREATE TABLE "sale_invoice" (
  "invoice_num" SERIAL,
  "date_sold" DATE,
  "amount" NUMERIC(10,2),
  "msrp" NUMERIC(10,2),
  "customer_id" INTEGER,
  "vin_id" INTEGER,
  PRIMARY KEY ("invoice_num")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "birth_date" DATE,
  "email" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "mech_hire_date" DATE,
  PRIMARY KEY ("mechanic_id")
);

INSERT INTO car(vin_id,color,make,model,_year)
VALUES(123445,'Blue','Totyoa','Jaguar','2021');

INSERT INTO mechanic(mechanic_id,first_name,last_name,mech_hire_date)
VALUES(134998773,'JOhny','Kimbere','23 JAN 2012');
