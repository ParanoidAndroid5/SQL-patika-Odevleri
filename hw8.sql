/*1-test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3-Sütunların her birine göre diğer sütunları güncelleyecek 2 adet UPDATE işlemi yapalım.
4-Sütunların her birine göre ilgili satırı silecek 2 adet DELETE işlemi yapalım.
*/

CREATE TABLE employee (
  id Integer PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  birthday DATE
);

UPDATE employee
SET name = 'Mislina',
	email = 'mislinacetineer@gmail'
WHERE id = 2;

UPDATE employee
SET birthday = '1998-09-09'
WHERE name = 'Anaïs';

DELETE FROM employee
WHERE name = 'Östen';

DELETE FROM employee
WHERE id < 10;
