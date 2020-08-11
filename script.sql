DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS cars CASCADE;
DROP TABLE IF EXISTS mechanic CASCADE;
DROP TABLE IF EXISTS serviceRequest CASCADE;
DROP TABLE IF EXISTS checks CASCADE;
DROP TABLE IF EXISTS owns CASCADE;

CREATE TABLE customer(	CID		INTEGER NOT NULL,
			first_name	CHAR(20),
			last_name	CHAR(20),
			phone_number	INTEGER,
			address 	CHAR(50),
			PRIMARY KEY (CID) );
			--FOREIGN KEY (VIN) REFERENCES cars );
				

CREATE TABLE cars(	VIN		INTEGER NOT NULL,
			make		CHAR(20),
			model		CHAR(20),
			year		INTEGER,
			PRIMARY KEY(VIN) );
			--FOREIGN KEY(CID) REFERENCES customer,
			--FOREIGN KEY(employee_id) REFERENCES mechanic,
			--FOREIGN KEY(SID) REFERENCES serviceRequest );
				


CREATE TABLE mechanic(	first_name 	CHAR(20),
			last_name	CHAR(20),
			employee_id	INTEGER NOT NULL,	
			years_of_exp	INTEGER, 
			PRIMARY KEY(employee_id) );
			--FOREIGN KEY(VIN) REFERENCES cars,
			--FOREIGN KEY(SID) REFERENCES customer);
				
CREATE TABLE serviceRequest(	SID			INTEGER NOT NULL,
				problem 		CHAR(20),
				bill			INTEGER,
				odometer_reading	INTEGER,
				statement		CHAR(20),
				status			CHAR(20),
				close_date		DATE,
				open_date		DATE,
				PRIMARY KEY(SID) );
				--FOREIGN KEY(employee_id) REFERENCES Mechanic, 
				--FOREIGN KEY(VIN) REFERENCES Cars );

CREATE TABLE checks (	VIN 		INTEGER NOT NULL,
			SID		INTEGER, 
			drop_off 	CHAR(20),
			PRIMARY KEY(VIN,SID) );
			--FOREIGN KEY(VIN) REFERENCES Cars,
			--FOREIGN KEY(SID) REFERENCES serviceRequest );


CREATE TABLE owns (	CID		INTEGER NOT NULL,
			VIN		INTEGER NOT NULL,
			PRIMARY KEY(CID,VIN) );
			--FOREIGN KEY(CID) REFERENCES Customer,
			--FOREIGN KEY(VIN) REFERENCES Cars); 

CREATE TABLE workson (	employee_id 	INTEGER NOT NULL,
			VIN		INTEGER NOT NULL,
			PRIMARY KEY(employee_id, VIN) ); 
			--FOREIGN KEY(employee_id) REFERENCES mechanic,
			--FOREIGN KEY(VIN) REFERENCES cars );

CREATE TABLE creates (	employee_id	INTEGER NOT NULL,
			SID		INTEGER NOT NULL,
			PRIMARY KEY(employee_id, SID) );
			--FOREIGN KEY(employee_id) REFERENCES mechanic,
			--FOREIGN KEY(SID) REFERENCES serviceRequest ); 					

