codeunit 50101 SystemRowVersion
{
    trigger OnRun()
    begin

    end;

    procedure GetSystemRowCustomer(RowVersion: BigInteger)
    var
        Customer: Record Customer;
    begin
        //Get Rowversion of Record
        if Customer.FindFirst() then
            RowVersion := Customer.SystemRowVersion;

        //Get Latest Datavase Rowversion
        RowVersion := Database.LastUsedRowVersion();

        //Returns the lowest active RowVersion in the database. 
        //This is the lowest RowVersion for an uncomitted row, meaning rows with a lower timestamp than this value are guaranteed to be comitted.
        RowVersion := Database.MinimumActiveRowVersion()

    end;


}