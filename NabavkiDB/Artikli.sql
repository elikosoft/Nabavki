CREATE TABLE [dbo].[Artikli](
	[IdArtikli] [int] IDENTITY(1,1) NOT NULL,
	[Sifra] [nvarchar](50) NULL,
	[Naziv] [nvarchar](150) NULL,
	[IdPartner] [int] NULL,
 CONSTRAINT [PK_Artikli] PRIMARY KEY CLUSTERED 
(
	[IdArtikli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Artikli]  WITH CHECK ADD  CONSTRAINT [FK_Artikli_Partner] FOREIGN KEY([IdPartner])
REFERENCES [dbo].[Partner] ([IdPartner])
GO

ALTER TABLE [dbo].[Artikli] CHECK CONSTRAINT [FK_Artikli_Partner]
GO


