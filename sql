CREATE TABLE [dbo].[SubCategory] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (MAX) NOT NULL,
    [CategoryID] INT            NOT NULL,
    CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubCategory_Category_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE
);
