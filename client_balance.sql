CREATE  OR REPLACE VIEW client_balance AS
SELECT 
		c.client_id,
        c.name,
        sum(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id,name
	