<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="ListdoConsultas.aspx.cs" Inherits="ProyectoAtencion.Formulario_web16" 
    %><%@ 
        Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, 
        PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Consultas</h1>

<br />
<rsweb:reportviewer ID="ReportViewerListaCitas" runat="server" 
    Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Colección)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="95%">
    <LocalReport ReportPath="ListaDeConsultas.rdlc">
        <DataSources>
            <rsweb:reportdatasource DataSourceId="ObjectDataSource1" 
                Name="DataSetListaConsultas" />
        </DataSources>
    </LocalReport>
</rsweb:reportviewer>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetCitas" TypeName="CADCitasUM.CADCITASTODAS" OldValuesParameterFormatString="original_{0}">
</asp:ObjectDataSource>
<br />
<br />

</asp:Content>
