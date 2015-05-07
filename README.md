# LoanApp

## Minimum Viable Product
LoanApp is a Rails app that takes user's input and generates a pdf.

- [ ] Create accounts (register)
- [ ] Create sessions (log in)
- [ ] Create documents
- [ ] Generate a PDF
- [ ] View a table of created documents and links to respective PDF docs
- [ ] Host the App on Heroku
- [ ] Host the documents on Amazon S3 services

## Implementation Timeline

### Phase 1: User Authentication (~1 day)
In Phase 1, I'm planning on setting up authentication for the User to create an account and sign in. In addition, I'm going to create Schema, Models and Controllers to generate documents in RAILS. Before starting Phase 2, I will also push the app to Heroku.


### Phase 2: Generate PDF Docs & Views (~1 days)
In this Phase, I will add ability to view documents on the Index page and the ability to generate new ones.

### Phase 3: Styling with HTML & CSS (~1 days)
The final phase will be polishing CSS and HTML to make my UI look amazing.

### Bonus Features (TBD)
- [ ] Write Tests
- [ ] Set up a Mailer to send out an email when a document is generated

## Schema Information

### users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

### documents
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
owner_id      | integer   | not null, foreign key (references users)
name          | string    | not null
loan_amount   | integer   | not null
interest_rate | integer   | not null
downpayment   | integer   | not null
pdf_file_name | integer   | not null
pdf_file_size | integer   | not null
pdf_file_type | integer   | not null
pdf_updated_at| integer   | not null
