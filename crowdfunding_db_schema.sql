CREATE TABLE category (
    category_id INTEGER PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id INTEGER PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER REFERENCES contacts(contact_id),
    company_name VARCHAR(255) NOT NULL,
    description TEXT,
    goal NUMERIC(10, 2),
    pledged NUMERIC(10, 2),
    outcome VARCHAR(255),
    backers_count INTEGER,
    country VARCHAR(255),
    currency VARCHAR(3),
    launch_date DATE,
    end_date DATE,
    category_id INTEGER REFERENCES category(category_id),
    subcategory_id INTEGER REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;


