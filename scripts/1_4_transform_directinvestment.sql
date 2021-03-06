/****** Script for SelectTopNRows command from SSMS  ******/
SELECT a.yearquarter, a.country_code, convert(decimal(14,2), a.value) as Net_positions_end_of_period, convert(decimal(14,2), b.value) as Assets, convert(decimal(14,2), c.value) as Liabilities
into [Data_Stewardship].[dbo].[DirectInvestment_final]
  FROM (select * from [Data_Stewardship].[dbo].[DirectInvestment_trans] where value_type = 'N_LE' ) a left join 

  (select * from [Data_Stewardship].[dbo].[DirectInvestment_trans] where value_type = 'A_LE' ) b 
   on a.yearquarter = b.yearquarter and a.country_code = b.country_code left join
     (select * from [Data_Stewardship].[dbo].[DirectInvestment_trans] where value_type = 'L_LE' ) c
   on a.yearquarter = c.yearquarter and a.country_code = c.country_code