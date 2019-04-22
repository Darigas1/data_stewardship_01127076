USE [Data_Stewardship]
GO

/****** Object:  Table [dbo].[Oeffentlicher_Schuldenstand_trans]    Script Date: 22.04.2019 18:57:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[General_government_gross_debt_trans](
	[country_code] [varchar](2) NULL,
	[value_type] [varchar](7) NULL,
	[YearQuarter] [varchar](6) NULL,
	[value] [varchar](30) NULL
) ON [PRIMARY]
GO


