USE [master]
GO

CREATE DATABASE	junction_table_test
GO

USE junction_table_test

CREATE TABLE [dbo].[Products](
    [Id] [int] NOT NULL,
     CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED
    (
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

CREATE TABLE [dbo].[RelatedProducts](
    [Id] [int] NOT NULL,
    [ProductId] [int] NOT NULL,
     CONSTRAINT [PK_RelatedProducts] PRIMARY KEY CLUSTERED
    (
    [Id] ASC,
[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

CREATE TABLE [dbo].[SubProducts](
    [Id] [int] NOT NULL,
    [ProductId] [int] NOT NULL,
     CONSTRAINT [PK_SubProducts] PRIMARY KEY CLUSTERED
    (
    [Id] ASC,
[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

ALTER TABLE [dbo].[RelatedProducts]  WITH CHECK ADD  CONSTRAINT [FK_RelatedProducts_Products] FOREIGN KEY([Id])
    REFERENCES [dbo].[Products] ([Id])
    GO

ALTER TABLE [dbo].[RelatedProducts] CHECK CONSTRAINT [FK_RelatedProducts_Products]
    GO

ALTER TABLE [dbo].[RelatedProducts]  WITH CHECK ADD  CONSTRAINT [FK_RelatedProducts_Products1] FOREIGN KEY([ProductId])
    REFERENCES [dbo].[Products] ([Id])
    GO

ALTER TABLE [dbo].[RelatedProducts] CHECK CONSTRAINT [FK_RelatedProducts_Products1]
    GO

ALTER TABLE [dbo].[SubProducts]  WITH CHECK ADD  CONSTRAINT [FK_SubProducts_Products] FOREIGN KEY([Id])
    REFERENCES [dbo].[Products] ([Id])
    GO

ALTER TABLE [dbo].[SubProducts] CHECK CONSTRAINT [FK_SubProducts_Products]
    GO

ALTER TABLE [dbo].[SubProducts]  WITH CHECK ADD  CONSTRAINT [FK_SubProducts_Products1] FOREIGN KEY([ProductId])
    REFERENCES [dbo].[Products] ([Id])
    GO

ALTER TABLE [dbo].[SubProducts] CHECK CONSTRAINT [FK_SubProducts_Products1]
    GO
