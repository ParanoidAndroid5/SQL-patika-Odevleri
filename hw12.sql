/*
1-film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
2-film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
3-film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
4-payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
*/

--1
select count(*) from film
where length > 
(
    SELECT AVG(length) FROM film
)
--2
select count(*) from film
where rental_rate =
(
    SELECT max(rental_rate) FROM film
)	
	

--3
select title from film
where rental_rate=
(
    SELECT min(rental_rate) FROM film
)	
and  replacement_cost=
(	
	SELECT min( replacement_cost) FROM film
)

--4
 SELECT payment.customer_id, first_name, last_name, COUNT(payment.customer_id) AS payment_count 
 FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY payment_count DESC;
