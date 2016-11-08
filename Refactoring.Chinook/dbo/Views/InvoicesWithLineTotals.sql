CREATE VIEW [dbo].[InvoicesWithLineTotals] 
	AS SELECT I.[Invoice_Id],
	InvoiceTotal
	FROM dbo.Invoice AS I CROSS APPLY dbo.CalculateInvoiceTotal(I.[Invoice_Id]);