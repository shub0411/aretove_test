 WITH DATE AS (
 
 select  
    DATE_DAY AS Date_day,
    PRIOR_DATE_DAY AS Prior_Date_Day,
    NEXT_DATE_DAY AS Next_Date_Day,
    PRIOR_YEAR_DATE_DAY AS Prior_Year_Datee_Day,
    PRIOR_YEAR_OVER_YEAR_DATE_DAY AS Prior_year_over_year_date_day
  from {{ ref('date') }}

 )

 SELECT * FROM DATE