<!-- default file list -->
*Files to look at*:

* [PhotoUtils.cs](./CS/App_Code/PhotoUtils.cs) (VB: [PhotoUtils.vb](./VB/App_Code/PhotoUtils.vb))
* [Base64Converter.ascx](./CS/Base64Converter.ascx) (VB: [Base64Converter.ascx](./VB/Base64Converter.ascx))
* [Base64Converter.ascx.cs](./CS/Base64Converter.ascx.cs) (VB: [Base64Converter.ascx.vb](./VB/Base64Converter.ascx.vb))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxUploadControl - How to convert a binary image to a base64 string


<p>The data URI scheme is an URI scheme (the Uniform Resource Identifier scheme) that provides a way to include data in-line in web pages as if they were external resources. Data URIs are a form of Uniform Resource Locators, although they do not in fact remotely locate anything. Instead, the resource data is contained within a URL string itself as a <a href="http://en.wikipedia.org/wiki/Base64"><u>base64-encoded</u></a> string. This saves the browser from having to make additional HTTP requests to external resources, and can thus increase page loading speed. </p><br />
<p>This online example allows you to upload an image using the ASPxUploadControl and convert the image into a base64 encoded data URI for embedding images into html or css. </p><br />
<p>Your image elements will look as follows: </p>

```html
<img src="your_image_bytes_in_base_64" />
```

<p> </p>

<br/>


