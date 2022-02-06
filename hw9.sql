/*
1-city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
2-customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
3-customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
*/

--1
select city ,country  
from city
join country on city.country_id = country.country_id
--2
select first_name ,last_name , payment_id  
from customer
join payment on payment.customer_id =customer.customer_id
--3
select first_name ,last_name , rental_id  
from customer
join rental on rental.customer_id =customer.customer_id
