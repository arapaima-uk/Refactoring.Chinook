CREATE TABLE [dbo].[Album] (
    [AlbumId]  INT            NOT NULL,
    [Title]    NVARCHAR (160) NOT NULL,
    [ArtistId] INT            NOT NULL,
    CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED ([AlbumId] ASC),
    CONSTRAINT [FK_AlbumArtistId] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artiste] ([ArtistId])
);


GO
CREATE NONCLUSTERED INDEX [IFK_AlbumArtistId]
    ON [dbo].[Album]([ArtistId] ASC);

