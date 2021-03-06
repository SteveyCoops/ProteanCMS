--Move  values from xml into new fields
SET ARITHABORT ON

UPDATE tblCartDiscountRules
	SET 
	cDiscountUserCode = CAST(cAdditionalXML AS xml).value('(/cPromotionalCode)[1]', 'nvarchar(50)') ,
	nDiscountCodeType = 
		CASE 
			--when there's no public promo code, it's always 0
			WHEN CAST(cAdditionalXML AS xml).value('(/cPromotionalCode)[1]', 'nvarchar(50)') = '' THEN 0
			-- 12N - one code to many users = 1
			WHEN CAST(cAdditionalXML AS xml).value('(/cPromotionalCodeType)[1]', 'nvarchar(50)') = '12N' THEN 1
			-- 121 - one code to one users = 2
			WHEN CAST(cAdditionalXML AS xml).value('(/cPromotionalCodeType)[1]', 'nvarchar(50)') = '121' THEN 2
			ELSE 0 
		END 


--add indexes to the new columns
CREATE INDEX [IX_DiscountUserCode] ON [dbo].[tblCartDiscountRules]([cDiscountUserCode])
CREATE INDEX [IX_DiscountType] ON [dbo].[tblCartDiscountRules]([nDiscountCodeType])



