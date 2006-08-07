
CREATE TABLE master.conference_image(
  conference_id INTEGER NOT NULL,
  mime_type TEXT NOT NULL,
  image BYTEA NOT NULL
) WITHOUT OIDS;

-- this is the real event table
CREATE TABLE conference_image(
  PRIMARY KEY(conference_id),
  FOREIGN KEY(conference_id) REFERENCES conference(conference_id),
  FOREIGN KEY(mime_type) REFERENCES mime_type(mime_type)
) INHERITS(master.conference_image);

CREATE TABLE logging.conference_image() INHERITS(master.conference_image);

