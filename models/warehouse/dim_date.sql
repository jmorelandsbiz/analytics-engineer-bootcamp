WITH date_sequence AS (
  {{ dbt_date.get_base_dates(start_date="2014-01-01", end_date="2050-01-01") }}
)
SELECT
  TO_CHAR(date_day, 'YYYY-MM-DD') AS id,
  date_day AS full_date,
  EXTRACT(YEAR FROM date_day) AS year,
  EXTRACT(WEEK FROM date_day) AS year_week,
  EXTRACT(DAY FROM date_day) AS year_day,
  EXTRACT(YEAR FROM date_day) AS fiscal_year,
  TO_CHAR(date_day, 'Q') AS fiscal_qtr,
  EXTRACT(MONTH FROM date_day) AS month,
  TO_CHAR(date_day, 'MMMM') AS month_name,
  TO_CHAR(date_day, 'd') AS week_day,
  TO_CHAR(date_day, 'Day') AS day_name,
  CASE
    WHEN TO_CHAR(date_day, 'Day') IN ('Sunday', 'Saturday') THEN 0
    ELSE 1
  END AS day_is_weekday
FROM date_sequence