

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[Users] (
    [UserId] [int] IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NULL,
    [Email_Address] NVARCHAR (50) NULL,
    [Password]     NVARCHAR (50) NULL,
    

CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
 ON [PRIMARY]



INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Susan','Susan123@gmail.com','Susan123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Jade','Jade123@gmail.com','Jade123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Mark','Mark123@gmail.com','Mark123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Shilpa','Shilpa123@gmail.com','Shilpa123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Daksh','Daksh123@gmail.com','Daksh123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Sophia','Sophia123@gmail.com','Sophia123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Angela','Angela123@gmail.com','Angela123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Joseph','Joseph123@gmail.com','Joseph123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Ilina','Ilina123@gmail.com','Ilina123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Khan','khan123@gmail.com','Khan123');


INSERT INTO DS_Library.[dbo].Users( Name, Email_Address,Password)
VALUES ('Arvinder','Arvinder123@gmail.com','Arvinder123');


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books] (
    [BookID] [int] IDENTITY (100, 1) NOT NULL,
    [Name]         NVARCHAR (50) NULL,
    [Author]       NVARCHAR (50) NULL,
    [Publish year] INT           NULL,
    [Genre]        NVARCHAR (50) NULL
CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('My experiments with Truth','M.K Gandhi','1925','Inspirational');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Far From Madding Truth','Thomas Hardy','1874','Inspirational');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Anne Frank: The Diary of a Young Girl','Anne Frank','1875','Autobiography');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Night','Elie Wiesel','1987','Inspirational');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Eat,Pray,Love','Elizabeth Gilbert','1994','Autobiography');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Gone With the Wind','Margaret Mitchell','2000','Fiction');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('How to Kill a Mocking Bird','Harper Lee','1888','Comedy');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('The Lord of the Rings','J.R.R. Tolkien','2011','Fiction');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Animal Farm','George Orwell','2000','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('In search of Lost Time','Marcel Proust','1999','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Hamlet','William Shakespeare','1908','Fiction');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('War and Peace','Leo Tolsoy','2012','Inspirational');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('1984','George Orwell','1949','Fiction');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Pride and Prejudice','Jane and Prejudice','1925','Romantic');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Heart of Darkness','Joseph Conrad','1899','Fiction');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Catch-22','Joseph Heller','1961','Fiction');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Dragonfly in Amber','Diana Gabaldon','1992','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Where the wild things are','Mauris Sendak','1963','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('The Very Hungry caterpillar','Eric Carle','1969','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Goodnight Moon','Margaret Wise','1963','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('Love Story','Erich Sehgal','1970','Romantic');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('A Cat in the Hat','Dr. Seuss','1969','Children');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('A Walk to Remember','Nicholas Sparks','1999','Romantic');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('A Knight in the Shining Armor','Jude Deveraux','1989','Romantic');

INSERT INTO DS_Library.[dbo].Books( Name, Author,[Publish year],Genre)
VALUES ('It Had to be You','Susan Elizabeth','2000','Romantic');


CREATE TABLE [dbo].[Admin] (
    
    [Name]         NVARCHAR (50) NULL,
    [Email]       NVARCHAR (50) NULL,
    [password]     NVARCHAR(50) NULL,
	);

	INSERT INTO DS_Library.[dbo].[Admin](Name, Email, password)
	VALUES ('Admin', 'admin123@gmail.com','admin123');

