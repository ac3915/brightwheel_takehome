# brightwheel_takehome

## assumptions
- timestamps are in EST
- fix location, join to state code CSV
- assumed timestamps are coming in as timestamps and not string
- probably join by phone number if not ID but not ideal because phone number can change 

## writeup 
Work that needs to be done
- finish cleaning each staging model (standardize fields, rename to columns to something useful, clean names, align state code)
- finish creating intermediate model of salesforce leads
- identify that ID fields are unique to determine if an ID needs to be created
- use modified date (or create one if not available) to determine if changes have been made
- rename source to something actually useful but sake of speed, kept as is

Future work
- Incremental model instead of pulling full refresh to determine if changes have been made 
- Identify leads with biggest market / being worked based on last touch date 
