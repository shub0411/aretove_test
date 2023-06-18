WITH STATE_PROVINCE AS 
(

SELECT
    STATEPROVINCEID as STATE_PROVINCE_ID,
    TERRITORYID as TERRITORY_ID,
    COUNTRYREGIONCODE as COUNTRY_REGION_CODE,
    NAME as STATE_NAME,
    STATEPROVINCECODE as STATE_PROVINCE_CODE,
    ISONLYSTATEPROVINCEFLAG as IS_ONLY_STATE_PROVINCE_FLAG,
    ROWGUID as ROW_GUID,
    MODIFIEDDATE as MODIFIED_DATE
FROM {{ ref ('stateprovince')}}
)


SELECT * FROM STATE_PROVINCE