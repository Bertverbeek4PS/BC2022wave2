reportextension 50101 MyExtCustomerList extends "Customer - List"
{
    rendering
    {
        layout(LayoutExcel)
        {
            Type = Excel;
            LayoutFile = 'MyExcelCustomerList.xlsx';
        }
        layout(LayoutWord)
        {
            Type = Word;
            LayoutFile = 'MyWordCustomerList.docx';
        }
    }
}