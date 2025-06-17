SELECT * FROM public.meals
LIMIT 100

SELECT  
  order_id,  
  SUM(meal_price * order_quantity) AS revenue  
FROM meals  
JOIN orders ON meals.meal_id = orders.meal_id  
GROUP BY order_id; 

SELECT  
  meals.meal_id,   
  SUM(meal_cost * stocked_quantity) AS cost   
FROM meals  
JOIN stock ON meals.meal_id = stock.meal_id  
GROUP BY meals.meal_id  
ORDER BY cost DESC  
LIMIT 3;

