--Update Fk for history_id
ALTER TABLE Staffs
ADD FOREIGN KEY (history_id)
REFERENCES Histories (history_id)
ON DELETE SET NULL;