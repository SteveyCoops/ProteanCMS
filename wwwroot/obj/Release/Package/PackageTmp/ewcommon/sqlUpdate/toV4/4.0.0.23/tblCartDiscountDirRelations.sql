CREATE TABLE [dbo].[tblCartDiscountDirRelations] (
	[nDiscountDirRelationKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nDiscountId] [int] NULL ,
	[nDirId] [int] NULL ,
	[nAuditId] [int] NULL ,
	CONSTRAINT [PK_tblCartDiscountGroupRelations] PRIMARY KEY  CLUSTERED 
	(
		[nDiscountDirRelationKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]



