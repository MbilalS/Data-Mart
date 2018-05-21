USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Account]    Script Date: 2/10/2017 9:35:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Account](
	[Account_id] [int] NOT NULL,
	[Account_info_id] [int] NOT NULL,
	[Account_status] [varchar](20) NULL,
	[Account_ATM_Limit] [int] NULL,
	[Account_Ownership_type] [varchar](20) NULL,
	[Account_Deposit_type] [varchar](20) NULL,
	[Account_Value_Date_mode] [date] NULL,
	[Zakat_exempt] [varchar](20) NULL,
	[withdraw] [float] NULL,
	[deposit] [float] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Account_Balances]    Script Date: 2/10/2017 9:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Account_Balances](
	[Account_balance_id] [int] NOT NULL,
	[last_balance] [int] NOT NULL,
	[new_balance] [varchar](20) NULL,
	[Ledger_Bal] [int] NULL,
	[Actual_Bal] [int] NULL,
	[Account_id] [int] NOT NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_Account_Balances]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[STG_Account] ([Account_id])
GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_account_IB]    Script Date: 2/10/2017 9:36:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_account_IB](
	[account_no] [int] NOT NULL,
	[acc_type] [varchar](50) NULL,
	[acc_balance] [float] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_account_IB] ADD  DEFAULT (NULL) FOR [acc_type]
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Account_info]    Script Date: 2/10/2017 9:36:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Account_info](
	[Account_info_id] [int] NOT NULL,
	[Account_status] [varchar](15) NOT NULL,
	[Account_ATM_limit] [int] NULL,
	[Ownership_type] [varchar](25) NULL,
	[deposite_type] [varchar](25) NULL,
	[value_date_mode] [varchar](15) NULL,
	[Zakat_exempt] [varchar](15) NULL,
	[Account_id] [int] NOT NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_Account_info]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[STG_Account] ([Account_id])
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Account_Transaction]    Script Date: 2/10/2017 9:37:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Account_Transaction](
	[Internal_key] [int] NOT NULL,
	[Account_transaction_id] [int] NOT NULL,
	[transaction_account_no] [int] NOT NULL,
	[transaction_time] [varchar](20) NULL,
	[transaction_date] [date] NULL,
	[open_transaction_date] [date] NULL,
	[last_transaction] [date] NULL,
	[Restraint_present] [varchar](10) NULL,
	[Account_id] [int] NOT NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Internal_key] ASC,
	[Account_transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_branch]    Script Date: 2/10/2017 9:37:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_branch](
	[branch_code] [int] NOT NULL,
	[branch_name] [varchar](30) NULL,
	[branch_city] [varchar](30) NULL,
	[branch_address] [varchar](100) NULL,
	[branch_state] [varchar](30) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[branch_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_branch] ADD  DEFAULT (NULL) FOR [branch_name]
GO

ALTER TABLE [dbo].[STG_branch] ADD  DEFAULT (NULL) FOR [branch_city]
GO

ALTER TABLE [dbo].[STG_branch] ADD  DEFAULT (NULL) FOR [branch_address]
GO

ALTER TABLE [dbo].[STG_branch] ADD  DEFAULT (NULL) FOR [branch_state]
GO


USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Credit_Card]    Script Date: 2/10/2017 9:37:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Credit_Card](
	[Credit_Card_id] [int] NOT NULL,
	[Credit_Card_no] [int] NOT NULL,
	[Credit_Card_limit] [int] NOT NULL,
	[Loan_return_period] [varchar](20) NULL,
	[Credit_Card_repaid_status] [varchar](20) NULL,
	[Account_id] [int] NOT NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_customer]    Script Date: 2/10/2017 9:39:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_customer](
	[customer_id] [int] NOT NULL,
	[branch_code] [int] NULL,
	[account_no] [int] NULL,
	[customer_username] [varchar](100) NULL,
	[customer_password] [varchar](50) NULL,
	[customer_address] [varchar](100) NULL,
	[customer_city] [varchar](30) NULL,
	[customer_email] [varchar](50) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_customer] ADD  DEFAULT (NULL) FOR [branch_code]
GO

ALTER TABLE [dbo].[STG_customer] ADD  DEFAULT (NULL) FOR [customer_username]
GO

ALTER TABLE [dbo].[STG_customer] ADD  DEFAULT (NULL) FOR [customer_password]
GO

ALTER TABLE [dbo].[STG_customer] ADD  DEFAULT (NULL) FOR [customer_address]
GO

ALTER TABLE [dbo].[STG_customer] ADD  DEFAULT (NULL) FOR [customer_city]
GO

