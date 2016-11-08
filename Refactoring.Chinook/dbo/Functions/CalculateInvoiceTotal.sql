CREATE FUNCTION [dbo].[CalculateInvoiceTotal]
(
	@invoiceID INT
)

RETURNS  TABLE 
AS
RETURN
	(SELECT InvoiceId, Sum(UnitPrice * Quantity) as InvoiceTotal
	FROM dbo.InvoiceLine WHERE InvoiceId = @invoiceID
	GROUP BY InvoiceId)
