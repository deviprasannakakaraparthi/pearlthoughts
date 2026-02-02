

# Strapi Local Setup – ASK-1

## Overview
This project demonstrates a local Strapi setup for ASK-1. It includes a Country content type with sample entries and exposes the data via API. This README documents all steps taken to set up the project locally, explore the code, run Strapi, and interact with the API.

## Project Structure



DAY1/
├── src/
│ └── api/
│ └── country/ # Country content type
├── config/ # Project and database configurations
├── .tmp/ # Local SQLite database (sample entries)
├── package.json # Project dependencies and scripts
└── package-lock.json


**Key Notes:**
- `src/api/country` contains the model, controller, and routes for the Country content type.
- `.tmp/data.db` is the SQLite database used for local development.

## Steps to Run Locally

1. Open Terminal and navigate to the project folder:

```powershell
cd C:\Users\devip\OneDrive\Desktop\PearlThoughts\DAY1


Install dependencies


yarn install


Start Strapi in development mode:

yarn develop


Open the Admin Panel in your browser:

http://localhost:1337/admin


Log in to the Admin Panel and explore:

Content-Types Builder → See the Country content type

Content Manager → See entries for Country (sample data)

API → http://localhost:1337/api/countries returns JSON data


Country Content Type Details
Field Name	Type	Description
name	Text	Name of the country
population	Number	Population of the country
isActive	Boolean	Active status of the country
API Endpoint


http://localhost:1337/api/countries
