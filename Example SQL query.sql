/*You have access to two tables named top_half and bottom_half, as follows:

top_half schema:
id
heads
arms

bottom_half schema:
id
legs
tails

For the species, if the monster has more heads than arms, more tails than legs, or both, it is a 'BEAST' else it is a 'WEIRDO'. 
This needs to be captured in the species column.*/

select top_half.id, heads, legs, arms, tails,
case
  when heads > arms or tails > legs then 'BEAST'
  else 'WEIRDO'
end as species
from top_half
join bottom_half
on top_half.id = bottom_half.id
order by species