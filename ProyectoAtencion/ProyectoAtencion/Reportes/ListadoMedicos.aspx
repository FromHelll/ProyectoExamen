<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ListadoMedicos.aspx.cs" Inherits="ProyectoAtencion.Formulario_web19" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Labelpermiso" runat="server" Text="Label"></asp:Label>

    <div runat="server" id="theDiv" style="width: 95%; height: 95%;">
        <rsweb:ReportViewer ID="ReportViewerListadoMedicos" runat="server"
            Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Colección)"
            Style="text-align: left" WaitMessageFont-Names="Verdana"
            WaitMessageFont-Size="14pt" Width="888px" Height="503px">
            <LocalReport ReportPath="ListaMedicos.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2"
                        Name="DataSetMedicos" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"
            SelectMethod="GETMEDICOS" TypeName="CADCitasUM.CADMEDLISTA" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
            SelectMethod="GetMedicos" TypeName="CADCitasUM.CADMedicos" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    </div>
</asp:Content>
