CREATE TABLE [dbo].[Artiste] (
    [ArtistId] INT            NOT NULL,
    [Name]     NVARCHAR (120) NULL,
    CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED ([ArtistId] ASC)
);

