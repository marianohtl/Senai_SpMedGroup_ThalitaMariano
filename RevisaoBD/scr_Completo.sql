
CREATE DATABASE [banco]
 
GO
USE [banco]

CREATE TABLE [dbo].[Armazem](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stocks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 29/05/2020 11:09:09 ******/

GO
CREATE TABLE [dbo].[Categoria](
	[id] [bigint] NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
	[descricao] [varchar](255) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 29/05/2020 11:09:09 ******/

GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
	[numeroLoteRequerido] [bit] NULL,
	[quantidadeMinima] [bigint] NULL,
	[FornecedorID] [bigint] NULL,
	[CategoriaID] [bigint] NULL,
	[localID] [bigint] NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemPedido]    Script Date: 29/05/2020 11:09:09 ******/
GO
CREATE TABLE [dbo].[ItemPedido](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[pedidoID] [bigint] NOT NULL,
	[itemID] [bigint] NOT NULL,
	[numeroLote] [nvarchar](50) NULL,
	[quantidade] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 29/05/2020 11:09:09 ******/

GO
CREATE TABLE [dbo].[Pedido](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[tipoTransacaoID] [bigint] NOT NULL,
	[transportadoraID] [bigint] NULL,
	[lojaID] [bigint] NULL,
	[armazemOrigemID] [bigint] NULL,
	[armazemDestinoID] [bigint] NULL,
	[dataPedido] [date] NOT NULL,
	[dataEntrega] [date] NULL,
 CONSTRAINT [PK_SupplierHeaders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestador]    Script Date: 29/05/2020 11:09:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestador](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTransacao]    Script Date: 29/05/2020 11:09:09 ******/
CREATE TABLE [dbo].[TipoTransacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TransactionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Armazem] ON 

INSERT [dbo].[Armazem] ([ID], [nome]) VALUES (1, N'Central Warehouse')
INSERT [dbo].[Armazem] ([ID], [nome]) VALUES (2, N'Volka  Warehouse')
INSERT [dbo].[Armazem] ([ID], [nome]) VALUES (3, N'Loja 1')
INSERT [dbo].[Armazem] ([ID], [nome]) VALUES (4, N'Loja 2')
SET IDENTITY_INSERT [dbo].[Armazem] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (1, N'BLUE STORM Battery 12V 45Ah 54459', 0, 10, 1, 2, 4)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (2, N'BLUE STORM Battery 12V 70Ah 80D26L', 0, 10, 1, 2, 3)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (3, N'CT20 Turbo Turbocharger', 0, 0, 2, 2, 4)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (4, N'michelin tyres   225/50 ZR 16', 1, 6, 3, 5, 3)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (5, N'MOCA Engine Timing Chain Kit ', 0, 0, 4, 2, 4)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (6, N'CT16V Turbo Cartridge Core', 1, 0, 2, 1, 3)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (7, N'iFJF 21100-35520 New Carburetor', 0, 0, 1, 2, 4)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (8, N'ALAVENTE 21100-35463 Carburetor ', 0, 0, 2, 2, 3)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (9, N'Carter P4594 In-Line Electric Fuel Pump', 0, 0, 1, 2, 4)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (10, N'Electric Fuel Pump Universal Fuel Pump 12V ', 1, 0, 1, 1, 3)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (11, N'Gast AT05 Rotary Vane ', 0, 0, 1, 2, 4)
INSERT [dbo].[Item] ([ID], [nome], [numeroLoteRequerido], [quantidadeMinima], [FornecedorID], [CategoriaID], [localID]) VALUES (12, N'FAN 24" M480', 0, 50, 1, 4, 3)
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemPedido] ON 

INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (1, 1, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (2, 1, 6, N'SL1258', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (3, 1, 1, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (5, 1, 10, N'TR740LKO', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (6, 1, 12, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (7, 2, 4, N'XP985S', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (9, 2, 7, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (10, 2, 3, N'', CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (11, 2, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (12, 3, 4, N'XM471W', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (13, 3, 5, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (14, 3, 1, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (16, 3, 2, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (17, 4, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (19, 4, 3, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (20, 5, 10, N'TB44705KO', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (21, 5, 12, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (22, 5, 6, N'KL4701', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (23, 5, 7, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (25, 5, 11, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (26, 6, 8, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (27, 6, 2, N'', CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (29, 6, 12, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (30, 6, 4, N'XP985S', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (31, 7, 11, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (32, 7, 6, N'KL4701', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (33, 7, 3, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (36, 8, 3, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (37, 8, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (38, 9, 9, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (39, 9, 6, N'KL4701', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (41, 9, 11, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (42, 10, 12, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (43, 10, 8, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (44, 11, 7, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (45, 11, 1, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (46, 11, 2, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (47, 11, 10, N'TJ140OO', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (48, 12, 6, N'KL4701', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (49, 12, 11, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (50, 12, 3, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (51, 12, 9, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (52, 13, 4, N'XM471W', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (53, 14, 5, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (54, 14, 11, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (55, 14, 12, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (56, 15, 4, N'XM471W', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (57, 15, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (58, 15, 6, N'KO4570', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (60, 16, 8, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (61, 16, 12, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (62, 16, 10, N'TJ140OO', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (63, 16, 7, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (64, 17, 7, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (65, 17, 9, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (67, 18, 1, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (68, 18, 5, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (69, 18, 4, N'XM471W', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (72, 19, 4, N'XM471W', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (73, 19, 1, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (74, 20, 4, N'XM471W', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (75, 20, 7, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (77, 21, 1, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (78, 21, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (79, 21, 6, N'KO4570', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (80, 22, 9, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (81, 22, 11, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (82, 22, 5, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (83, 23, 3, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (84, 23, 5, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (85, 23, 6, N'SL1258', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (86, 23, 10, N'TJ140OO', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (87, 24, 2, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (88, 24, 1, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (89, 24, 11, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (91, 25, 8, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (93, 25, 11, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (95, 26, 5, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (96, 26, 9, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (97, 27, 7, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (98, 27, 2, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (99, 28, 11, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (100, 28, 3, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (101, 28, 4, N'XP985S', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (102, 29, 1, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (104, 29, 2, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (105, 29, 5, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (106, 29, 4, N'XP985S', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (107, 30, 11, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (108, 30, 6, N'SL1258', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (110, 31, 10, N'TR740LKO', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (112, 31, 12, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (113, 32, 11, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (114, 32, 10, N'TJ140OO', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (115, 32, 12, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (116, 33, 8, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (118, 33, 7, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (119, 34, 8, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (120, 34, 9, N'', CAST(16.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (122, 34, 7, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (123, 35, 10, N'TB44705KO', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (124, 35, 1, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (125, 35, 3, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (126, 35, 5, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (127, 36, 7, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (128, 36, 2, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (129, 37, 8, N'', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (130, 37, 11, N'', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (131, 37, 4, N'XM471W', CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (132, 37, 2, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (133, 37, 1, N'', CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (134, 37, 3, N'', CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (135, 37, 7, N'', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemPedido] ([ID], [pedidoID], [itemID], [numeroLote], [quantidade]) VALUES (136, 37, 7, N'', CAST(4.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ItemPedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedido] ON 

INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (1, 1, 3, NULL, NULL, 2, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (2, 1, 4, NULL, NULL, 1, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (3, 1, 4, NULL, NULL, 1, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (4, 1, 3, NULL, NULL, 2, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (5, 1, 3, NULL, NULL, 2, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (6, 1, 2, NULL, NULL, 2, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (7, 1, 3, NULL, NULL, 1, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (8, 1, 2, NULL, NULL, 1, CAST(N'2019-08-22' AS Date), CAST(N'2019-08-22' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (9, 1, 3, NULL, NULL, 2, CAST(N'2019-08-22' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (10, 1, 4, NULL, NULL, 2, CAST(N'2019-08-22' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (11, 1, 3, NULL, NULL, 1, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (12, 1, 4, NULL, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (13, 1, 2, NULL, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (14, 1, 3, NULL, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (15, 1, 2, NULL, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (16, 1, 3, NULL, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (17, 3, 4, 3, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (18, 3, 1, 3, NULL, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (19, 3, 1, 3, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (20, 3, 2, 4, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-25' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (21, 3, 2, 4, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-25' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (22, 3, 4, 4, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-25' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (23, 3, 1, 4, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-27' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (24, 3, 3, 3, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-27' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (25, 3, 3, 3, NULL, 1, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-27' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (26, 3, 2, 3, NULL, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-27' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (27, 2, 1, NULL, 1, 2, CAST(N'2019-08-18' AS Date), CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (28, 2, 1, NULL, 1, 2, CAST(N'2019-08-19' AS Date), CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (29, 2, 2, NULL, 2, 1, CAST(N'2019-08-19' AS Date), CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (30, 2, 2, NULL, 2, 1, CAST(N'2019-08-19' AS Date), CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (31, 2, 3, NULL, 2, 1, CAST(N'2019-08-20' AS Date), CAST(N'2019-08-23' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (32, 2, 3, NULL, 1, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-24' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (33, 2, 4, NULL, 1, 2, CAST(N'2019-08-20' AS Date), CAST(N'2019-08-21' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (34, 2, 4, NULL, 2, 1, CAST(N'2019-08-22' AS Date), CAST(N'2019-08-25' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (35, 2, 1, NULL, 2, 1, CAST(N'2019-08-22' AS Date), CAST(N'2019-08-25' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (36, 2, 1, NULL, 1, 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-28' AS Date))
INSERT [dbo].[Pedido] ([ID], [tipoTransacaoID], [transportadoraID], [lojaID], [armazemOrigemID], [armazemDestinoID], [dataPedido], [dataEntrega]) VALUES (37, 2, 2, NULL, 2, 1, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-27' AS Date))
SET IDENTITY_INSERT [dbo].[Pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Prestador] ON 

INSERT [dbo].[Prestador] ([ID], [nome]) VALUES (1, N'MJOK petroleum')
INSERT [dbo].[Prestador] ([ID], [nome]) VALUES (2, N'Kazan Bosch  Center')
INSERT [dbo].[Prestador] ([ID], [nome]) VALUES (3, N'Denso Corporation')
INSERT [dbo].[Prestador] ([ID], [nome]) VALUES (4, N'Castrol Crop')
SET IDENTITY_INSERT [dbo].[Prestador] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoTransacao] ON 

INSERT [dbo].[TipoTransacao] ([ID], [nome]) VALUES (1, N'Ordem de Compra')
INSERT [dbo].[TipoTransacao] ([ID], [nome]) VALUES (2, N'Gerenciamento de armazenagem')
INSERT [dbo].[TipoTransacao] ([ID], [nome]) VALUES (3, N'Ordem de Venda')
SET IDENTITY_INSERT [dbo].[TipoTransacao] OFF
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Armazem] FOREIGN KEY([localID])
REFERENCES [dbo].[Armazem] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Armazem]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Categoria] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Categoria]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Fornecedor] FOREIGN KEY([FornecedorID])
REFERENCES [dbo].[Prestador] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Fornecedor]
GO
ALTER TABLE [dbo].[ItemPedido]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([pedidoID])
REFERENCES [dbo].[Pedido] ([ID])
GO
ALTER TABLE [dbo].[ItemPedido] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[ItemPedido]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Parts] FOREIGN KEY([itemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemPedido] CHECK CONSTRAINT [FK_Transactions_Parts]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Headers_Stocks] FOREIGN KEY([armazemOrigemID])
REFERENCES [dbo].[Armazem] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Headers_Stocks]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Headers_Stocks1] FOREIGN KEY([armazemDestinoID])
REFERENCES [dbo].[Armazem] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Headers_Stocks1]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Headers_TransactionTypes] FOREIGN KEY([tipoTransacaoID])
REFERENCES [dbo].[TipoTransacao] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Headers_TransactionTypes]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Fornecedor] FOREIGN KEY([transportadoraID])
REFERENCES [dbo].[Prestador] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Fornecedor]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Prestador] FOREIGN KEY([lojaID])
REFERENCES [dbo].[Prestador] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Prestador]
GO
USE [master]
GO
ALTER DATABASE [S4_PT] SET  READ_WRITE 
GO


