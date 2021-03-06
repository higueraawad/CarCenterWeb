USE [CARCENTER ]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Documento] [nvarchar](30) NOT NULL,
	[TipoDocumento] [nvarchar](10) NOT NULL,
	[PrimerNombre] [nvarchar](40) NOT NULL,
	[SegundoNombre] [nvarchar](40) NULL,
	[PrimerApellido] [nvarchar](60) NOT NULL,
	[SegundoApellido] [nvarchar](60) NULL,
	[NoCelular] [nvarchar](20) NOT NULL,
	[Direccion] [nvarchar](200) NOT NULL,
	[CorreoElectronico] [nvarchar](100) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactDetalleRepuestos]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactDetalleRepuestos](
	[Sucursal] [nvarchar](30) NOT NULL,
	[FacturaNo] [nvarchar](30) NOT NULL,
	[IdRepuesto] [bigint] NOT NULL,
	[ValorUnitario] [decimal](20, 2) NOT NULL,
	[Cantidad] [decimal](20, 2) NOT NULL,
	[ValorTotal] [decimal](20, 2) NOT NULL,
 CONSTRAINT [PK_FactDetalleRepuestos] PRIMARY KEY CLUSTERED 
(
	[FacturaNo] ASC,
	[IdRepuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactDetalleServicios]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactDetalleServicios](
	[Sucursal] [nvarchar](30) NOT NULL,
	[FacturaNo] [nvarchar](30) NOT NULL,
	[IdServicio] [bigint] NOT NULL,
	[ValorUnitario] [decimal](20, 2) NOT NULL,
	[ValorDescuento] [decimal](20, 2) NOT NULL,
	[ValorTotal] [decimal](20, 2) NOT NULL,
 CONSTRAINT [PK_FactDetalleServicios] PRIMARY KEY CLUSTERED 
(
	[FacturaNo] ASC,
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaEmcabezado]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaEmcabezado](
	[Sucursal] [nvarchar](30) NOT NULL,
	[FacturaNo] [nvarchar](30) NOT NULL,
	[DocumentoCliente] [nvarchar](30) NOT NULL,
	[DocumentoMecanico] [nvarchar](30) NOT NULL,
	[PresupuestoCliente] [decimal](20, 2) NOT NULL,
	[ValorSubTotal] [decimal](20, 2) NOT NULL,
	[ValorTotalDescuento] [decimal](20, 2) NOT NULL,
	[ValorIVA] [decimal](20, 2) NOT NULL,
	[ValorTotalFactura] [decimal](20, 2) NOT NULL,
 CONSTRAINT [PK_FacturaEmcabezado] PRIMARY KEY CLUSTERED 
(
	[FacturaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mecanicos]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mecanicos](
	[Documento] [nvarchar](30) NOT NULL,
	[TipoDocumento] [nvarchar](10) NOT NULL,
	[PrimerNombre] [nvarchar](40) NOT NULL,
	[SegundoNombre] [nvarchar](40) NULL,
	[PrimerApellido] [nvarchar](60) NOT NULL,
	[SegundoApellido] [nvarchar](60) NULL,
	[NoCelular] [nvarchar](20) NOT NULL,
	[Direccion] [nvarchar](200) NOT NULL,
	[CorreoElectronico] [nvarchar](100) NULL,
	[Estado] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Mecanicos] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repuestos]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repuestos](
	[IdRepuesto] [bigint] NOT NULL,
	[DescripcionRepuesto] [nvarchar](100) NOT NULL,
	[ValorUnitario] [decimal](20, 2) NOT NULL,
 CONSTRAINT [PK_Repuestos] PRIMARY KEY CLUSTERED 
(
	[IdRepuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[IdServicio] [bigint] NOT NULL,
	[DescripcionServicio] [nvarchar](100) NOT NULL,
	[ValorManoDeObra] [decimal](20, 2) NOT NULL,
	[ValorMinimo] [decimal](20, 2) NOT NULL,
	[ValorMaximo] [decimal](20, 2) NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumentos]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumentos](
	[TipoDocumento] [nvarchar](10) NOT NULL,
	[Descripcion] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_TipoDocumentos] PRIMARY KEY CLUSTERED 
(
	[TipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'11118795552', N'ti', N'prueba OSCAR', N'APPPPPP', N'JKKJJKJKJK', N'WEEWEWEWWE', N'MNNBNMMN', N'WWEWEEEWWE', N'QWWWWW@hotmail.com')
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'19455600', N'CC', N'PEDRO', NULL, N'PATAQUIVA', N'LOPEZ', N'3196855221', N'CLLE CON KRA', N'algo@hotmail.com')
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'19483600', N'CC', N'oscar', N'JAVIER', N'AWAD', N'HIGUERA', N'321506987', N'CALLLLEEEE ', N'algo@hotmail.com')
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'292929', N'CE', N'PABLO', N'ERNESTO', N'GOMEZ', N'VEGA', N'3196705881', N'CALLLLEEEE ', N'algo@hotmail.com')
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'2929292444', N'CE', N'PABLO', N'ERNESTO', N'GOMEZ', N'VEGA', N'3196705881', N'CALLLLEEEE ', N'algo@hotmail.com')
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'34567000', N'CC', N'SARA', N'LUISA', N'JIMENEZ', N'VARGAS', N'3205474588', N'CLLE CON KRA', N'algo@hotmail.com')
INSERT [dbo].[Clientes] ([Documento], [TipoDocumento], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NoCelular], [Direccion], [CorreoElectronico]) VALUES (N'4455688', N'CC', N'JAVIER', N'ALBERTO', N'MENDEZ', N'DIAZ', N'3205479688', N'CLLE CON KRA', N'algo@hotmail.com')
GO
INSERT [dbo].[TipoDocumentos] ([TipoDocumento], [Descripcion]) VALUES (N'CC', N'CEDULA DE CIUDADANIA')
INSERT [dbo].[TipoDocumentos] ([TipoDocumento], [Descripcion]) VALUES (N'CE', N'CEDULA DE EXTRANJERIA')
INSERT [dbo].[TipoDocumentos] ([TipoDocumento], [Descripcion]) VALUES (N'TI', N'TARJETA DE IDENTIDAD')
GO
ALTER TABLE [dbo].[FactDetalleRepuestos] ADD  DEFAULT ((0)) FOR [ValorUnitario]
GO
ALTER TABLE [dbo].[FactDetalleRepuestos] ADD  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[FactDetalleRepuestos] ADD  DEFAULT ((0)) FOR [ValorTotal]
GO
ALTER TABLE [dbo].[FactDetalleServicios] ADD  DEFAULT ((0)) FOR [ValorUnitario]
GO
ALTER TABLE [dbo].[FactDetalleServicios] ADD  DEFAULT ((0)) FOR [ValorDescuento]
GO
ALTER TABLE [dbo].[FactDetalleServicios] ADD  DEFAULT ((0)) FOR [ValorTotal]
GO
ALTER TABLE [dbo].[FacturaEmcabezado] ADD  DEFAULT ((0)) FOR [PresupuestoCliente]
GO
ALTER TABLE [dbo].[FacturaEmcabezado] ADD  DEFAULT ((0)) FOR [ValorSubTotal]
GO
ALTER TABLE [dbo].[FacturaEmcabezado] ADD  DEFAULT ((0)) FOR [ValorTotalDescuento]
GO
ALTER TABLE [dbo].[FacturaEmcabezado] ADD  DEFAULT ((0)) FOR [ValorIVA]
GO
ALTER TABLE [dbo].[FacturaEmcabezado] ADD  DEFAULT ((0)) FOR [ValorTotalFactura]
GO
ALTER TABLE [dbo].[Mecanicos] ADD  DEFAULT ('Iniciar') FOR [Estado]
GO
ALTER TABLE [dbo].[Repuestos] ADD  DEFAULT ((0)) FOR [ValorUnitario]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaClientesAcumulado60Dias]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	5.	Consulta de Clientes que han comprado un 
-- acumulado $100.000 en los últimos 60 días
--EXEC ConsultaClientesAcumulado60Dias
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaClientesAcumulado60Dias]
AS
BEGIN
SET DATEFORMAT dmy;

	SELECT F.DocumentoCliente, SUM(F.ValorTotalFactura) AS TOTAL
	FROM CARCENTER.dbo.FacturaEmcabezado AS F
	GROUP BY F.DocumentoCliente
	HAVING GETDATE() BETWEEN (CONVERT(DATETIME, GETDATE(), 101) - 60) AND
	        (CONVERT(DATETIME, GETDATE(), 101))
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaProductosMasVendidos]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	6.	Consulta de los 100 productos más vendidos en los últimos 30 días
-- EXEC ConsultaProductosMasVendidos
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaProductosMasVendidos]
AS
BEGIN
SET DATEFORMAT dmy;

	SELECT R.IdRepuesto, R.DescripcionRepuesto, SUM(F.Cantidad) AS UNIDADES
	FROM dbo.FactDetalleRepuestos AS F
	INNER JOIN dbo.Repuestos AS R ON R.IdRepuesto = F.IdRepuesto
	GROUP BY R.IdRepuesto,R.DescripcionRepuesto
	HAVING 
	GETDATE() BETWEEN (CONVERT(DATETIME, GETDATE(), 101) - 30) AND
	        (CONVERT(DATETIME, GETDATE(), 101))
    ORDER BY R.IdRepuesto
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaTiendasMasVentas60Dias]    Script Date: 25/02/2021 10:55:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	7.	Consulta de las tiendas que han vendido más de 100 UND del 
-- producto 100 en los últimos 60 días.
--EXEC ConsultaTiendasMasVentas60Dias
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaTiendasMasVentas60Dias]
AS
BEGIN
SET DATEFORMAT dmy;

	SELECT F.Sucursal, SUM(F.Cantidad) AS UNIDADES
	FROM CARCENTER.dbo.FactDetalleRepuestos AS F
	GROUP BY F.Sucursal
	HAVING GETDATE() BETWEEN (CONVERT(DATETIME, GETDATE(), 101) - 60) AND
	        (CONVERT(DATETIME, GETDATE(), 101))
END
GO
