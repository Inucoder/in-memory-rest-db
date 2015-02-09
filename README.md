# In-memory REST database

Simple Node.js + Express application that provides an in-memory, schema-less and fast database implementation. Queries can be made via a REST API.

## Installation

Clone the files into a new folder. Run Bower and NPM to fetch dependencies as follows:

```bash
bower install
npm install
```

Run server using Grunt (default is http://localhost:3000):

```bash
grunt
```

## Usage

Query the database at url SERVER_URL/db. JSON must be used as raw body content.

```
GET /db
GET /db/:id
POST /db
PUT /db/:id
DELETE /db/:id
DELETE /db
```
