CREATE TABLE customer(	CID		INTEGER
			first_name	CHAR(20),
			last_name	CHAR(20),
			phone_number	INTEGER
			address 	CHAR(50),
			PRIMARY KEY (CID),
			FOREIGN KEY (VIN) REFERENCES cars )
				

CREATE TABLE cars(	VIN		INTEGER,
			make		CHAR(20),
			model		CHAR(20),
			year		INTEGER,
			PRIMARY KEY(VIN),
			FOREIGN KEY(CID) REFERENCES customer,
			FOREIGN KEY(employee_id) REFERENCES mechanic,
			FOREIGN KEY(SID) REFERENCES serviceRequest )
				


CREATE TABLE mechanic(	first_name 	CHAR(20),
			last_name	CHAR(20),
			employee_id	INTEGER	
			years_of_exp	INTEGER, 
			PRIMARY KEY(employee id)
			FOREIGN KEY(VIN),
			FOREIGN KEY(SID) )
				
CREATE TABLE serviceRequest(	SID			INTEGER,
				problem 		CHAR(20),
				bill			INTEGER,
				odometer_reading	INTEGER,
				statement		CHAR(20),
				status			CHAR(20),
				close_date		DATE,
				open_date		DATE,
				PRIMARY KEY(SID), 
				FOREIGN KEY(employee id) REFERENCES Mechanic, 
				FOREIGN KEY(VIN) REFERENCES Cars ) 

CREATE TABLE checks (	VIN 		INTEGER,
			SID		INTEGER, 
			drop_off 	CHAR(20),
			PRIMARY KEY(VIN,SID), 
			FOREIGN KEY(VIN) REFERENCES Cars,
			FOREIGN KEY(SID) REFERENCES serviceRequest )


CREATE TABLE owns (	CID		INTEGER
			VIN		INTEGER
			PRIMARY KEY(CID,VIN)
			FOREIGN KEY(CID) REFERENCES Customer
			FOREIGN KEY(VIN) REFERENCES Cars) 

CREATE TABLE workson (	employeeID 	INTEGER,
			VIN		INTEGER,
			PRIMARY KEY(employee id, VIN) 
			FOREIGN KEY(employee ID) REFERENCES mechanic,
			FOREIGN KEY(VIN) REFERENCES cars )

CREATE TABLE creates (	employeeID	INTEGER,
			SID		INTEGER,
			PRIMARY KEY(employeeID, SID),
			FOREIGN KEY(employeeID) REFERENCES mechanic,
			FOREIGN KEY(SID) REFERENCES serviceRequest ) 					

