WITH CREDIT_CARD AS 
(

SELECT
    CREDITCARDID as CREDIT_CARD_ID,
    CARDTYPE as CARD_TYPE,
    CARDNUMBER as CARD_NUMBER,
    EXPYEAR as EXP_YEAR,
    EXPMONTH as EXP_MONTH,
    MODIFIEDDATE as MODIFIED_DATE
FROM {{ ref ('creditcard')}}
)


SELECT * FROM CREDIT_CARD