using Google.Apis.Auth.OAuth2;
using Google.Apis.Drive.v3;
using Google.Apis.Drive.v3.Data;
using Google.Apis.Services;
using Google.Apis.Util.Store;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace DriveQuickstart
{
	class Program
	{
		static string[] Scopes = { DriveService.Scope.Drive };
		static string ApplicationName = "Drive API .NET Quickstart";

		private static void SaveStream(
			System.IO.MemoryStream stream,
			string saveTo)
		{
			using (
				System.IO.FileStream file = new System.IO.FileStream(
					saveTo,
					System.IO.FileMode.Create,
					System.IO.FileAccess.Write)
			)
			{
				stream.WriteTo(file);
			}
		}

		// private static string GetMimeType(string fileName)
		// {
		// 	string mimeType = "application/unknown";
		// 	string ext = System.IO.Path.GetExtension(fileName).ToLower();
		// 	Microsoft.Win32.RegistryKey regKey = Microsoft.Win32.Registry.ClassesRoot.OpenSubKey(ext);
		// 	if (regKey != null && regKey.GetValue("Content Type") != null)
		// 		mimeType = regKey.GetValue("Content Type").ToString();
		// 	System.Diagnostics.Debug.WriteLine(mimeType);
		// 	return mimeType;
		// }

		private static void DownloadFile(
			Google.Apis.Drive.v3.DriveService service,
			Google.Apis.Drive.v3.Data.File file,
			string saveTo)
		{

			var request = service.Files.Get(file.Id);
			var stream = new System.IO.MemoryStream();

			// Add a handler which will be notified on progress changes.
			// It will notify on each chunk download and when the
			// download is completed or failed.
			request.MediaDownloader.ProgressChanged +=
				(Google.Apis.Download.IDownloadProgress progress) =>
				{
					switch (progress.Status)
					{
						case Google.Apis.Download.DownloadStatus.Downloading:
							{
								Console.WriteLine(progress.BytesDownloaded);
								break;
							}
						case Google.Apis.Download.DownloadStatus.Completed:
							{
								Console.WriteLine("Download complete.");
								SaveStream(stream, saveTo);
								break;
							}
						case Google.Apis.Download.DownloadStatus.Failed:
							{
								Console.WriteLine("Download failed.");
								break;
							}
					}
				};
			request.Download(stream);

		}


		// public Google.Apis.Drive.v3.Data.File uploadFile(
		// 	DriveService service,
		// 	string fileToUpload,
		// 	string parentFolderId,
		// 	string _descrp = "Uploaded with .NET!")
		// {
		// 	if (System.IO.File.Exists(fileToUpload))
		// 	{
		// 		Google.Apis.Drive.v3.Data.File body = 
		// 			new Google.Apis.Drive.v3.Data.File();
		// 		body.Name = System.IO.Path.GetFileName(fileToUpload);
		// 		body.Description = _descrp;
		// 		body.MimeType = "text/plain";
		// 		// UN comment if you want to upload to a folder 
		// 		// ID of parent folder needs to be provided as paramter
		// 		// body.Parents = new List<string> { parentFolderId };
		// 		byte[] byteArray = System.IO.File.ReadAllBytes(fileToUpload);
		// 		System.IO.MemoryStream stream = 
		// 			new System.IO.MemoryStream(byteArray);
	
		// 		FilesResource.CreateMediaUpload request = 
		// 			service.Files.Create(
		// 				body,
		// 				stream,
		// 				GetMimeType(fileToUpload) );
		// 		request.SupportsTeamDrives = true;
		// 		request.Upload();
		// 		return request.ResponseBody;

		// 	}
		// 	else
		// 	{
		// 		MessageBox.Show("The file does not exist.", "404");
		// 		return null;
		// 	}
		// }

		public static IList<Google.Apis.Drive.v3.Data.File> listFiles (
			Google.Apis.Drive.v3.DriveService service,
			string fields = "nextPageToken, files(id, name)",
			int pageSize = 20,
			string corpora = "allDrives",
			bool itemsFromAllDrives = true,
			bool supportsAllDrives = true
		)
		{
			// Define parameters of request.
			FilesResource.ListRequest listRequest = service.Files.List();
			listRequest.PageSize = pageSize;
			listRequest.Fields = fields;
			listRequest.Corpora = corpora;
			listRequest.PageSize = pageSize;
			listRequest.IncludeItemsFromAllDrives = itemsFromAllDrives;
			listRequest.SupportsAllDrives = supportsAllDrives;
			listRequest.Q = "sharedWithMe = true";


			// List files.
			IList<Google.Apis.Drive.v3.Data.File> files = listRequest.Execute()
				.Files;

			return files;
		}

		static void Main(string[] args)
		{
			UserCredential credential;

			using (var stream =
				new FileStream("credentials.json", FileMode.Open, FileAccess.Read))
			{
				// The file token.json stores the user's access and refresh tokens, and is created
				// automatically when the authorization flow completes for the first time.
				string credPath = "token.json";
				credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
					GoogleClientSecrets.Load(stream).Secrets,
					Scopes,
					"user",
					CancellationToken.None,
					new FileDataStore(credPath, true)).Result;
				Console.WriteLine("Credential file saved to: " + credPath);
			}

			// Create Drive API service.
			var service = new DriveService(new BaseClientService.Initializer()
			{
				HttpClientInitializer = credential,
				ApplicationName = ApplicationName,
			});

			IList<Google.Apis.Drive.v3.Data.File> files = listFiles(
				service
				);
			
			Console.WriteLine(files);
			Console.WriteLine("/////////////////////");

			Console.WriteLine("Files:");
			if (files != null && files.Count > 0)
			{
				foreach (var file in files)
				{
					Console.WriteLine("{0} ({1})", file.Name, file.Id);
				}
			}
			else
			{
				Console.WriteLine("No files found.");
			}

			///

			FilesResource.GetRequest getRequest = service.Files.Get("1nfyjd3GNKow57SfRp8MHg2J8Rh-vl8IB");
			// var response = getRequest.Execute();

			// Console.WriteLine(response.FullFileExtension);
			// Console.WriteLine(response.Name);
			// Console.WriteLine(response.WebViewLink);

			// //getRequest.MediaDownloader.Download();

			// DownloadFile(service, response, "./test");

		}
	}


}