# define a temporary function
def times_two(x):
    return x * 2

# The required model() function must return a single DataFrame
def model(dbt, session):
    dbt.config(materialized="table")

    # bring in reference model as dataframe
    payments_glitch = dbt.ref("dim_stripe__payment_details")

    # apply infinite money glitch by using function
    df = payments_glitch.withColumn("amount__glitch", times_two(payments_glitch["amount"]))
    return df
    