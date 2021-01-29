   public void DownloadFile(string fileId, string saveTo)
    {
        var request = service.Files.Get(fileId);
        //var stream = new System.IO.MemoryStream();
        FileStream fileStream = new FileStream(saveTo, FileMode.OpenOrCreate, FileAccess.Write);
        // Add a handler which will be notified on progress changes.
        // It will notify on each chunk download and when the
        // download is completed or failed.
        request.MediaDownloader.ProgressChanged += (Google.Apis.Download.IDownloadProgress progress) =>
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
                        //SaveStream(stream, saveTo);
                        fileStream.Flush();
                        fileStream.Close();
                        break;
                    }
                case Google.Apis.Download.DownloadStatus.Failed:
                    {
                        Console.WriteLine("Download failed.");
                        break;
                    }
            }
        };
       //request.Download(stream);
       request.Download(fileStream);
       GC.Collect();
    }