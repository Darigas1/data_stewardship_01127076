/****** Script for SelectTopNRows command from SSMS  ******/
SELECT a.YearQuarter, a.country_code, convert(decimal(14,2), a.value) as GDP_percent, convert(decimal(14,2), b.value) as MIO_NAC
into [Data_Stewardship].[dbo].[General_government_gross_debt_final]
  FROM (select * from [Data_Stewardship].[dbo].[General_government_gross_debt_trans] where value_type = 'PC_GDP' ) a left join 

  (select * from [Data_Stewardship].[dbo].[General_government_gross_debt_trans] where value_type = 'MIO_NAC' ) b 
   on a.YearQuarter = b.YearQuarter and a.country_code = b.country_code 