CREATE TABLE [dbo].[Playlist_Track] (
    [PlaylistId] INT NOT NULL,
    [TrackId]    INT NOT NULL,
    CONSTRAINT [PK_PlaylistTrack] PRIMARY KEY NONCLUSTERED ([PlaylistId] ASC, [TrackId] ASC),
    CONSTRAINT [FK_PlaylistTrackPlaylistId] FOREIGN KEY ([PlaylistId]) REFERENCES [dbo].[Playlist] ([PlaylistId]),
    CONSTRAINT [FK_PlaylistTrackTrackId] FOREIGN KEY ([TrackId]) REFERENCES [dbo].[Track] ([Track_Id])
);


GO
--CREATE NONCLUSTERED INDEX [IFK_PlaylistTrackTrackId]
--    ON [dbo].[PlaylistTrack]([TrackId] ASC);

