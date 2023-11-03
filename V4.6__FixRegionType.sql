ALTER TABLE RegionType
DROP CONSTRAINT region_type_name_length;

ALTER TABLE RegionType ADD CONSTRAINT region_type_name_length CHECK (LENGTH (name) = 2);