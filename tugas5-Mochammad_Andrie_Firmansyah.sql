Soal 1 : Buat Table & Database

// Table Books
CREATE TABLE books (
    Id INT PRIMARY KEY,
    JudulBuku VARCHAR(255),
    Pengarang VARCHAR(255),
    TahunTerbit INT,
    Penerbit VARCHAR(255),
    TanggalDibuat DATE,
    TanggalDiupdate DATE
);

INSERT INTO books (Id, JudulBuku, Pengarang, TahunTerbit, Penerbit, TanggalDibuat, TanggalDiupdate)
VALUES
    (1, 'Building microservices', 'Sam Newman', 2014, 'O''Reilly Media', '2023-09-18', '2023-09-18');


// Table Category
CREATE TABLE Category (
    Id INT PRIMARY KEY,
    NamaCategory VARCHAR(255),
    TanggalDibuat DATE,
    TanggalDiupdate DATE
);

INSERT INTO Category (Id, NamaCategory, TanggalDibuat, TanggalDiupdate)
VALUES
    (1, 'Pemrograman', '2023-09-18', '2023-09-23');





Soal 2 : Tambahkan Data Baru

// Table Books
INSERT INTO books (Id, JudulBuku, Pengarang, TahunTerbit, Penerbit, TanggalDibuat, TanggalDiupdate)
VALUES
    (2, 'Clean Code', 'Robert C. Martin', 2008, 'Prentice Hall', '2023-09-18', '2023-09-18'),
    (3, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (4, 'Design Patterns', 'Erich Gamma', 1994, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (5, 'Introduction to Algorithms', 'Thomas H. Cormen', 1990, 'MIT Press', '2023-09-18', '2023-09-18'),
    (6, 'The Art of Computer Prog.', 'Donald E. Knuth', 1968, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (7, 'Clean Architecture', 'Robert C. Martin', 2017, 'Prentice Hall', '2023-09-18', '2023-09-18'),
    (8, 'Refactoring', 'Martin Fowler', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (9, 'Domain-Driven Design', 'Eric Evans', 2003, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (10, 'The Mythical Man-Month', 'Frederick Brooks', 1975, 'Addison-Wesley', '2023-09-18', '2023-09-18');


// Table Category
INSERT INTO Category (Id, NamaCategory, TanggalDibuat, TanggalDiupdate)
VALUES
    (2, 'Fiksi', '2023-09-18', '2023-09-18'),
    (3, 'Nonfiksi', '2023-09-18', '2023-09-18'),
    (4, 'Bisnis', '2023-09-18', '2023-09-18'),
    (5, 'Teknologi', '2023-09-18', '2023-09-18'),
    (6, 'Seni', '2023-09-18', '2023-09-18'),
    (7, 'Sejarah', '2023-09-18', '2023-09-18'),
    (8, 'Sains', '2023-09-18', '2023-09-18'),
    (9, 'Hukum', '2023-09-18', '2023-09-18'),
    (10, 'Kesehatan', '2023-09-18', '2023-09-18');





Soal 3 : Tampilkan Semua Data

// Table Books & Category
-- Menampikan semua data dari table "books"
SELECT * FROM books;

-- Menampikan semua data dari table "category"
SELECT * FROM category;





Soal 4 : Update Data Tertentu

// Table Books
UPDATE books
SET
    JudulBuku = 'Building Microservices: Designing Fine-Grained Systems 1st',
    Pengarang = 'Sam Newman',
    TahunTerbit = 2015,
    Penerbit = 'O''Reilly Media',
    TanggalDibuat = '2023-09-18',
    TanggalDiupdate = '2023-09-20'
WHERE
    Id = 1;






Soal 5 : Hapus Data Tertentu

// Table Books & Category
-- Menghapus data dengan ID 10 dari tabel "books"
DELETE FROM books
WHERE Id = 10;

-- Menghapus data dengan ID 10 dari tabel "Category"
DELETE FROM Category
WHERE Id = 10;





Soal 6 : Tampilkan Data Buku Tertentu

// Table Books
SELECT JudulBuku
FROM books
WHERE Penerbit = 'Addison-Wesley';

SELECT *
FROM books
WHERE TahunTerbit BETWEEN 2003 AND 2023;

SELECT *
FROM books
WHERE JudulBuku LIKE '%design%';





Soal 7 : Buatlah Tabel Book Category

// Table Book Categories
CREATE TABLE book_categories (
    Id INT PRIMARY KEY,
    IdCategory INT,
    IdBook INT,
    TanggalDibuat DATE,
    TanggalDiupdate DATE,
    FOREIGN KEY (IdCategory) REFERENCES Category(Id),
    FOREIGN KEY (IdBook) REFERENCES books(Id)
);

INSERT INTO book_categories (Id, IdCategory, IdBook, TanggalDibuat, TanggalDiupdate)
VALUES
    (1, 2, 1, '2023-09-18', '2023-09-18');





Soal 8 : Tambahkan Data Baru Pada Tabel Book Category

// Table Book Categories
INSERT INTO book_categories (Id, IdCategory, IdBook, TanggalDibuat, TanggalDiupdate)
VALUES
    (2, 5, 3, '2023-09-18', '2023-09-18'),
    (3, 1, 1, '2023-09-18', '2023-09-18');





Soal 9 : Tampilkan Data Relasi Antar Tabel

// Table Books dan Category
SELECT *
FROM books
INNER JOIN category ON category.id = books.Id;





Soal 10 : Ubah Struktur Tabel

// Table Books
ALTER TABLE books
ADD JumlahHalaman INT;
