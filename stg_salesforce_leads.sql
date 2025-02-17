with source as (
    select * from {{ source('salesforce', 'salesforce_leads') }}
),

renamed as (
    select
        id as salesforce_id,  
        is_deleted,  
        last_name as lead_last_name,  
        initcap(first_name) as lead_first_name,  
        title,  
        company as lead_company,  
        street as lead_street,  
        city as lead_city,  
        state as lead_state_province,  
        postal_code as lead_postal_code,  
        country as lead_country,  
        phone as lead_phone,  
        mobile_phone as lead_mobile_phone,  
        email as lead_email,  
        website as lead_website,  
        lead_source,  
        status as lead_status,  
        is_converted,  
        created_date as lead_created_at_est,  
        last_modified_date as lead_last_modified_at_est,  
        last_activity_date as lead_last_activity_at_est,  
        last_viewed_date as lead_last_viewed_at_est,  
        last_referenced_date as lead_last_referenced_at_est,  
        email_bounced_reason,  
        email_bounced_date,  
        outreach_stage_c as lead_outreach_stage,  
        current_enrollment_c as lead_current_enrollment,  
        capacity_c as lead_capacity,  
        lead_source_last_updated_c as lead_source_last_updated_at_est,  
        brightwheel_school_uuid_c as brightwheel_school_id
    from source
)

select * from final 
