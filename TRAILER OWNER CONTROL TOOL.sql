SELECT 
distinct (x1.eluid) as NACZEPA, 
x1.carrier as Z, 
x2.carrier as NA, 
x2.eshpid as DLA 

FROM
(
    SELECT 
    * 
    
    FROM 
    ASTRO_VIEW_CNT_LUALL

    WHERE
    lustatus in (1,20)

)x1

INNER JOIN

(
    SELECT 
    * 
    
    FROM 
    ASTRO_VIEW_CNT_CONSLU
)x2

on
x1.eluid = x2.reqeluid

WHERE
x2.delstat in (10,20)
AND x1.carrier != x2.carrier
