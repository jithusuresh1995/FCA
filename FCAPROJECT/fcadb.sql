USE [master]
GO
/****** Object:  Database [FCA]    Script Date: 26-03-2019 12:00:22 ******/
CREATE DATABASE [FCA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FCA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FCA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FCA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FCA_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FCA] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FCA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FCA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FCA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FCA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FCA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FCA] SET ARITHABORT OFF 
GO
ALTER DATABASE [FCA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FCA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FCA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FCA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FCA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FCA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FCA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FCA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FCA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FCA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FCA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FCA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FCA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FCA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FCA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FCA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FCA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FCA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FCA] SET  MULTI_USER 
GO
ALTER DATABASE [FCA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FCA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FCA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FCA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FCA] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FCA]
GO
/****** Object:  Table [dbo].[tblBranchRegistration]    Script Date: 26-03-2019 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBranchRegistration](
	[Branch_id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_name] [varchar](20) NOT NULL,
	[Branch_address] [varchar](50) NOT NULL,
	[Branch_district] [varchar](20) NOT NULL,
	[Branch_city] [varchar](20) NOT NULL,
	[Branch_Zipcode] [numeric](10, 0) NOT NULL,
	[Branch_date] [varchar](20) NOT NULL,
	[Branch_phone] [varchar](10) NOT NULL,
	[Branch_email] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblBranchRegistration] PRIMARY KEY CLUSTERED 
(
	[Branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChitfund]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChitfund](
	[Chitfund_id] [int] IDENTITY(1,1) NOT NULL,
	[Chit_name] [varchar](30) NOT NULL,
	[Chit_amount] [float] NOT NULL,
	[Chit_installment] [float] NOT NULL,
	[Chit_no] [varchar](20) NOT NULL,
	[Tenure] [int] NOT NULL,
	[Deatils] [varchar](50) NOT NULL,
	[chit_Stardate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblChitfund] PRIMARY KEY CLUSTERED 
(
	[Chitfund_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCity](
	[City_id] [int] IDENTITY(1,1) NOT NULL,
	[Cityname] [varchar](50) NOT NULL,
	[District_id] [int] NOT NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[City_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCustomerregistration]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustomerregistration](
	[C_id] [int] IDENTITY(1,1) NOT NULL,
	[C_name] [varchar](30) NOT NULL,
	[C_addrress] [varchar](30) NOT NULL,
	[C_gender] [varchar](20) NOT NULL,
	[C_dob] [varchar](20) NOT NULL,
	[C_phone] [int] NOT NULL,
	[C_email] [varchar](30) NOT NULL,
	[C_district] [varchar](20) NOT NULL,
	[C_city] [varchar](20) NOT NULL,
	[C_idproof] [varchar](30) NOT NULL,
	[C_proofno] [varchar](20) NOT NULL,
	[C_photo] [varchar](20) NOT NULL,
	[C_username] [varchar](30) NOT NULL,
	[C_password] [varchar](30) NOT NULL,
	[Branch_id] [int] NOT NULL,
 CONSTRAINT [PK_tblCustomerregistration] PRIMARY KEY CLUSTERED 
(
	[C_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmployeeRegistration]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployeeRegistration](
	[Emp_id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_id] [int] NOT NULL,
	[E_name] [varchar](30) NOT NULL,
	[E_address] [varchar](30) NOT NULL,
	[E_gender] [varchar](10) NOT NULL,
	[E_dob] [varchar](20) NOT NULL,
	[E_phone] [varchar](12) NOT NULL,
	[E_email] [varchar](50) NOT NULL,
	[E_mstatus] [varchar](10) NOT NULL,
	[E_designation] [varchar](30) NOT NULL,
	[E_photo] [varchar](30) NOT NULL,
	[E_joinDate] [varchar](30) NOT NULL,
	[E_username] [varchar](50) NOT NULL,
	[E_password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblEmployeeRegistration] PRIMARY KEY CLUSTERED 
(
	[Emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoantype]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLoantype](
	[L_id] [int] IDENTITY(1,1) NOT NULL,
	[L_name] [varchar](20) NOT NULL,
	[L_details] [varchar](30) NOT NULL,
	[L_interestrate] [float] NOT NULL,
	[L_minamount] [float] NOT NULL,
	[L_maxamount] [float] NOT NULL,
	[L_minduration] [int] NOT NULL,
	[L_maxduration] [int] NOT NULL,
 CONSTRAINT [PK_tblLoantype] PRIMARY KEY CLUSTERED 
(
	[L_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogin](
	[Login_id] [int] IDENTITY(1,1) NOT NULL,
	[Login_type] [varchar](20) NOT NULL,
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[Login_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblManagerRegistration]    Script Date: 26-03-2019 12:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblManagerRegistration](
	[M_id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_id] [int] NOT NULL,
	[M_name] [varchar](30) NOT NULL,
	[M_address] [varchar](30) NOT NULL,
	[M_gender] [varchar](20) NOT NULL,
	[M_dob] [varchar](20) NOT NULL,
	[M_phone] [varchar](20) NOT NULL,
	[M_email] [varchar](30) NOT NULL,
	[M_idproof] [varchar](30) NOT NULL,
	[M_proofno] [varchar](20) NOT NULL,
	[M_photo] [varchar](50) NULL,
	[M_qualification] [varchar](30) NOT NULL,
	[M_experience] [varchar](30) NOT NULL,
	[M_username] [varchar](50) NOT NULL,
	[M_password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblManagerRegistration] PRIMARY KEY CLUSTERED 
(
	[M_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblCustomerregistration]  WITH CHECK ADD  CONSTRAINT [FK_tblCustomerregistration_tblCustomerregistration] FOREIGN KEY([Branch_id])
REFERENCES [dbo].[tblBranchRegistration] ([Branch_id])
GO
ALTER TABLE [dbo].[tblCustomerregistration] CHECK CONSTRAINT [FK_tblCustomerregistration_tblCustomerregistration]
GO
ALTER TABLE [dbo].[tblEmployeeRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblEmployeeRegistration_tblBranchRegistration] FOREIGN KEY([Branch_id])
REFERENCES [dbo].[tblBranchRegistration] ([Branch_id])
GO
ALTER TABLE [dbo].[tblEmployeeRegistration] CHECK CONSTRAINT [FK_tblEmployeeRegistration_tblBranchRegistration]
GO
ALTER TABLE [dbo].[tblManagerRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblManagerRegistration_tblManagerRegistration] FOREIGN KEY([M_id])
REFERENCES [dbo].[tblManagerRegistration] ([M_id])
GO
ALTER TABLE [dbo].[tblManagerRegistration] CHECK CONSTRAINT [FK_tblManagerRegistration_tblManagerRegistration]
GO
USE [master]
GO
ALTER DATABASE [FCA] SET  READ_WRITE 
GO
