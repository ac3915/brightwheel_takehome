with source as (
 select * from {{ source('source1', 'source1') }}
),

renamed as (
    select
        name as client_name,  
        "Credential Type" as credential_type,  
        "Credential Number" as credential_number,  
        Status as client_status,  
        "Expiration Date" as expiration_date,  
        "Disciplinary Action" as disciplinary_action,  
        Address as client_address,  
        State as client_state,  
        County as client_county,  
        Phone as client_phone,  
        "First Issue Date" as first_issue_date,  
        "Primary Contact Name" as client_primary_contact_name,  
        "Primary Contact Role"  as client_primary_contact_role 
    from source
)

select * from renamed
