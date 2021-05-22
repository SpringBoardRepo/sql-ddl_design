-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "medical_center" (
    "medi_id" int Serial NOT NULL,
    "Medical_Center_name" String   NOT NULL,
    "Doctor_name" string   NOT NULL
);

CREATE TABLE "patients_name" (
    "pat_id" int   NOT NULL,
    "pat_name" Stirng   NOT NULL
    'medi_id' ForeignKey REFERENCES medical_center(medi_id)
);

CREATE TABLE "Diseases" (
    "dis_id" int   NOT NULL,
    "dis_name" String   NOT NULL
);

CREATE TABLE "patient_record" (
    "id" int   NOT NULL,
    "medi_id" int  REFERENCES patients_name(medi_id),
    "pat_id" int  REFERENCES medical_center(pat_id) ,
    "dis_id" int   REFERENCES medical_center(dis_id)
)

INSERT INTO medical_center (medical_Center_name ,doctor_name) VALUES ('Palo Alto Medical Center', 'Dr.Shah'),
('Palo Alto Medical Center','Dr.Kaur'),
('Instant care Center','Dr.Bhatt'),
('Shutter Health','Dr.S.M'),
('SHutter Health','Dr.John')

Insert INTO patients_name( pat_name) VALUES ('Tom'),('Jerry'),('stieve')

INSERT INTO Diseases (dis_name) VALUES ('Flu'),('diaherria'), ('food posioning')


Insert INTO patient_record (medi_id,pat_id,dis_id) VALUES (1),(1),(1)