ALTER TABLE [dbo].[STG_customer] ADD  DEFAULT (NULL) FOR [customer_email]
GO

ALTER TABLE [dbo].[STG_customer]  WITH CHECK ADD FOREIGN KEY([account_no])
REFERENCES [dbo].[STG_account_IB] ([account_no])
GO






USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_customer_account]    Script Date: 2/10/2017 9:41:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_customer_account](
	[customer_id] [int] NOT NULL,
	[customer_account_no] [varchar](100) NULL,
	[customer_balance] [int] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO







USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_customer_address]    Script Date: 2/10/2017 9:41:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_customer_address](
	[customer_id] [int] NOT NULL,
	[cutomer_country] [varchar](100) NULL,
	[customer_city] [varchar](100) NULL,
	[customer_province] [varchar](100) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_customer_Atm]    Script Date: 2/10/2017 9:42:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_customer_Atm](
	[customer_id] [int] NOT NULL,
	[cutomer_accountno] [varchar](100) NULL,
	[customer_cardnumber] [varchar](100) NULL,
	[customer_balance] [int] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO






USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Customer_Closure]    Script Date: 2/10/2017 9:42:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Customer_Closure](
	[Customer_id] [int] NOT NULL,
	[Customer_Closure_id] [int] NOT NULL,
	[Start_date] [date] NULL,
	[End_date] [date] NULL,
	[Customer_Closure_Reason] [varchar](20) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Closure_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Customer_Contact]    Script Date: 2/10/2017 9:42:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Customer_Contact](
	[Customer_id] [int] NOT NULL,
	[Customer_Contact] [int] NOT NULL,
	[Customer_Contact_Id] [int] NOT NULL,
	[Customer_Email] [varchar](20) NOT NULL,
	[Customer_PostalCode] [varchar](15) NOT NULL,
	[Customer_Address] [varchar](20) NULL,
	[Customer_State] [varchar](20) NOT NULL,
	[Customer_City] [varchar](20) NULL,
	[Customer_Country_Citizen] [varchar](20) NULL,
	[INSRT_TIME_STAMP] [date] NULL,
	[UPDT_TIME_STAMP] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO






USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_customer_CRM]    Script Date: 2/10/2017 9:43:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_customer_CRM](
	[account_id] [int] NULL,
	[customer_id] [int] NOT NULL,
	[customer_name] [varchar](100) NULL,
	[customer_cnic] [varchar](20) NULL,
	[customer_address] [varchar](100) NULL,
	[customer_contact] [varchar](100) NULL,
	[customer_email] [varchar](100) NULL,
	[branch] [varchar](100) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_customer_demographic]    Script Date: 2/10/2017 9:44:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[STG_customer_demographic](
	[Customer_id] [int] NOT NULL,
	[Customer_Income] [int] NOT NULL,
	[Customer_Marital_Status] [varchar](20) NULL,
	[Customer_Childeren] [int] NULL,
	[Customer_Credit] [int] NOT NULL,
	[Customer_Gender] [varchar](20) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO






USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Customer_Flex]    Script Date: 2/10/2017 9:44:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Customer_Flex](
	[Customer_id] [int] NOT NULL,
	[Customer_name] [varchar](20) NOT NULL,
	[Account_No] [int] NULL,
	[Customer_Password] [varchar](20) NULL,
	[Customer_CNIC_No] [varchar](20) NOT NULL,
	[Registered_Date] [date] NULL,
	[Customer_Alias] [varchar](100) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO






USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Customer_INDVL]    Script Date: 2/10/2017 9:44:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Customer_INDVL](
	[Customer_id] [int] NOT NULL,
	[Customer_INDVL_ID] [int] NOT NULL,
	[Customer_First_name] [varchar](20) NOT NULL,
	[Customer_Last_name] [varchar](20) NOT NULL,
	[Customer_Middle_name] [varchar](20) NOT NULL,
	[Customer_Salutation] [varchar](20) NULL,
	[Customer_Dob] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Customer_marital_status] [varchar](20) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_employee_attendance]    Script Date: 2/10/2017 9:45:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_employee_attendance](
	[employee_id] [int] NOT NULL,
	[todays_date] [date] NULL,
	[is_attend] [nchar](10) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
 CONSTRAINT [PK_STG_employee_attendance] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Employee_details]    Script Date: 2/10/2017 9:45:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_Employee_details](
	[employee_id] [int] NOT NULL,
	[employee_name] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[joining_date] [date] NULL,
	[supervisor_id] [int] NULL,
	[date_of_birth] [date] NULL,
	[email] [varchar](50) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
 CONSTRAINT [PK_STG_Employee_details] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_employee_leave_status]    Script Date: 2/10/2017 9:45:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_employee_leave_status](
	[leave_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[total_leave_yearly] [int] NULL,
	[deducted_leaves] [int] NULL,
	[remaining_leaves] [int] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
 CONSTRAINT [PK_STG_employee_leave_status] PRIMARY KEY CLUSTERED 
(
	[leave_id] ASC,
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_Employee_payment]    Script Date: 2/10/2017 9:45:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_Employee_payment](
	[employee_id] [int] NOT NULL,
	[salary] [float] NULL,
	[commission] [float] NULL,
	[paying_date] [date] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
 CONSTRAINT [PK_STG_Employee_payment] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_MCB_Loan]    Script Date: 2/10/2017 9:45:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_MCB_Loan](
	[MVB_Loan_id] [int] NOT NULL,
	[Lan_type] [varchar](20) NULL,
	[Loan_amount_demanded] [int] NOT NULL,
	[Loan_amount_given] [int] NOT NULL,
	[Loan_return_period] [varchar](20) NULL,
	[Loan_guarantee] [varchar](20) NULL,
	[Loan_issued_date] [date] NULL,
	[Account_id] [int] NOT NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_MCB_Loan]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[STG_Account] ([Account_id])
GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_organization_account]    Script Date: 2/10/2017 9:46:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[STG_organization_account](
	[customer_id] [int] NOT NULL,
	[bussiness_type] [varchar](100) NULL,
	[organization_address] [varchar](100) NULL,
	[contact_no] [varchar](20) NULL,
	[email_address] [varchar](100) NULL,
	[account_type] [varchar](100) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_transaction_history]    Script Date: 2/10/2017 9:47:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_transaction_history](
	[trans_id] [int] NOT NULL,
	[branch_code] [int] NULL,
	[acc_no] [int] NULL,
	[Transtype_id] [int] NULL,
	[transtype_desc] [varchar](100) NULL,
	[trans_amount] [int] NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_transaction_history] ADD  DEFAULT (NULL) FOR [branch_code]
GO

ALTER TABLE [dbo].[STG_transaction_history] ADD  DEFAULT (NULL) FOR [acc_no]
GO

ALTER TABLE [dbo].[STG_transaction_history] ADD  DEFAULT (NULL) FOR [transtype_desc]
GO

ALTER TABLE [dbo].[STG_transaction_history] ADD  DEFAULT (NULL) FOR [trans_amount]
GO




USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_transaction_type]    Script Date: 2/10/2017 9:47:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_transaction_type](
	[transtype_id] [int] NOT NULL,
	[transtype_desc] [varchar](100) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[transtype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STG_transaction_type] ADD  DEFAULT (NULL) FOR [transtype_desc]
GO





USE [MCBI_STG_DB]
GO

/****** Object:  Table [dbo].[STG_user_authentication]    Script Date: 2/10/2017 9:47:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STG_user_authentication](
	[employee_id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[INSRT_TIME_STAMP] [datetime] NULL,
	[UPDT_TIME_STAMP] [datetime] NULL,
 CONSTRAINT [employee_id] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Account]    Script Date: 2/10/2017 10:41:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Account](
	[Account_id] [int] NOT NULL,
	[Account_info_id] [int] NOT NULL,
	[Account_status] [varchar](20) NULL,
	[Account_ATM_Limit] [int] NULL,
	[Account_Ownership_type] [varchar](20) NULL,
	[Account_Deposit_type] [varchar](20) NULL,
	[Account_Value_Date_mode] [date] NULL,
	[Zakat_exempt] [varchar](20) NULL,
	[withdraw] [float] NULL,
	[deposit] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Account_Balances]    Script Date: 2/10/2017 10:41:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Account_Balances](
	[Account_balance_id] [int] NOT NULL,
	[last_balance] [int] NOT NULL,
	[new_balance] [varchar](20) NULL,
	[Ledger_Bal] [int] NULL,
	[Actual_Bal] [int] NULL,
	[Account_id] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Account_Balances]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO

ALTER TABLE [dbo].[Account_Balances]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO








USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Account_info]    Script Date: 2/10/2017 10:42:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Account_info](
	[Account_info_id] [int] NOT NULL,
	[Account_status] [varchar](15) NOT NULL,
	[Account_ATM_limit] [int] NULL,
	[Ownership_type] [varchar](25) NULL,
	[deposite_type] [varchar](25) NULL,
	[value_date_mode] [varchar](15) NULL,
	[Zakat_exempt] [varchar](15) NULL,
	[Account_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Account_info]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO





create database flexcube_source;
USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Account_Transaction]    Script Date: 2/10/2017 10:42:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Account_Transaction](
	[Internal_key] [int] NOT NULL,
	[Account_transaction_id] [int] NOT NULL,
	[transaction_account_no] [int] NOT NULL,
	[transaction_time] [varchar](20) NULL,
	[transaction_date] [date] NULL,
	[open_transaction_date] [date] NULL,
	[last_transaction] [date] NULL,
	[Restraint_present] [varchar](10) NULL,
	[Account_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Internal_key] ASC,
	[Account_transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Account_Transaction]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO







USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Credit_Card]    Script Date: 2/10/2017 10:42:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Credit_Card](
	[Credit_Card_id] [int] NOT NULL,
	[Credit_Card_no] [int] NOT NULL,
	[Credit_Card_limit] [int] NOT NULL,
	[Loan_return_period] [varchar](20) NULL,
	[Credit_Card_repaid_status] [varchar](20) NULL,
	[Account_id] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Credit_Card]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO







USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Customer_Closure]    Script Date: 2/10/2017 10:43:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer_Closure](
	[Customer_id] [int] NOT NULL,
	[Customer_Closure_id] [int] NOT NULL,
	[Start_date] [date] NULL,
	[End_date] [date] NULL,
	[Customer_Closure_Reason] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Closure_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO







USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Customer_Contact]    Script Date: 2/10/2017 10:43:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer_Contact](
	[Customer_id] [int] NOT NULL,
	[Customer_Contact] [int] NOT NULL,
	[Customer_Contact_Id] [int] NOT NULL,
	[Customer_Email] [varchar](20) NOT NULL,
	[Customer_PostalCode] [varchar](15) NOT NULL,
	[Customer_Address] [varchar](20) NULL,
	[Customer_State] [varchar](20) NOT NULL,
	[Customer_City] [varchar](20) NULL,
	[Customer_Country_Citizen] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Customer_Contact]  WITH CHECK ADD FOREIGN KEY([Customer_id])
REFERENCES [dbo].[customer_Flex] ([Customer_id])
GO

ALTER TABLE [dbo].[Customer_Contact]  WITH CHECK ADD FOREIGN KEY([Customer_id])
REFERENCES [dbo].[customer_Flex] ([Customer_id])
GO






USE [flexcube_source]
GO

/****** Object:  Table [dbo].[customer_Flex]    Script Date: 2/10/2017 10:44:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[customer_Flex](
	[Customer_id] [int] NOT NULL,
	[Customer_name] [varchar](20) NOT NULL,
	[Account_No] [int] NULL,
	[Customer_Password] [varchar](20) NULL,
	[Customer_CNIC_No] [varchar](20) NOT NULL,
	[Registered_Date] [date] NULL,
	[Customer_Alias] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[customer_Flex]  WITH CHECK ADD FOREIGN KEY([Account_No])
REFERENCES [dbo].[Account] ([Account_id])
GO







USE [flexcube_source]
GO

/****** Object:  Table [dbo].[Customer_INDVL]    Script Date: 2/10/2017 10:44:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer_INDVL](
	[Customer_id] [int] NOT NULL,
	[Customer_INDVL_ID] [int] NOT NULL,
	[Customer_First_name] [varchar](20) NOT NULL,
	[Customer_Last_name] [varchar](20) NOT NULL,
	[Customer_Middle_name] [varchar](20) NOT NULL,
	[Customer_Salutation] [varchar](20) NULL,
	[Customer_Dob] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Customer_marital_status] [varchar](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO






USE [flexcube_source]
GO

/****** Object:  Table [dbo].[MCB_Loan]    Script Date: 2/10/2017 10:45:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MCB_Loan](
	[MVB_Loan_id] [int] NOT NULL,
	[Lan_type] [varchar](20) NULL,
	[Loan_amount_demanded] [int] NOT NULL,
	[Loan_amount_given] [int] NOT NULL,
	[Loan_return_period] [varchar](20) NULL,
	[Loan_guarantee] [varchar](20) NULL,
	[Loan_issued_date] [date] NULL,
	[Account_id] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MCB_Loan]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO

ALTER TABLE [dbo].[MCB_Loan]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Account_id])
GO


use flexcube_source;
select * from Account_info;
delete from STG_transaction_history;


use MCBI_STG_DB;
select * from STG_Account_Balances;
delete from STG_Customer_Closure;





