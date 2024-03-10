-- Create Product Category table
CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product table with foreign key constraint
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    SKU VARCHAR(255),
    category_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    
    FOREIGN KEY (category_id) REFERENCES Product_Category(id)
        ON DELETE NO ACTION -- or ON DELETE RESTRICT
);

-- Create Discount table
CREATE TABLE Discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    discount_percent DECIMAL(5,2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product Inventory table
CREATE TABLE Product_Inventory (
    id INT PRIMARY KEY,
    SKU VARCHAR(255),
    quantity INT,
    category_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES Product_Category(id)
        ON DELETE NO ACTION -- or ON DELETE RESTRICT
);

-- Create Product-Discount relationship table
CREATE TABLE Product_Discount (
    product_id INT,
    discount_id INT,
    PRIMARY KEY (product_id, discount_id),
    FOREIGN KEY (product_id) REFERENCES Product(id)
        ON DELETE CASCADE,
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
        ON DELETE CASCADE
);

SELECT * FROM Product;
SELECT * FROM Product_Category;
