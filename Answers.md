Answer 1:-

Based on the given diagram:

   Product Category Entity:
    1. This entity has attributes like id, name, desc, created_at, modified_at, and deleted_at.
    2. It represents different categories of products, such as electronics, clothing, etc.

   Product Entity:
    1. This entity has attributes like id, name, desc, created_at, modified_at, deleted_at, and category_id.
    2. category_id is a foreign key referencing the id attribute in the Product Category entity, establishing a relationship between the two entities.
    3. Each product belongs to a specific category defined in the Product Category entity.
    4. The relationship is implemented via the foreign key constraint, ensuring referential integrity between the Product and Product Category entities


Answer 2:-

To ensure that each product in the Product table has a valid category assigned to it, you can enforce referential integrity by using a foreign key constraint. 
This constraint will ensure that the category_id column in the Product table references an existing id in the Product Category table.

   1. When creating the Product table, define the category_id column as a foreign key referencing the id column in the Product Category table.
   2. Specify that the foreign key constraint is ON DELETE NO ACTION or ON DELETE RESTRICT, meaning that a product cannot be deleted if it is associated with a category.
   3. Ensure that the foreign key constraint is properly indexed for performance.

By enforcing this constraint, you guarantee that every product in the Product table must have a valid category assigned to it, preventing the insertion of invalid data and maintaining data integrity.
