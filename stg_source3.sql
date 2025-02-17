with source as (
 select * from {{ source('source3', 'source3') }}
),

renamed as (
    select
        Operation as operation_id,  
        "Agency Number" as agency_number,  
        "Operation Name" as operation_name,  
        Address as operation_address,  
        City as operation_city,  
        State as operation_state,  
        Zip as operation_zipcode,  
        County as operation_county,  
        Phone as operation_phone,  
        Type as operation_type,  
        Status as operation_status,  
        "Issue Date" as operation_issue_date,  
        Capacity as operation_capacity,  
        "Email Address" as operation_email_address,  
        "Facility ID" as facility_id,  
        "Monitoring Frequency" as monitoring_frequency,  
        Infant as accepts_infants,  
        Toddler as accepts_toddlers,  
        Preschool as accepts_preschool,  
        School as accepts_school
from source
)

select * from renamed
