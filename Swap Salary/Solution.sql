# Write your MySQL query statement below

# update salary
# set sex = case when sex = 'm' then 'f' else 'm' end;

update salary
set sex = if(sex = 'm', 'f', 'm');