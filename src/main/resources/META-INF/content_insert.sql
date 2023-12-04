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
