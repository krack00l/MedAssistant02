PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS disease_symptom;
DROP TABLE IF EXISTS symptoms;
DROP TABLE IF EXISTS precautions;
DROP TABLE IF EXISTS diseases;

CREATE TABLE diseases(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    en_name TEXT NOT NULL,
    ru_name TEXT,
    description TEXT NOT NULL
);

CREATE TABLE precautions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    disease_id INTEGER,
    description TEXT NOT NULL,
    FOREIGN KEY (disease_id) REFERENCES diseases (id) ON DELETE CASCADE
);

CREATE TABLE symptoms(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    en_name TEXT NOT NULL,
    ru_name TEXT,
    weight INTEGER
);

CREATE TABLE disease_symptom(
    record_number INTEGER,
    disease_id INTEGER,
    symptom_id INTEGER,
    PRIMARY KEY (record_number, disease_id, symptom_id),
    FOREIGN KEY (symptom_id) REFERENCES symptoms (id) ON DELETE CASCADE,
    FOREIGN KEY (disease_id) REFERENCES diseases (id) ON DELETE CASCADE
);
