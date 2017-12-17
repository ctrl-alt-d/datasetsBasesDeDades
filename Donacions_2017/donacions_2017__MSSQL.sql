CREATE TABLE [dbo].[donacions](
	[Província] [nvarchar](50) NULL,
	[Regió_Sanitària] [nvarchar](50) NULL,
	[Comarca] [nvarchar](50) NULL,
	[Municipi] [nvarchar](50) NOT NULL,
	[Donacions_2013] [float] NOT NULL,
	[Sessions_2013] [float] NOT NULL,
	[Donacions_2012] [float] NOT NULL,
	[Sessions_2012] [float] NOT NULL
) 
