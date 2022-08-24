# -- Mysql Task: 
# --     
# --     1. Create a  table attribute dataset and dress dataset
# --     2. Do a bulk load for these two table for respective dataset 
# --     3. read these dataset in pandas as a dataframe 
# --     4. Convert attribute dataset in json format 
# --     5. Store this dataset into mongodb
# --     6. in sql task try to perform left join operation with attrubute dataset and dress dataset on column Dress_ID
# --     7. Write a sql query to find out how many unique dress that we have based on dress id 
# --     8. Try to find out how mnay dress is having recommendation 0
# --     9. Try to find out total dress sell for individual dress id 
# --     10. Try to find out a third highest most selling dress id 



create database mysql_pandas_task
use mysql_pandas_task

create table if not exists atribute_dataset(
Dress_ID int ,
Style varchar(30) ,
Price varchar(30) ,
Rating int ,
Size varchar(30) ,
Season varchar(30) ,
NeckLine varchar(30) ,
SleeveLength varchar(30) ,
waiseline varchar(30) ,
Material varchar(30) ,
FabricType varchar(30) ,
Decoration varchar(30) ,
Pattern_Type varchar(30) ,
Recommendation int 
)

show tables
select * from atribute_dataset

create table if not exists dress_dataset(
`Dress_ID` int ,
`29-8-201` int ,
`31-8-201` int ,
`09-02-201` int ,
`09-04-2013` int ,
`09-06-2013` int ,
`09-08-2013` int ,
`09-10-2013` int ,
`09-12-2013` int ,
`14-9-2013` int ,
`16-9-2013` int ,
`18-9-2013` int ,
`20-9-2013` int ,
`22-9-2013` int ,
`24-9-2013` int ,
`26-9-2013` int ,
`28-9-2013` int ,
`30-9-2013` int ,
`10-02-2013` int ,
`10-04-2013` int ,
`10-06-2013` int ,
`10-08-2010` int ,
`10-10-2013` int ,
`10-12-2013` int )

select * from dress_dataset

-- 6. in sql task try to perform left join operation with attrubute dataset and dress dataset on column Dress_ID
select * from atribute_dataset left join dress_dataset on atribute_dataset.Dress_ID= dress_dataset.Dress_ID

# --     7. Write a sql query to find out how many unique dress that we have based on dress id 
select count(distinct(Dress_ID)) from atribute_dataset

# --     8. Try to find out how mnay dress is having recommendation 0
select count(Recommendation) from atribute_dataset where Recommendation=0

# --     9. Try to find out total dress sell for individual dress id 
select * from dress_dataset