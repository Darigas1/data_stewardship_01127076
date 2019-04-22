/****** Script for SelectTopNRows command from SSMS  ******/
SELECT a.YearQuarter, a.country_code, convert(decimal(14,2), a.value) as GDP_percent
into [Data_Stewardship].[dbo].[Net_international_investment_position_final]
  FROM (select * from [Data_Stewardship].[dbo].[Net_international_investment_position_trans] where value_type = 'N_LE' ) a 