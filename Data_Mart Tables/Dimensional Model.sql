use DimensionalModel;

create table Customer_Dim (customer_DW_id bigint not null primary key, customer_id bigint not null, 
							CNIC varchar(50) not null, eff_from_TSTMT datetime not null, eff_to_TSTMT datetime not null,
							insert_TSTMT datetime not null, update_TSTMT datetime not null, current_flag bit not null,
							income float not null, marital_status varchar(50) not null, childern varchar(50) not null,
							credit varchar(50) not null, gender varchar(50) not null, username varchar(50) not null,
							passward varchar(50) not null, alias varchar(50) not null, resgisteted_date date not null,
							surname varchar(50) not null, first_name varchar(50) not null, middle_name varchar(50) not null,
							last_name varchar(50) not null, surname_first varchar(50) not null, salutation varchar(50) not null,
							birth_date varchar(50) not null,
							branch_DW_id bigint not null foreign key references Branch_Dim (branch_DW_id),
							Account_DW_id bigint not null foreign key references Account_Dim (Account_DW_id),
							customer_ATM_DW_id bigint not null foreign key references customer_ATM_Dim (customer_ATM_DW_id),
							Customer_Closure_DW_id bigint not null foreign key references Customer_Closure_dim (Customer_Closure_DW_id),
							customer_contact_DW_id bigint not null foreign key references customer_contact_Dim (customer_contact_DW_id));


create table Cust_Acc_Dim (Cust_Acc_DW_id bigint not null primary key, 
							customer_DW_id bigint not null foreign key references Customer_Dim (customer_DW_id), 
							account_DW_id bigint not null foreign key references Account_Dim (account_DW_id));



create table Prod_Acc_Dim (Prod_Acc_DW_id bigint not null primary key, 
							Product_DW_id bigint not null foreign key references Product_dim (Product_DW_id), 
							account_DW_id bigint not null foreign key references Account_Dim (account_DW_id));

create table Organization_Account_Dim (Organization_Account_DW_id bigint not null primary key, Organization_Account_id bigint not null,
										business_type varchar(50) not null, Organization_address varchar(50) not null,
										contact_no varchar(50) not null, mailing_address varchar(50) not null,
										insert_TSTMT datetime not null, update_TSTMT datetime not null,
										account_type varchar(50) not null;


create table Customer_ATM_Dim (Customer_ATM_DW_id bigint not null primary key, customer_account_no varchar(50) not null, customer_card_no varchar(50) not null,
								insert_TSTMT datetime not null, update_TSTMT datetime not null);

	
create table Product_dim (Product_DW_id bigint not null primary key, MCB_loan_id bigint not null, loan_type varchar(50) not null,
							loan_demanded varchar(50) not null, loan_given varchar(50) not null, return_period varchar(50) not null,
							issued_date date not null, guarantee varchar(50) not null, insert_TSTMT datetime not null,
							card_id bigint not null, card_NO bigint not null, card_limit bigint not null,
							repaid_Status varchar (50) not null);

							
create table Account_Dim (account_DW_id bigint not null primary key, internal_key bigint not null, account_id bigint not null,
							account_type varchar (50) not null, account_number bigint not null, category varchar (50) not null,
							open_date date not null, close_date date not null, eff_from_TSTMT datetime not null, eff_to_TSTMT datetime not null,
							insert_TSTMT datetime not null, update_TSTMT datetime not null, current_flag bit not null,
							last_balance bigint not null, new_balance bigint not null, ledger_balance bigint not null,
							actual_balance bigint not null, account_status varchar (50) not null, ATM_limit varchar (50) not null,
							ownership_type varchar (50) not null, deposit_type varchar (50) not null,
							value_date_mode varchar (50) not null, zakat_exampt varchar (50) not null,
							AccountType varchar (50) not null, account_balance bigint not null);


create table ACC_Transection_Fact (ACC_Transection_DW_id bigint not null primary key, ACC_Transection_id bigint not null,
									internal_key bigint not null, transaction_amount bigint not null,
									transacted_account_no bigint not null, Transection_time date not null,
									Transection_date date not null, open_Transection_date date not null,
									last_Transection date not null, restraint_present varchar (50),
									Employee_DW_id bigint not null foreign key references Employee_information_Dim (Employee_DW_id),
									customer_DW_id bigint not null foreign key references customer_Dim (customer_DW_id),
									branch_dw_id bigint not null foreign key references branch_dim (branch_dw_id),
									Cust_Acc_DW_id bigint not null foreign key references Cust_Acc_Dim (Cust_Acc_DW_id),
									Product_DW_id bigint not null foreign key references Product_Dim (Product_DW_id),
									Organization_Account_DW_id bigint not null foreign key references Organization_Account_Dim (Organization_Account_DW_id),
									Customer_ATM_DW_id bigint not null foreign key references Customer_ATM_Dim (Customer_ATM_DW_id),
									current_bal_check float not null, loan_status float not null, withdraw float not null, deposit float not null);



create table Employee_information_dim (employee_dw_id bigint not null primary key, employee_id bigint not null,
					employee_name varchar(50) not null, employee_gender varchar(50) not null, joining_date date not null,
					supervisor_id bigint not null, email varchar(50) not null,
					insert_TSTMT datetime not null, update_TSTMT datetime not null,
					emp_attendance_dw_id bigint not null foreign key references Employee_attendance_dim (emp_attendance_dw_id),
					UserName varchar(50) not null, Passward varchar(50) not null, Emp_Role varchar(50) not null,
					Salary float not null, Commission float not null, paying_Date Date not null);

create table Employee_attendance_dim (emp_attendance_dw_id bigint not null primary key, employee_id bigint not null,
										insert_TSTMT datetime not null, update_TSTMT datetime not null,
										todays_date date not null, is_attend varchar(50) not null);


create table Branch_dim (branch_dw_id bigint not null primary key, branch_code bigint not null, branch_name varchar(50) not null,
						branchName varchar(50) not null, branch_city varchar(50) not null, branch_address varchar(50) not null,
						insert_TSTMT datetime not null, update_TSTMT datetime not null, branch_state varchar(50) not null);

create table Customer_Contact_Dim (customer_contact_dw_id bigint not null primary key, customer_id bigint not null, 
									contact_id bigint not null,contact_no bigint not null, email varchar(50) not null,
									postal_code bigint not null, address varchar(50) not null, state varchar(50) not null,
									insert_TSTMT datetime not null, update_TSTMT datetime not null,
									city varchar(50) not null, country_citizen varchar(50) not null);

create table Customer_Closure_dim (Customer_Closure_DW_id bigint not null primary key, customer_id bigint not null,
									customer_closure_id bigint not null, startDate date not null, end_date date not null,
									insert_TSTMT datetime not null, update_TSTMT datetime not null,
									closure_reason varchar(100) not null);




					use MCBI_STG_DB;
					select * from STG_customer_CRM;
