Imports System
Imports DevExpress.Web
Imports System.Web.UI
Imports System.IO
Imports System.Drawing

Partial Public Class Base64Converter
    Inherits System.Web.UI.UserControl

    Private Const UploadDirectory As String = "~/UploadImages/"
    Private Const ThumbnailFileName As String = "ThumbnailImage.jpg"

    Protected Sub uplImage_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)


        e.CallbackData = SavePostedFile(e.UploadedFile)
    End Sub

    Private Function SavePostedFile(ByVal uploadedFile As UploadedFile) As String
        Dim ret As String = ""
        Dim base64String As String = ""

        If Not uploadedFile.IsValid Then
            Return String.Empty
        End If

        Dim fileName As String = Path.Combine(MapPath(UploadDirectory), ThumbnailFileName)
        Using original As Image = Image.FromStream(uploadedFile.FileContent)
            base64String = PhotoUtils.ConvertImageToBase64(original)
            Using thumbnail As Image = PhotoUtils.Inscribe(original, 100)
                PhotoUtils.SaveToJpeg(thumbnail, fileName)
            End Using
        End Using


        ret = String.Format("{0}|{1}", ThumbnailFileName, base64String)

        'return ThumbnailFileName;
        Return ret
    End Function
End Class