SELECT
    YEAR (purchase_date) AS festival_year,
    SUM(purchase_price) AS total_revenue
FROM
    ticket
WHERE
    purchase_price IS NOT NULL
GROUP BY
    festival_year
ORDER BY
    festival_year;

-- ok