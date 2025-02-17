with stg_salesforce_leads as (
select * from {{ ref('stg_salesforce_leads') }}
),

seed_region as (
    select * from {{ ref('region') }}
),

salesforce_leads as (
    select
        lead_last_name,
        lead_first_name,
        coalesce(stg_salesforce_leads.lead_state_province, seed_region.state_name) as lead_state_province,

from stg_salesforce_leads
left join seed_region on seed_region.state = stg_salesforce_leads.lead_state_province
)
