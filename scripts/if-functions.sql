/*CREATE PROCEDURE usp_AddListing
    @ProductID INT,
    @FarmerID INT,
    @CategoryID INT,
    @Price DECIMAL(10,2),
    @Quantity INT
AS
BEGIN
    -- Validation
    IF @Price <= 0
    BEGIN
        RAISERROR('Price must be greater than 0', 16, 1);
        RETURN;
    END

    IF @Quantity <= 0
    BEGIN
        RAISERROR('Quantity must be greater than 0', 16, 1);
        RETURN;
    END

    -- Insert into ProduceListing table
    INSERT INTO produce_listings (product_name, farmer_id, category_id, price_per_kg, quantity_kg)
    VALUES (@ProductID, @FarmerID, @CategoryID, @Price, @Quantity);

    PRINT 'Listing added successfully';
END;*/

CREATE VIEW vw_AvailableListings
AS
SELECT 
    pl.listing_id,
    pl.product_name,
    f.full_name,
    c.category_name,
    pl.price_per_kg,
    pl.quantity_kg
FROM produce_listings pl
INNER JOIN farmers f ON pl.farmer_id = f.farmer_id
INNER JOIN categories c ON pl.category_id = c.category_id
WHERE pl.quantity_kg > 0;