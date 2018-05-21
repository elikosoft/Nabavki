﻿CREATE TABLE [dbo].[Partner](
	[IdPartner] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](150) NULL,
	[IdFirma] [int] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[IdPartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Firma] FOREIGN KEY([IdFirma])
REFERENCES [dbo].[Firma] ([IdFirma])
GO

ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Firma]
GO


