<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ProyectoAtencion._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
       Bienvenido
        <asp:LoginName ID="LoginName1" runat="server" Font-Bold="true" />
        <br />
        <br />
        <asp:Label ID="lblLastLoginDate" runat="server" />
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>
    
</asp:Content>
