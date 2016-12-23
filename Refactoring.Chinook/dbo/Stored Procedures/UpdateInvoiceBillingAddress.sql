CREATE PROCEDURE [dbo].[UpdateInvoiceBillingAddress]
	@InvoiceID int,
	@BillingAddress NVARCHAR(70),
	@BillingCity NVARCHAR(40),
	@BillingState NVARCHAR(40),
	@BillingCountry NVARCHAR(40),
	@BillingPostalCode NVARCHAR(10)

AS
	UPDATE [Sales].Invoice SET
	BillingAddress = @BillingAddress,
	BillingCity = @BillingCity,
	BillingState = @BillingState,
	BillingCountry = @BillingCountry,
	BillingPostalCode = @BillingPostalCode

	WHERE [Invoice_Id] = @InvoiceID;

RETURN 0
