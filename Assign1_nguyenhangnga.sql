CREATE DATABASE IF NOT EXISTS assign1;

USE assign1;


/* create table */
CREATE TABLE trainee (
	trainee_id      INT PRIMARY KEY AUTO_INCREMENT,
    full_name       VARCHAR(50) NOT NULL,
    birth_date      DATE NOT NULL,
    gender          ENUM("male", "female", "unknown"),
    et_iq           TINYINT CHECK(et_iq>=0 and et_iq<=20),
    et_gmath        TINYINT CHECK(et_gmath>=0 and et_gmath<=20),
    et_english      TINYINT CHECK(et_english>=0 and et_english<=50),
    training_class  VARCHAR(50) NOT NULL,
    evalution_notes VARCHAR(255)
    );
    
    ALTER TABLE trainee
    ADD     VTI_account VARCHAR(50) NOT NULL UNIQUE;