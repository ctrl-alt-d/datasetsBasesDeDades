CREATE TABLE [dbo].[accidents](
	[AnyAccident] [int] NOT NULL,
	[zona] [nvarchar](50) NOT NULL,
	[dia] [datetime] NULL,
	[punt_kilometric] [float] NOT NULL,
	[nom_municipi] [nvarchar](50) NOT NULL,
	[comarca] [nvarchar](50) NOT NULL,
	[demarcació] [nvarchar](50) NOT NULL,
	[número_de_morts] [int] NOT NULL,
	[número_de_ferits_greus] [int] NOT NULL,
	[velocitat_de_la_via] [int] NULL,
	[amb_boira] [nvarchar](50) NOT NULL,
	[ciculació_amb_mesuers_especials] [nvarchar](50) NULL,
	[climatologia] [nvarchar](50) NOT NULL,
	[gravetat] [nvarchar](50) NOT NULL,
	[influint_boira] [nvarchar](50) NOT NULL,
	[influint_intensitat_del_vent] [nvarchar](50) NOT NULL,
	[influint_visibilitat] [nvarchar](50) NOT NULL,
	[sentits_de_la_via] [nvarchar](50) NULL,
	[tipus_de_via] [nvarchar](50) NOT NULL,
	[subtipus_accident] [nvarchar](100) NOT NULL,
	[superficie] [nvarchar](50) NOT NULL,
	[vent] [nvarchar](50) NOT NULL,
	[diaLaborable] [nvarchar](50) NOT NULL,
	[hora] [int] NULL,
	[tipusAccident] [nvarchar](100) NOT NULL
) 



