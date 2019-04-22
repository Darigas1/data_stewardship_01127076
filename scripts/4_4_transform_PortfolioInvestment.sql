/****** Script for SelectTopNRows command from SSMS  ******/
SELECT a.YearQuarter, a.country_code, convert(decimal(14,2), a.value) as Net_positions_end_of_period, convert(decimal(14,2), b.value) as Assets, convert(decimal(14,2), c.value) as Liabilities
into [Data_Stewardship].[dbo].[PortfolioInvestment_final]
  FROM (select * from [Data_Stewardship].[dbo].[PortfolioInvestment_trans] where value_type = 'N_LE' ) a left join 

  (select * from [Data_Stewardship].[dbo].[PortfolioInvestment_trans] where value_type = 'A_LE' ) b 
   on a.YearQuarter = b.YearQuarter and a.country_code = b.country_code left join
     (select * from [Data_Stewardship].[dbo].[PortfolioInvestment_trans] where value_type = 'L_LE' ) c
   on a.YearQuarter = c.YearQuarter and a.country_code = c.country_code