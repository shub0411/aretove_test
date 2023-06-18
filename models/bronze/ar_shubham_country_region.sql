WITH COUNTRY_REGION AS (
    
SELECT
    NAME as COUNTRY_NAME,
    COUNTRYREGIONCODE as COUNTRY_REGION_CODE,
    MODIFIEDDATE as MODIFIED_DATE
FROM {{ ref ('countryregion')}}
)

SELECT * FROM COUNTRY_REGION