with source as (
 select * from {{ source('source2', 'source2') }}
),


renamed as (
    select
        "Type License" as license_type,  
        Company,  
        "Accepts Subsidy" ,  
        "Year Round",  
        "Daytime Hours",  
        left("Star Level", 1) as star_level, 
        Mon as mon_hours,  
        Tues as tues_hours,  
        Wed as wed_hours,  
        Thurs as thurs_hours,  
        Friday as fri_hours,  
        Saturday as sat_hours,  
        Sunday as sun_hours,   
        split_part("Primary Caregiver", '\n', 1) as primary_caregiver,
        regexp_replace(phone, '[-()]', '') as company_phone, 
        Email,  
        Address1,  
        Address2,  
        City,  
        State,  
        Zip,  
        "Subsidy Contract Number" as subisidy_contract_number,  
        "Total Cap" as total_capacity,  
        "Ages Accepted 1" as ages_accepted,  
        AA2,  
        AA3,  
        AA4,  
        "License Monitoring Since" as license_monitoring_start,  
        "School Year Only" as school_year_schedule,  
        "Evening Hours" as evening_hours 
)

select * from renamed 
