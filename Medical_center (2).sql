-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE medical_center (
    "medi_id" INT Serial NOT NULL,
    "Medical_Center_name" Text NOT NULL,
    "Doctor_name" Text NOT NULL
);

CREATE TABLE patients (
    "pat_id" INT NOT NULL,
    "pat_name" Text NOT NULL,
    "date_of_birth" Not NULL,
    "insurance_name" Text
);

CREATE TABLE diseases (
    "dis_id" INT NOT NULL,
    "dis_name" Text NOT NULL
);


CREATE TABLE visits(
    "id" INT   NOT NULL,
    "medi_id" Foreign Key,
    "pat_id" Foreign Key,
    "diagnosis_id" Foreign Key
)

CREATE TABLE diagnosis(
    "id" INT PRIMARY Key,
    "dis_id" Foreign Key
)

INSERT INTO medical_center (medical_Center_name ,doctor_name) VALUES ('Palo Alto Medical Center', 'Dr.Shah'),
('Palo Alto Medical Center','Dr.Kaur'),
('Instant care Center','Dr.Bhatt'),
('Shutter Health','Dr.S.M'),
('Shutter Health','Dr.John')

Insert INTO patients_name( pat_name) VALUES ('Tom'),('Jerry'),('stieve')

INSERT INTO Diseases (dis_name) VALUES ('Flu'),('diaherria'), ('food posioning')


Insert INTO patient_record (medi_id,pat_id,dis_id) VALUES (1),(1),(1)