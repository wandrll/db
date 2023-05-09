jadeVersionNumber "22.0.02";
schemaDefinition
BankingModelSchema subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.526;
localeDefinitions
	1049 "Russian (Russia)" schemaDefaultLocale;
	setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.498;
typeHeaders
	BankingModelSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2051;
	Bank subclassOf Object highestOrdinal = 1, number = 2055;
	Customer subclassOf Object highestOrdinal = 4, number = 2054;
	GBankingModelSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2052;
	SBankingModelSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2053;
	CustomersDictionary subclassOf MemberKeyDictionary loadFactor = 66, number = 2056;
membershipDefinitions
	CustomersDictionary of Customer;
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	BankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.522;
	referenceDefinitions
		myBank:                        Bank  readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:28:30.795;
	jadeMethodDefinitions
		init() updating, number = 1001;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:30:15.933;
	)
	Bank completeDefinition
	(
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:25:50.585;
	attributeDefinitions
		custNum:                       Integer protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:26:05.965;
	jadeMethodDefinitions
		nextCustNum(): Integer updating, number = 1001;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:26:39.163;
	)
	Customer completeDefinition
	(
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:24:57.893;
	attributeDefinitions
		address:                       String[31] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:27:10.122;
		firstName:                     String[31] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:27:14.588;
		lastName:                      String[31] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:27:24.385;
		number:                        Integer readonly, number = 4, ordinal = 4;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:27:35.610;
	jadeMethodDefinitions
		create(
			addr: String; 
			first: String; 
			last: String) updating, number = 1001;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:31:15.615;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GBankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.524;
	)
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		createCustomer() number = 1001;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:18:32:06.351;
		loadCustomers() number = 1002;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:20:36:54.041;
		printLastNames() number = 1003;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:20:39:42.887;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SBankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.526;
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	CustomersDictionary completeDefinition
	(
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:20:32:30.343;
	)
memberKeyDefinitions
	CustomersDictionary completeDefinition
	(
		lastName Latin1;
	)
databaseDefinitions
	BankingModelSchemaDb
	(
	setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.526;
	databaseFileDefinitions
		"cheque" number = 54;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:41.720;
		"customer" number = 53;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:35.417;
		"savings" number = 55;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:46.751;
		"bankingmodelschema" number = 52;
		setModifiedTimeStamp "Wandrl" "22.0.02" 2023:05:07:16:21:01.526;
	defaultFileDefinition "bankingmodelschema";
	classMapDefinitions
		Bank in "savings";
		BankingModelSchema in "_usergui";
		Customer in "savings";
		CustomersDictionary in "customer";
		GBankingModelSchema in "bankingmodelschema";
		SBankingModelSchema in "_environ";
	)
typeSources
	BankingModelSchema (
	jadeMethodSources
init
{
init() updating;

begin
	self.myBank := Bank.firstInstance();
	
	if self.myBank = null then
		beginTransaction;
		create self.myBank persistent;
		commitTransaction;
	endif;
end;
}
	)
	Bank (
	jadeMethodSources
nextCustNum
{
nextCustNum(): Integer updating;
begin
self.custNum := self.custNum + 1;
return self.custNum;
end;
}
	)
	Customer (
	jadeMethodSources
create
{
create(addr, first, last: String) updating;
begin
	self.address := addr.trimBlanks();
	self.firstName := first.trimBlanks();
	self.lastName := last.trimBlanks();
	self.number := app.myBank.nextCustNum();
end;
}
	)
	JadeScript (
	jadeMethodSources
createCustomer
{
createCustomer();
vars
cust : Customer;
begin
	app.init();
beginTransaction;
	cust := create Customer("Moscow", "Ivan", "Petrov") persistent;
commitTransaction;
end;
}
loadCustomers
{
loadCustomers();

vars
	file: File;
	str: String;
	cust: Customer;
	dict: CustomersDictionary;
begin
	app.init();
	
	beginTransaction;
	create dict persistent;
	commitTransaction;
	
	create file transient;
	file.fileName := "D:\JadeCourse\Files\Customers.txt";
	while not file.endOfFile() do
		str := file.readLine();
		beginTransaction;
		cust := create Customer(str[41:end], str[16:25], str[1:15]);
		dict.add(cust);
		commitTransaction;
	endwhile;
	
end;
}
printLastNames
{
printLastNames();

vars
	cust: Customer;
	coll: CustomersDictionary;
begin
	coll := CustomersDictionary.firstInstance();
	foreach cust in coll do
		write cust.lastName;
	endforeach;
end;
}
	)
