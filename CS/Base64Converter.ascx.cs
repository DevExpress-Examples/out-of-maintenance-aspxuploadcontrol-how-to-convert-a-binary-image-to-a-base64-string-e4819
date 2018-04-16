using System;
using DevExpress.Web.ASPxUploadControl;
using System.Web.UI;
using System.IO;
using System.Drawing;

public partial class Base64Converter : System.Web.UI.UserControl {
    const string UploadDirectory = "~/UploadImages/";
    const string ThumbnailFileName = "ThumbnailImage.jpg";

    protected void uplImage_FileUploadComplete(object sender, FileUploadCompleteEventArgs e) {
        e.CallbackData = SavePostedFile(e.UploadedFile);
    }

    string SavePostedFile(UploadedFile uploadedFile) {
        string ret = "";
        string base64String = "";

        if (!uploadedFile.IsValid)
            return string.Empty;

        string fileName = Path.Combine(MapPath(UploadDirectory), ThumbnailFileName);
        using (Image original = Image.FromStream(uploadedFile.FileContent)) {
            base64String = PhotoUtils.ConvertImageToBase64(original);
            using (Image thumbnail = PhotoUtils.Inscribe(original, 100)) {
                PhotoUtils.SaveToJpeg(thumbnail, fileName);
            }
        }


        ret = string.Format("{0}|{1}", ThumbnailFileName, base64String);

        //return ThumbnailFileName;
        return ret;
    }
}