
CREATE TABLE account_password_reset (
  person_id INTEGER UNIQUE NOT NULL,
  activation_string CHAR(64) NOT NULL UNIQUE,
  password_reset TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  PRIMARY KEY (person_id),
  FOREIGN KEY (person_id) REFERENCES person (person_id)
) WITHOUT OIDS;

