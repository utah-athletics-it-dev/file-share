# README #

Welcome to ProhiBet! This README is a quick overview of the ProhiBet List Provider application. You can find an installation guide and integration guide in the Documentation folder, and there is additional documentation within the Docker container.

## Table of Contents ##

1. What is ProhiBet?
2. What is a List Provider App?
3. Installation Instructions (Documentation/README.md)
4. Integration Instructions (Documentation/INTEGRATION.md)

## What is ProhiBet? ##

In nearly every jurisdiction where sports betting is allowed, there are exceptions for certain individuals involved with sporting events (e.g. athletes, coaches, administrators, etc.). However, identifying when these individuals attempt to place prohibited wagers while maintaining their data privacy is a challenge. ProhiBet is the solution to that problem.

ProhiBet allows leagues and sports properties to create lists of prohibited bettors and allows sportsbook operators to check their users against those lists all while maintaining the privacy of individuals on all sides. ProhiBet's apps convert all sensitive data (including PII) into one-way, irreversible hashes before it ever leaves the clients' servers, ensuring the highest data privacy standards. ProhiBet compares the hashes in the cloud and sends alerts to both sports properties and operators whenever the system identifies a potential match.


### What is a List Provider App? ###

A ProhiBet List Provider application is designed to allow leagues and sports properties to upload and manage a list of individuals associated with the organization who are prohibited from wagering on certain sports, leagues or competitions. The league or sports property indicates what each individual is prohibited from betting on. ProhiBet, other leagues and sportsbook operators do not know what has been uploaded to the list, but if an individual on that list is checked by an operator, an alert will be generated for the league. The application consists of a UI accessible through a web browser and a local API for direct integration. The application takes in personal info like this listed below. (Not all fields are required, but more data allows for higher match confidence and less likelihood of false positives.)

* First Name
* Last Name
* ZIP Code
* Date of Birth
* Last 4 of SSN
* Email Address
* Phone Number (Cell)
* Driver's License Number & State
* Prohibited League / Sport

All of this PII information is irreversibly hashed after it is ingested by the app and before it ever leaves your network. The app will connect with ProhiBet's detection server to compare your hashes with the hashes generated from operator users. Alerts from any matches that suggest a prohibited wager was attempted will be returned to your app. This will generate email alerts to the address you have provided to us and Flagged Incidents within the application UI.

### Installation Instructions (Documentation/README.md)###

For instructions on installing your ProhiBet app, please navigate to the Documentation folder and open the README.md file there.

### Integration Instructions (Documentation/INTEGRATION.md)###

For instructions on integrating your system directly with the ProhiBet app and using our local API, please navigate to the Documentation folder and open the INTEGRATION.md file there. This will direct you on how to enter the ProhiBet Docker container, where you will find additional instructions, example scripts, and detailed security and architecture documents.
