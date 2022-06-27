using HzyScanDiService;
using Microsoft.AspNetCore.Http;

namespace HZY.Services.Upload;

public interface IUploadService : ITransientDependency
{
    string HandleUploadFile(IFormFile iFormFile, params string[] format);

    string HandleUploadImageFile(IFormFile iFormFile, string folder = "files");
}
