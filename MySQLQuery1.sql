Create database soft;
Create table CompanyMasterZ
(
Id int NOT NULL,
Name Varchar (255),
Status int,
Primary Key (ID)
);

INSERT INTO CompanyMasterZ VALUES('11', 'ABC', '0');
INSERT INTO CompanyMasterZ VALUES('12', 'XYZ', '1');

Select * from CompanyMasterZ

Create table FileMaster
(
Id int NOT NULl,
FileName VARCHAR,
CompanyId int,
CONSTRAINT PK_FileMaster PRIMARY KEY(CompanyId),
CONSTRAINT FK_FileMaster_CompanyMasterZ FOREIGN KEY (CompanyId) REFERENCES CompanyMasterZ(Id)
);

