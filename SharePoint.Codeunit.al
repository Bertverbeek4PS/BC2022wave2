codeunit 50104 SharePoint
{
    trigger OnRun()
    begin

    end;

    procedure Sharepoint()
    var
        SharePointAuth: Codeunit "SharePoint Auth.";
        SharePointAuthorization: Interface "SharePoint Authorization";
        SPClient: Codeunit "SharePoint Client";
        SharePointFolder: Record "SharePoint Folder";
        SharePointFile: Record "SharePoint File";
        FileInStream: InStream;
    begin
        SharePointAuthorization := SharePointAuth.CreateAuthorizationCode('<AadTenantId>', '<ClientId>', '<ClientSecret>', '<Scope>');
        SPClient.Initialize('<BaseUrl>', SharePointAuthorization);

        //Upload file to folder
        SPClient.AddFileToFolder(SharePointFolder."Server Relative Url", '<FileName>', FileInStream, SharePointFile);

        //download
        SPClient.DownloadFileContent(SharePointFile.OdataId, SharePointFile.Name);
    end;
}