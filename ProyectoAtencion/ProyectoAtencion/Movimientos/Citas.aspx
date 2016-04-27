<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="ProyectoAtencion.Formulario_web15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 96%;
        }
        .style2
        {
            font-weight: bold;
            text-align: right;
            width: 182px;
        }
        .style3
        {
            font-weight: bold;
            text-align: right;
            width: 182px;
            height: 75px;
        }
        .style4
        {
            height: 75px;
        }
        .style5
        {
            width: 370px;
        }
        .style6
        {
            height: 75px;
            width: 370px;
        }
    .auto-style1 {
        font-weight: bold;
        text-align: right;
        width: 182px;
        height: 74px;
    }
    .auto-style2 {
        height: 74px;
        width: 370px;
    }
    .auto-style3 {
        height: 74px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <asp:Label ID="Labelpermiso" runat="server" Text="Label"></asp:Label>
    <div runat="server" id="theDiv" style="width: 95%; height: 95%;">
    <table class="style1">
        <tr>
            <td class="style2">
                Paciente: *</td>
            <td class="style5">
                <asp:DropDownList ID="cmbPaciente" runat="server" Width="350px" 
                    DataSourceID="SqlDataSourcePaciente" DataTextField="NombrePF" 
                    DataValueField="IdPaciente">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourcePaciente" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" 
                    SelectCommand="SELECT IdPaciente,  '  ' + Nombre + '  ' + Apellidos AS NombrePF FROM Paciente">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Fecha Consulta: *</td>
            <td class="style5">
                <asp:TextBox ID="TxtFecha" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Medico De Turno: *</td>
            <td class="style5">
                <asp:DropDownList ID="cmbMedico" runat="server" Width="350px" 
                    DataSourceID="SqlDataSourceMedico" DataTextField="Expr1" 
                    DataValueField="idMedico">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceMedico" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" 
                    SelectCommand="SELECT idMedico,  + '  ' + Nombre + '  ' + Apellidos AS Expr1 FROM Medicos">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                Obervacion: *</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtObservacion" runat="server" Height="80px" Width="350px"></asp:TextBox>
            </td>
            <td class="auto-style3">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="lbMensaje" runat="server" Text="" 
        style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
    <br />
    <asp:Button ID="BTNNuevo" runat="server" Text="Ingresar Cita" Width="114px" 
    onclick="BTNNuevo_Click"  />
    <asp:Button ID="BTNModificar" runat="server" Text="Modificar" />
    <asp:Button ID="BTNLimpiar" runat="server" Text="Limpiar" 
        />
    <br />
    <hr />
<br />
    <asp:GridView ID="GridViewConsultas" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="idConsulta" DataSourceID="SqlDataSource1" 
        EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
        HorizontalAlign="Center" style="text-align: center" Width="95%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="idConsulta" HeaderText="idConsulta" ReadOnly="True" 
                SortExpression="idConsulta" InsertVisible="False" />
            <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" 
                SortExpression="IdPaciente" />
            <asp:BoundField DataField="FechaConsulta" HeaderText="FechaConsulta" 
                SortExpression="FechaConsulta" />
            <asp:BoundField DataField="IdMedico" HeaderText="IdMedico" 
                SortExpression="IdMedico" />
            <asp:BoundField DataField="Observacion" HeaderText="Observacion" 
                SortExpression="Observacion" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" 
        DeleteCommand="DELETE FROM [Consultas] WHERE [idConsulta] = @idConsulta" 
        InsertCommand="INSERT INTO [Consultas] ([IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (@IdPaciente, @FechaConsulta, @IdMedico, @Observacion)" 
        SelectCommand="SELECT [idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion] FROM [Consultas]" 
        UpdateCommand="UPDATE [Consultas] SET [IdPaciente] = @IdPaciente, [FechaConsulta] = @FechaConsulta, [IdMedico] = @IdMedico, [Observacion] = @Observacion WHERE [idConsulta] = @idConsulta">
        <DeleteParameters>
            <asp:Parameter Name="idConsulta" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdPaciente" Type="Int32" />
            <asp:Parameter Name="FechaConsulta" Type="DateTime" />
            <asp:Parameter Name="IdMedico" Type="Int32" />
            <asp:Parameter Name="Observacion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdPaciente" Type="Int32" />
            <asp:Parameter Name="FechaConsulta" Type="DateTime" />
            <asp:Parameter Name="IdMedico" Type="Int32" />
            <asp:Parameter Name="Observacion" Type="String" />
            <asp:Parameter Name="idConsulta" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />



    <br />
        </div>
</asp:Content>
