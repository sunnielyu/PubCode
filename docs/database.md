# PubCode Database

Note: The current iteration of the PubCode site demo uses a PostGreSQL database out of convenience. The schema is 
documented here, but is subject to frequent changes.

## Schema

* The schema is located [here](../server/db/pubcode_schema.sql) and is loaded with initialization of the server Docker 
container.

| Name              | Format        | Description                                                                   |
|-------------------|---------------|-------------------------------------------------------------------------------|
| CodeTitle         | VARCHAR (20)  | Name of code package to be added                                              |
| PCID              | SERIAL        | Unique PubCode identifier (sequentially generated on insertion)               |
| PMID              | VARCHAR (20)  | Unique numeric PubMed identifier                                              |
| PMCID             | VARCHAR (20)  | Unique numeric PubMed Central identifier                                      |
| CodePubDate       | DATE          | Date of code publication/release                                              |
| Authors           | VARCHAR (500) | Authors associated with code (comma separated list of names)                  |
| Language          | VARCHAR (50)  | Language code package is written in (ex. Python, Java, R)                     |
| Distribution      | VARCHAR (500) | Method of code distribution (ex. binary, package manager, source code)        |
| OS                | VARCHAR (20)  | Supported operating systems                                                   |
| Dependencies      | VARCHAR (500) | List of package dependencies and their versions                               |
| Licensing         | VARCHAR (20)  | Open source code licensing (ex. MIT, GPL)                                     |
| Version           | VARCHAR (10)  | LTS version of distributed code                                               |
| Keywords          | VARCHAR (500) | Array of searchable keywords based on package function (ex. ['key', 'word'])  |
| DatasetIDs        | VARCHAR (20)  | List of associated sample datasets (dataset table not yet implemented)        |
| Url               | VARCHAR (50)  | Web url to code distribution (if applicable) or source code                   |
| GH_Forks          | INTEGER       | Number of forks on GitHub (if applicable)                                     |
| GH_OpenIssues     | INTEGER       | Number of open issues on GitHub (if applicable)                               |
| GH_ClosedIssues   | INTEGER       | Number of closed issues on GitHub (if applicable)                             |
| GH_DateUpdate     | DATE          | Date of last code update on GitHub (if applicable)                            |
| Description       | TEXT          | Brief description about the intended use case for the packaged code           |
| QuickStart        | TEXT          | Instructions on how to use/test code including sample datasets (if applicable)|
| Documentation     | TEXT          | Detailed code documenation and/or link to documentation                       |

## Adding New Entries

* At the moment, new entries to PubCode need to be added from the backend, directly into the PostGreSQL database. This
  can be achieved through the [pgAdmin](https://www.pgadmin.org/) GUI or a SQL script.
* For development, data is loaded through a [SQL script](../server/db/init_data.sql) and new values can be added and 
  pushed to the repository following the same format.