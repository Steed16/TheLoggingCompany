<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterProduct.aspx.cs" Inherits="TheLoggingCompanyProject.MasterProduct" %>
<%@ Register TagPrefix="template" TagName="navControl" Src="~/architecture/Nav.ascx" %>
<%@ Register TagPrefix="template" TagName="footerControl" Src="~/architecture/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="wwwroot/css/styles.css"/>
    <title>The Logging Company</title>
    <style>
html {
  height: 100%;
  background: #f3f3f3;
  background: -moz-linear-gradient(top, #f3f3f3 0%, #ffffff 50%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f3f3f3), color-stop(50%,#ffffff));
  background: -webkit-linear-gradient(top, #f3f3f3 0%,#ffffff 50%);
  background: -o-linear-gradient(top, #f3f3f3 0%,#ffffff 50%);
  /*background: -ms-linear-gradient(top, #f3f3f3 0%,#ffffff 50%);*/
  background: linear-gradient(top, #f3f3f3 0%,#ffffff 50%);
  /*filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#f3f3f3', endColorstr='#ffffff',GradientType=0 );*/
}
.wrapper {
  width: 650px;
  margin: auto;
  padding: 25px 0px;
}
h1, h4 {
  font-family: Helvetica Neue, Arial, sans-serif;
  font-weight: normal;
  margin: 0; 
}
h1 { 
  font-size: 24pt;
  text-align: center;
}
header {
  margin-bottom: 20px;
}
figure {
  float: left;
}
figure img {
  max-width: 350px;
}
section {
  font-family: Tahoma, Arial, sans-serif;
  line-height: 150%;
  float: left;
  width: 300px;
  color: #333;
}
    </style>


</head>
<body>
    <template:navControl id="navHtml" asdf="Default.aspx" runat="server" />
    <div class="product">
 
  <header>
    <hgroup style="text-align: center;">
      <h1 runat="server" id="title"> </h1>
      <h3 style="text-align: center;">10/10 -IGN</h3>
    </hgroup>
  </header>
 
  <figure>
    <img id="imageProduct" src="" class="productPic" runat="server"/>
    <img id="imageProduct1" src="" class="productPic" runat="server"/>
  </figure>
            
 
  <section>
 
  <p>info</p>
  
        
    <details>
    <summary>Product Features</summary>
          <ul>
            <li>Impress your friends with this awesome shirt</li>
            <li>It'll give you clout</li>
            <li>It will improve your life drastically</li>
        </ul>
    </details>
   <p>Price: $<span runat="server" id="price"></span></p>
  <button>Buy Now</button>
 
  </section>
 
</div>
</body>
</html>
