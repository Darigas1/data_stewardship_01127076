USE [Data_Stewardship]
GO

/****** Object:  Table [dbo].[Nettoauslandsvermögensstatus_trans]    Script Date: 22.04.2019 18:49:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Net_international_investment_position_trans](
	[country_code] [varchar](2) NULL,
	[value_type] [varchar](4) NULL,
	[YearQuarter] [varchar](6) NULL,
	[value] [varchar](30) NULL
) ON [PRIMARY]
GO


