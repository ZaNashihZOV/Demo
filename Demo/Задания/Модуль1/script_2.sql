USE [user_1]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[RequestID] [int] NOT NULL,
	[MasterID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemDescryption]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemDescryption](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProblemDescryption] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairParts]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairParts](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RepairParts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairRequest]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairRequest](
	[ID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CompletionDate] [datetime] NULL,
	[masterID] [int] NULL,
	[ckientID] [int] NOT NULL,
	[RepairPartsID] [int] NULL,
	[ProblemDescryptionID] [int] NOT NULL,
	[RequestStatusID] [int] NOT NULL,
	[TechModelID] [int] NOT NULL,
 CONSTRAINT [PK_RepairRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestStatus]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestStatus](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RequestStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechModel]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechModel](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[TechTypeID] [int] NOT NULL,
 CONSTRAINT [PK_TechModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechType]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TechType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.05.2024 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](12) NOT NULL,
	[login] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_RepairRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[RepairRequest] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_RepairRequest]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_User] FOREIGN KEY([MasterID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_User]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_Client] FOREIGN KEY([ckientID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_Client]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_Master] FOREIGN KEY([masterID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_Master]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_ProblemDescryption] FOREIGN KEY([ProblemDescryptionID])
REFERENCES [dbo].[ProblemDescryption] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_ProblemDescryption]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_RepairParts] FOREIGN KEY([RepairPartsID])
REFERENCES [dbo].[RepairParts] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_RepairParts]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_RequestStatus] FOREIGN KEY([RequestStatusID])
REFERENCES [dbo].[RequestStatus] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_RequestStatus]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_TechModel] FOREIGN KEY([TechModelID])
REFERENCES [dbo].[TechModel] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_TechModel]
GO
ALTER TABLE [dbo].[TechModel]  WITH CHECK ADD  CONSTRAINT [FK_TechModel_TechType] FOREIGN KEY([TechTypeID])
REFERENCES [dbo].[TechType] ([ID])
GO
ALTER TABLE [dbo].[TechModel] CHECK CONSTRAINT [FK_TechModel_TechType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
