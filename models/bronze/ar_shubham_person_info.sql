WITH PERSON_INFO AS (

SELECT 
    BUSINESSENTITYID as BUSINESS_ENTITY_ID,
    TITLE as TITLE,
    FIRSTNAME AS FIRST_NAME,
    MIDDLENAME AS MIDDLE_NAME,
    LASTNAME AS LAST_NAME,
    CONCAT(COALESCE(FIRST_NAME,''),' ',COALESCE(MIDDLE_NAME,''),' ',COALESCE(LAST_NAME,'')) AS FULL_NAME,
    ---IF THERE IS NULL IN MIDDLE NAME THEN WE ARE GETTING TWO SPACES IN B/W FIRST AND LAST NAME
    PERSONTYPE AS PERSON_TYPE,
    NAMESTYLE AS NAME_STYLE,
    SUFFIX AS SUFFIX,
    MODIFIEDDATE AS MODIFIED_DATE,
    ROWGUID AS ROW_GUID,
    EMAILPROMOTION AS EMAIL_PROMOTION
FROM {{ ref ('person')}}
)

SELECT * FROM PERSON_INFO