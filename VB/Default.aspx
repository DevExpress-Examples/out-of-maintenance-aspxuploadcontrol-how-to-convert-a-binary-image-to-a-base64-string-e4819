<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Src="Base64Converter.ascx" TagName="Base64Converter" TagPrefix="uc1" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to convert a binary image to a base64 string</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%">
            <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1">
                <TabPages>
                    <dx:TabPage Text="About URI">
                        <ContentCollection>
                            <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                <div style="width: 530px; font-size: 10pt">
                                    The data URI scheme is an URI scheme (the Uniform Resource Identifier scheme) that provides a way to include data in-line in web pages as if they were external resources. 
                                    Data URIs are a form of Uniform Resource Locators, although they do not in fact remotely locate anything. Instead, the resource data is contained within a URL
                                    string itself as a <a href="http://en.wikipedia.org/wiki/Base64" target="_blank">base64-encoded</a> string. This saves the browser from having to make additional HTTP requests to 
                                    the external resources, and can thus increase page loading speed.
                                    <br />
                                    <br />
                                    This online example allows you to upload an image using the ASPxUploadControl and convert the image into a base64 encoded data URI for embedding images into html or css. 
                                    <br />
                                    <br />
                                    Your image elements will look as follows:    <br />
                                    <b>&lt;img src=&quot;your_image_bytes_in_base_64&quot; /&gt;</b>
                                </div>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Text="Create Base64 String">
                        <ContentCollection>
                            <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                <uc1:Base64Converter ID="Base64Converter1" runat="server" />
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                </TabPages>
            </dx:ASPxPageControl>
        </div>
    </form>
</body>
</html>