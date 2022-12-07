pageextension 50100 DebugerLock extends "Customer List"
{
    trigger OnOpenPage()
    begin
        rec.LockTable();
        rec.FindSet();
        Sleep(1000);
    end;
}