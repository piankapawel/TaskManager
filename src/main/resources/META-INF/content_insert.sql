INSERT INTO categories (name, description) VALUES ('Technologia', 'Artykuły dotyczące nowych technologii i trendów IT');
INSERT INTO categories (name, description) VALUES ('Kulinaria', 'Przepisy kulinarne i porady dotyczące gotowania');
INSERT INTO categories (name, description) VALUES ('Podróże', 'Relacje z podróży i porady dla podróżników');
INSERT INTO categories (name, description) VALUES ('Literatura', 'Recenzje książek i nowości wydawnicze');

INSERT INTO authors (firstName, lastName) VALUES ('Janusz', 'Nowak');
INSERT INTO authors (firstName, lastName) VALUES ('Anna', 'Kowalska');
INSERT INTO authors (firstName, lastName) VALUES ('Paweł', 'Mazur');
INSERT INTO authors (firstName, lastName) VALUES ('Ewa', 'Wiśniewska');

INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Sztuczna inteligencja - przyszłość technologii', 1, 'Artykuł omawiający rozwój sztucznej inteligencji...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('10 najlepszych przepisów na ciasta', 2, 'Zbiór najlepszych przepisów na słodkie wypieki...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Włochy - przewodnik turystyczny', 3, 'Poradnik o najpiękniejszych zakątkach Włoch...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Nowości na rynku książkowym', 4, 'Recenzje najnowszych książek wydanych w tym roku...', NOW(), NOW());


INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Sekrety efektywnego programowania', 4, 'Porady i triki, które pomogą Ci stać się lepszym programistą...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Zdrowe odżywianie na co dzień', 4, 'Wskazówki dotyczące zdrowego stylu życia i odżywiania...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Podróże po Europie', 3, 'Twoje przewodnik po najciekawszych miejscach w Europie...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Fotografia cyfrowa dla początkujących', 2, 'Podstawy fotografii cyfrowej - jak zacząć swoją przygodę...', NOW(), NOW());
INSERT INTO articles (title, author_id, content, created, updated) VALUES ('Historia sztuki nowoczesnej', 1, 'Przegląd najważniejszych kierunków w sztuce XX i XXI wieku...', NOW(), NOW());
