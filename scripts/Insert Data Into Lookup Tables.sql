--CLEAR RECORDS
DELETE FROM provinces;
DELETE FROM categories;


--INSERT PROVINCES DATA
INSERT INTO provinces (province_name) VALUES('Gauteng');
INSERT INTO provinces (province_name) VALUES('Western-Cape');
INSERT INTO provinces (province_name) VALUES('KwaZZulu-Natal');
INSERT INTO provinces (province_name) VALUES('Limpopo');
INSERT INTO provinces (province_name) VALUES('Mpumalanga');
INSERT INTO provinces (province_name) VALUES('FreeState');
INSERT INTO provinces (province_name) VALUES('Eastern Cape');
INSERT INTO provinces (province_name) VALUES('Northen Cape');
INSERT INTO provinces (province_name) VALUES('North West');

--INSERT CATEGORIES
INSERT INTO categories (category_name) VALUES('Vegetables');
INSERT INTO categories (category_name) VALUES('Fruit');
INSERT INTO categories (category_name) VALUES('Grain');
INSERT INTO categories (category_name) VALUES('Dairy');
INSERT INTO categories (category_name) VALUES('Other');

--INSERT ORDER STATUSES
INSERT INTO order_statuses (status_name) VALUES('Pending');
INSERT INTO order_statuses (status_name) VALUES('Confirmed');
INSERT INTO order_statuses (status_name) VALUES('Collected');
INSERT INTO order_statuses (status_name) VALUES('Cancelled');

--INSERT BUYER TYPES
INSERT INTO buyer_types (types_names) VALUES('Individual');
INSERT INTO buyer_types (types_names) VALUES('Business');
INSERT INTO buyer_types (types_names) VALUES('Restaurant');
INSERT INTO buyer_types (types_names) VALUES('School');
INSERT INTO buyer_types (types_names) VALUES('Other');