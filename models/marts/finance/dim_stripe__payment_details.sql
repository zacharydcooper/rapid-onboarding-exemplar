select
    -- ids
    payment_id,
    order_id,
    
    -- descriptions
    payment_method,
    status,
    amount, -- amount is stored in cents, convert it to dollars
    
    -- datetimes
    created_at,
    natural_fake_date

from {{ ref("stg_stripe__payments")}}