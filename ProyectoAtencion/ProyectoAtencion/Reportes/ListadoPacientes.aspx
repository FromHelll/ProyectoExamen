<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoPacientes.aspx.cs" Inherits="ProyectoAtencion.Formulario_web18" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Labelpermiso" runat="server" Text="Label"></asp:Label>
<h1>LISTADO PACIENTES</h1>
    <div runat="server" id="theDiv" style="width: 95%; height: 95%;">
    <hr />

    <br />
    <rsweb:ReportViewer ID="ReportViewerListadoPacientes" runat="server" 
        Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Colección)" 
        style="text-align: justify" WaitMessageFont-Names="Verdana" 
        WaitMessageFont-Size="14pt" Width="915px">
        <LocalReport ReportPath="ListadoPacientes.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                    Name="DataSetListadoPacientes" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetPacientes" TypeName="CADCitasUM.CADPacientes" OldValuesParameterFormatString="original_{0}">
    </asp:ObjectDataSource>
        </div>
</asp:Content>
