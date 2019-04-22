USE [Data_Stewardship]
GO

truncate table [dbo].[General_government_gross_debt_trans]

INSERT INTO [dbo].[General_government_gross_debt_trans]
           ([country_code]
           ,[value_type]
           ,[YearQuarter]
           ,[value]) 
select case when SUBSTRING(category, 8,6) = 'PC_GDP' then SUBSTRING(category, 15,2) else SUBSTRING(category, 16,2) END as country_code, case when SUBSTRING(category, 8,6) = 'PC_GDP' then SUBSTRING(category, 8,6) else SUBSTRING(category, 8,7) END as value_type, JahrQuartal, case when value = ': ' or value = ': c' then null else rtrim(value) END as value from (
SELECT [na_item,sector,unit,geo time] as category ,'1995Q1' as JahrQuartal, [1995Q1 ] as value   FROM [Data_Stewardship].[dbo].General_government_gross_debt
	  union	  SELECT [na_item,sector,unit,geo time] ,'1995Q2' as JahrQuartal, [1995Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1995Q3' as JahrQuartal, [1995Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1995Q4' as JahrQuartal, [1995Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1996Q1' as JahrQuartal, [1996Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1996Q2' as JahrQuartal, [1996Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1996Q3' as JahrQuartal, [1996Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1996Q4' as JahrQuartal, [1996Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
  	  union	  SELECT [na_item,sector,unit,geo time] ,'1997Q1' as JahrQuartal, [1997Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1997Q2' as JahrQuartal, [1997Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt
	  union	  SELECT [na_item,sector,unit,geo time] ,'1997Q3' as JahrQuartal, [1997Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1997Q4' as JahrQuartal, [1997Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1998Q1' as JahrQuartal, [1998Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1998Q2' as JahrQuartal, [1998Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1998Q3' as JahrQuartal, [1998Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1998Q4' as JahrQuartal, [1998Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1999Q1' as JahrQuartal, [1999Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1999Q2' as JahrQuartal, [1999Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1999Q3' as JahrQuartal, [1999Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'1999Q4' as JahrQuartal, [1999Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2000Q1' as JahrQuartal, [2000Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2000Q2' as JahrQuartal, [2000Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2000Q3' as JahrQuartal, [2000Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2000Q4' as JahrQuartal, [2000Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2001Q1' as JahrQuartal, [2001Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2001Q2' as JahrQuartal, [2001Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2001Q3' as JahrQuartal, [2001Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2001Q4' as JahrQuartal, [2001Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2002Q1' as JahrQuartal, [2002Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2002Q2' as JahrQuartal, [2002Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2002Q3' as JahrQuartal, [2002Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2002Q4' as JahrQuartal, [2002Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2003Q1' as JahrQuartal, [2003Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2003Q2' as JahrQuartal, [2003Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2003Q3' as JahrQuartal, [2003Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2003Q4' as JahrQuartal, [2003Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2004Q1' as JahrQuartal, [2004Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2004Q2' as JahrQuartal, [2004Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2004Q3' as JahrQuartal, [2004Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2004Q4' as JahrQuartal, [2004Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2005Q1' as JahrQuartal, [2005Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2005Q2' as JahrQuartal, [2005Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2005Q3' as JahrQuartal, [2005Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2005Q4' as JahrQuartal, [2005Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2006Q1' as JahrQuartal, [2006Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2006Q2' as JahrQuartal, [2006Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2006Q3' as JahrQuartal, [2006Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2006Q4' as JahrQuartal, [2006Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2007Q1' as JahrQuartal, [2007Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2007Q2' as JahrQuartal, [2007Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2007Q3' as JahrQuartal, [2007Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2007Q4' as JahrQuartal, [2007Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2008Q1' as JahrQuartal, [2008Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2008Q2' as JahrQuartal, [2008Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2008Q3' as JahrQuartal, [2008Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2008Q4' as JahrQuartal, [2008Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2009Q1' as JahrQuartal, [2009Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2009Q2' as JahrQuartal, [2009Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2009Q3' as JahrQuartal, [2009Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2009Q4' as JahrQuartal, [2009Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2010Q1' as JahrQuartal, [2010Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2010Q2' as JahrQuartal, [2010Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2010Q3' as JahrQuartal, [2010Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2010Q4' as JahrQuartal, [2010Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2011Q1' as JahrQuartal, [2011Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2011Q2' as JahrQuartal, [2011Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2011Q3' as JahrQuartal, [2011Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2011Q4' as JahrQuartal, [2011Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2012Q1' as JahrQuartal, [2012Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2012Q2' as JahrQuartal, [2012Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2012Q3' as JahrQuartal, [2012Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2012Q4' as JahrQuartal, [2012Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2013Q1' as JahrQuartal, [2013Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2013Q2' as JahrQuartal, [2013Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2013Q3' as JahrQuartal, [2013Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2013Q4' as JahrQuartal, [2013Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2014Q1' as JahrQuartal, [2014Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2014Q2' as JahrQuartal, [2014Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2014Q3' as JahrQuartal, [2014Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2014Q4' as JahrQuartal, [2014Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2015Q1' as JahrQuartal, [2015Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2015Q2' as JahrQuartal, [2015Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2015Q3' as JahrQuartal, [2015Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2015Q4' as JahrQuartal, [2015Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2016Q1' as JahrQuartal, [2016Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2016Q2' as JahrQuartal, [2016Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2016Q3' as JahrQuartal, [2016Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2016Q4' as JahrQuartal, [2016Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2017Q1' as JahrQuartal, [2017Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2017Q2' as JahrQuartal, [2017Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2017Q3' as JahrQuartal, [2017Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2017Q4' as JahrQuartal, [2017Q4 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2018Q1' as JahrQuartal, [2018Q1 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2018Q2' as JahrQuartal, [2018Q2 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt		
	  union	  SELECT [na_item,sector,unit,geo time] ,'2018Q3' as JahrQuartal, [2018Q3 ]   FROM [Data_Stewardship].[dbo].General_government_gross_debt				
	  ) a
GO




