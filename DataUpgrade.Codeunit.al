codeunit 50102 UpgradeCodeunit
{
    Subtype = Upgrade;

    trigger OnRun()
    begin

    end;

    local procedure CopyRows()
    var
        dt: DataTransfer;
        src: Record Customer;
        dest: Record "My Customer";
    begin
        dt.SetTables(Database::Customer, Database::"My Customer");
        dt.AddFieldValue(src.FieldNo("No."), dest.FieldNo("Customer No."));
        dt.AddFieldValue(src.FieldNo("Phone No."), dest.FieldNo("Phone No."));
        dt.AddConstantValue('x', dest.FieldNo("User Id"));
        dt.AddSourceFilter(src.FieldNo("No."), '=%1', 'A');
        dt.CopyRows();
    end;
}