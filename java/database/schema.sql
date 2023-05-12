BEGIN TRANSACTION;

DROP TABLE IF EXISTS image, appointment_service, appointment, client, stylist, service, end_user;

CREATE TABLE end_user (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL CHECK (role IN ('ROLE_ADMIN', 'ROLE_STYLIST', 'ROLE_FRONT_DESK', 'ROLE_MGMT', 'ROLE_CLIENT')),
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE client (
	client_id serial,
	user_id integer NOT NULL,
	first_name varchar(64),
	last_name varchar(64) NOT NULL,
	phone_number varchar(12) NOT NULL,
	email varchar(64),
	address1 varchar(100),
	address2 varchar(100),
	zip varchar(20),
	notes varchar(1000),
	active boolean DEFAULT true,
	CONSTRAINT pk_client PRIMARY KEY (client_id),
	CONSTRAINT fk_client_user FOREIGN KEY (user_id) REFERENCES end_user (user_id)
);

CREATE TABLE stylist (
	stylist_id serial,
	user_id integer NOT NULL,
	first_name varchar(64),
	last_name varchar(64) NOT NULL,
	phone_number varchar(12) NOT NULL,
	email varchar(64),
	address1 varchar(100),
	address2 varchar(100),
	zip varchar(20),
	hourly_rate decimal DEFAULT 55,
	active boolean DEFAULT true,
	CONSTRAINT pk_stylist PRIMARY KEY (stylist_id),
	CONSTRAINT fk_stylist_user FOREIGN KEY (user_id) REFERENCES end_user (user_id)
);

CREATE TABLE service (
	service_id serial,
	name varchar(64) NOT NULL,
	type varchar(64) NOT NULL CHECK (type IN ('haircut', 'color', 'vivid color', 'styling', 'consult')),
	base_time_minutes integer NOT NULL,
	description varchar(5000) NOT NULL,
	CONSTRAINT pk_service PRIMARY KEY (service_id)
);

CREATE TABLE appointment (
	appointment_id serial,
	client_id integer NOT NULL,
	stylist_id integer NOT NULL,
	booked_time timestamptz NOT NULL,
	charged_amount decimal DEFAULT 0,
	notes varchar(1000),
	CONSTRAINT pk_appointment PRIMARY KEY (appointment_id),
	CONSTRAINT fk_appointment_client FOREIGN KEY (client_id) REFERENCES client (client_id),
	CONSTRAINT fk_appointment_stylist FOREIGN KEY (stylist_id) REFERENCES stylist (stylist_id)
);

CREATE TABLE appointment_service(
	appointment_id integer NOT NULL,
	service_id integer NOT NULL,
	CONSTRAINT pk_appointment_service PRIMARY KEY (appointment_id, service_id),
	CONSTRAINT fk_appointment_service_appointment FOREIGN KEY (appointment_id) REFERENCES appointment (appointment_id),
	CONSTRAINT fk_appointment_service_service FOREIGN KEY (service_id) REFERENCES service (service_id)
);

CREATE TABLE image(
	image_id serial,
	client_id integer NOT NULL,
	appointment_id integer,
	path varchar(150) NOT NULL,
	date_uploaded timestamptz NOT NULL,
	notes varchar(1000),
	CONSTRAINT pk_image PRIMARY KEY (image_id),
	CONSTRAINT fk_image_client FOREIGN KEY (client_id) REFERENCES client (client_id),
	CONSTRAINT fk_image_appointment FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id)
);

COMMIT TRANSACTION;
