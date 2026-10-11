# Mobile Recommendation System (DDS)

A database-driven mobile recommendation system built around Oracle SQL scripts and site-specific database connectivity. The project organizes mobile product data, customer details, and search logic for recommending phones based on category and attributes such as OS, display size, battery, RAM, ROM, camera, and price.

## Overview

This repository contains:

- SQL scripts for creating and populating mobile product tables
- Customer and phone recommendation data
- Oracle database link configuration examples
- Multiple site folders representing different project variants or site setups

The project is centered on a mobile product catalog and can be extended to support recommendation queries, filtering, and customer data lookups.

## Features

- Mobile catalog management for Android and iPhone models
- Product attributes including:
  - model name
  - OS
  - processor
  - RAM
  - ROM
  - camera
  - price
  - brand
- Customer records with city and customer ID
- SQL scripts for:
  - insertion of product data
  - searching and filtering records
  - customer record management
  - phone deletion and updates
- Oracle database link setup for remote connectivity

## Repository Structure

```text
Mobile-Recommendation-System-DDS-
├── Ariitra_Site2/
│   ├── Server_Swarnajit/
│   │   ├── CUSTOMER_ADD.sql
│   │   ├── CUSTOMER_SEARCH.sql
│   │   ├── Customer_delete.sql
│   │   ├── DELETE-PHN.sql
│   │   ├── phone_insert.sql
│   │   └── SIte changes.txt
│   └── Site/
│       ├── conn.txt
│       ├── database.txt
│       ├── search_all.sql
│       └── search_core.sql
├── SwarnaJit_Site1/
│   ├── Server_Swarnajit/
│   └── Site/
│       ├── CUSTOMER_ADD.sql
│       ├── CUSTOMER_SEARCH.sql
│       ├── DELETE-PHN.sql
│       ├── phone_insert.sql
│       └── SIte changes.txt
├── conn.sql
└── README.md
```

## Database Setup

The project uses Oracle SQL and database links. The file `conn.sql` defines a database link named `site_friend` and connects to an Oracle XE instance using a remote TCP address.

Example flow:

1. Configure Oracle SQL*Plus or Oracle Database access.
2. Update the connection values in `conn.sql` if required:
   - host
   - port
   - SID
   - username/password
3. Run the SQL file in Oracle SQL*Plus.
4. Execute the relevant SQL scripts from the site folders to create and populate tables.

## Main SQL Scripts

- `conn.sql` – database link configuration
- `CUSTOMER_ADD.sql` – add customer records
- `CUSTOMER_SEARCH.sql` – search customer data
- `DELETE-PHN.sql` – delete phone entries
- `phone_insert.sql` – insert phone products
- `database.txt` – sample schema and mock product data
- `search_all.sql` and `search_core.sql` – query examples for product filtering and recommendation logic

## Example Data Model

The project includes tables such as:

- `android_core_mobile3`
- `iphone_core_mobile1`
- `Android_Fency_Mobile4`
- `Iphone_Fency_Mobile2`
- `Customer2`

These tables store phone specifications and customer information for mobile recommendations.

## Typical Use Case

This system can be used to:

- display available mobile phones
- compare Android and iPhone products
- filter phones by price, RAM, ROM, camera, and brand
- search customer information
- support recommendation-based browsing based on product attributes

## Prerequisites

- Oracle Database / SQL*Plus
- Access to a local or remote Oracle XE instance
- SQL client capable of executing `.sql` scripts

## Notes

This repository appears to contain multiple project versions or site copies (`Ariitra_Site2` and `SwarnaJit_Site1`) and is intended as a learning or prototype project for a mobile recommendation and database-driven web system.

## License

No explicit license is specified in the repository.

## Contributing

If you want to extend this project, you can:

- add a proper database schema file
- normalize the SQL tables
- build a web frontend over the SQL queries
- add recommendation logic based on user preferences
