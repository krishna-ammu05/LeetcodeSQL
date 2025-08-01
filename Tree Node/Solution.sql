# Write your MySQL query statement below
select
  id,
  case
  when p_id is null then 'Root'
  when p_id is not null and id in (select distinct p_id from tree) then 'Inner'
  else 'Leaf' end as Type
from tree;