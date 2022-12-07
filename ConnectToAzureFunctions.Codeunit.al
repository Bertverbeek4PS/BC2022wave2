codeunit 50100 "Connect to Azure Functions"
{
    trigger OnRun()
    begin

    end;

    local procedure MyProcedure()
    var
        AzureFunctionAuthentication: Codeunit "Azure Functions Authentication";
        AzureFunctionResponse: Codeunit "Azure Functions Response";
        IAzurefunctionAuthentication: Interface "Azure Functions Authentication";
        AzureFunction: Codeunit "Azure Functions";
        QueryDictionary: Dictionary of [Text, Text];
        ResponseTxt: Text;
    begin
        IAzurefunctionAuthentication := AzureFunctionAuthentication.CreateCodeAuth('<Function URL>', '<Function Code>');
        QueryDictionary.Add('name', 'value');
        AzureFunctionResponse := AzureFunction.SendGetRequest(IAzurefunctionAuthentication, QueryDictionary);
        if AzureFunctionResponse.IsSuccessful() then begin
            AzureFunctionResponse.GetResultAsText(ResponseTxt);
            Message(ResponseTxt);
        end
        else
            Message(AzureFunctionResponse.GetError());

    end;
}