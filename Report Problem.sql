-- Report problem

-- Msg 547, Level 16, State 0, Line 11
-- The INSERT statement conflicted with the FOREIGN KEY constraint "FK__Staffs__branch_i__31EC6D26". The conflict occurred in database "FoodCompany", table "dbo.Branches", column 'branch_id'.
-- The statement has been terminated.


-- Problem 2: Wrong Product_ID so I have to Update new Product_id
-- Problem 3: When I try to update same product ID for same product, I cant execute 
-- Because that is Primary Key so it is cant not duplicate