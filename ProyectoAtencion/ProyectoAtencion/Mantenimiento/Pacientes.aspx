<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Pacientes.aspx.cs" Inherits="ProyectoAtencion.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 97%;
        }
        .style2
        {
            text-align: right;
            width: 141px;
        }
        .style3
        {
            width: 357px;
        }
        .auto-style1 {
            text-align: right;
            width: 141px;
            height: 26px;
        }
        .auto-style2 {
            width: 357px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        PACIENTES</h1>
    <hr />
    <table class="style1">
        <tr>
            <td class="style2">
                Tipo Identificacion:
            </td>
            <td class="style3">
                <asp:DropDownList ID="cmbTipoIdentificacion" runat="server" Width="150px" 
                    DataSourceID="SqlDataSourceTiposIdentificacion" DataTextField="NombreTipo" 
                    DataValueField="IdTipoIdentificacion">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceTiposIdentificacion" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" 
                    SelectCommand="SELECT * FROM [TipoIdentificacion]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Identificacion: *
            </td>
            <td class="style3">
                <asp:TextBox ID="txtIdentificacion" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <strong>* Campos Obligatorios</strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nombres: *
            </td>
            <td class="style3">
                <asp:TextBox ID="txtNombres" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                Para Consultar Un Paciente Solo Ingrese Su identificacion <em>y luego clic al boton
                    consultar...</em>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Apellidos: *
            </td>
            <td class="style3">
                <asp:TextBox ID="txtApellidos" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Fecha De Nacimiento: *
            </td>
            <td class="style3">
                <asp:Calendar ID="CalendarFN" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                    Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                        Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sexo:
            </td>
            <td class="style3">
                <asp:DropDownList ID="cmbSexo" runat="server" Width="150px" 
                    DataSourceID="SqlDataSourceTiposSexos" DataTextField="NombreSexo" 
                    DataValueField="idSexo">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceTiposSexos" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" 
                    SelectCommand="SELECT [idSexo], [NombreSexo] FROM [Sexos]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Estrato:
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Facultad: *
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Programa: *
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Edad:
            </td>
            <td class="style3">
                <asp:TextBox ID="txtEdad" runat="server" Width="50px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                FactorRH:
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Estado Civil:
            </td>
            <td class="style3">
                <asp:DropDownList ID="cmbEstadoCivil" runat="server" Width="200px" 
                    DataSourceID="SqlDataSourceEstadicivil" DataTextField="NombreEstadoCiv" 
                    DataValueField="IdEstadoCivil">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceEstadicivil" runat="server" ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" SelectCommand="SELECT * FROM [EstadosCivil]"></asp:SqlDataSource>
                <br />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Numero Hijos:
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Direccion: *
            </td>
            <td class="style3">
                <asp:TextBox ID="txtDireccion" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Telefono: *
            </td>
            <td class="style3">
                <asp:TextBox ID="txtTelefono" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Estatura:
            </td>
            <td class="style3">
                <asp:TextBox ID="txtEstatura" runat="server" Width="50px"></asp:TextBox>
                CM
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Peso:
            </td>
            <td class="style3">
                <asp:TextBox ID="txtPeso" runat="server" Width="50px"></asp:TextBox>
                KG
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Numero de Alergias:
            </td>
            <td class="style3">
                <asp:TextBox ID="txtNAlegrias" runat="server" Width="50px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Cuales Alegias:
            </td>
            <td class="style3">
                <asp:TextBox ID="txtAlergias" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <hr />
    <asp:Label ID="lbMensaje" runat="server" Text="" Style="font-weight: 700; font-size: medium;
        color: #FF0000"></asp:Label>
    <br />
    <asp:Button ID="BTNConsultar" runat="server" Text="Consultar" OnClick="BTNConsultar_Click" />
    <asp:Button ID="BTNNuevo" runat="server" Text="Nuevo" 
        onclick="BTNNuevo_Click" />
    <asp:Button ID="BTNModificar" runat="server" Text="Modificar" 
        onclick="BTNModificar_Click" />
    <asp:Button ID="BTNEliminar" runat="server" Text="Eliminar" 
        onclick="BTNEliminar_Click" />
    <asp:Button ID="BTNLimpiar" runat="server" Text="Limpiar" 
        onclick="BTNLimpiar_Click" />
    <asp:LinkButton ID="LinkAsignarCita" runat="server" BorderStyle="Outset" 
    PostBackUrl="~/Movimientos/Citas.aspx">AsignarCita</asp:LinkButton>
    <br />
    <hr />
    <br />
    <asp:GridView ID="GridViewPacientes" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="IdPaciente" DataSourceID="SqlDataSource1" 
        EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" 
        GridLines="None" HorizontalAlign="Center" Width="95%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" ReadOnly="True" 
                SortExpression="IdPaciente" InsertVisible="False" />
            <asp:BoundField DataField="TipoIdentificacion" HeaderText="TipoIdentificacion" 
                SortExpression="TipoIdentificacion" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                SortExpression="Nombre" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" 
                SortExpression="Apellidos" />
            <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" 
                SortExpression="FechaNacimiento" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" 
                SortExpression="Edad" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="Estatura" HeaderText="Estatura" SortExpression="Estatura" />
            <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
            <asp:BoundField DataField="Alergias" HeaderText="Alergias" SortExpression="Alergias" />
            <asp:BoundField DataField="QueAlegias" HeaderText="QueAlegias" SortExpression="QueAlegias" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>" 
        DeleteCommand="DELETE FROM [Paciente] WHERE [IdPaciente] = @IdPaciente" 
        InsertCommand="INSERT INTO [Paciente] ([TipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [FechaNacimiento], [Idsexo], [Estrato], [IdFacultad], [IdPrograma], [Edad], [FactorRH], [IdEstadoCivil], [N_Hijos], [Direccion], [Telefono], [Estatura], [Peso], [Alergias], [QueAlegias]) VALUES (@TipoIdentificacion, @Identificacion, @Nombre, @Apellidos, @FechaNacimiento, @Idsexo, @Estrato, @IdFacultad, @IdPrograma, @Edad, @FactorRH, @IdEstadoCivil, @N_Hijos, @Direccion, @Telefono, @Estatura, @Peso, @Alergias, @QueAlegias)" 
        SelectCommand="SELECT [IdPaciente], [TipoIdentificacion],  [Nombre], [Apellidos], [FechaNacimiento], [Edad], [Direccion], [Telefono], [Estatura], [Peso], [Alergias], [QueAlegias] FROM [Paciente]" 
        UpdateCommand="UPDATE [Paciente] SET [TipoIdentificacion] = @TipoIdentificacion, [Identificacion] = @Identificacion, [Nombre] = @Nombre, [Apellidos] = @Apellidos, [FechaNacimiento] = @FechaNacimiento, [Idsexo] = @Idsexo, [Estrato] = @Estrato, [IdFacultad] = @IdFacultad, [IdPrograma] = @IdPrograma, [Edad] = @Edad, [FactorRH] = @FactorRH, [IdEstadoCivil] = @IdEstadoCivil, [N_Hijos] = @N_Hijos, [Direccion] = @Direccion, [Telefono] = @Telefono, [Estatura] = @Estatura, [Peso] = @Peso, [Alergias] = @Alergias, [QueAlegias] = @QueAlegias WHERE [IdPaciente] = @IdPaciente">
        <DeleteParameters>
            <asp:Parameter Name="IdPaciente" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TipoIdentificacion" Type="Int32" />
            <asp:Parameter Name="Identificacion" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Apellidos" Type="String" />
            <asp:Parameter Name="FechaNacimiento" Type="DateTime" />
            <asp:Parameter Name="Idsexo" Type="Int32" />
            <asp:Parameter Name="Estrato" Type="Int32" />
            <asp:Parameter Name="IdFacultad" Type="Int32" />
            <asp:Parameter Name="IdPrograma" Type="Int32" />
            <asp:Parameter Name="Edad" Type="Int32" />
            <asp:Parameter Name="FactorRH" Type="String" />
            <asp:Parameter Name="IdEstadoCivil" Type="Int32" />
            <asp:Parameter Name="N_Hijos" Type="Int32" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Estatura" Type="Int32" />
            <asp:Parameter Name="Peso" Type="Int32" />
            <asp:Parameter Name="Alergias" Type="Int32" />
            <asp:Parameter Name="QueAlegias" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TipoIdentificacion" Type="Int32" />
            <asp:Parameter Name="Identificacion" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Apellidos" Type="String" />
            <asp:Parameter Name="FechaNacimiento" Type="DateTime" />
            <asp:Parameter Name="Idsexo" Type="Int32" />
            <asp:Parameter Name="Estrato" Type="Int32" />
            <asp:Parameter Name="IdFacultad" Type="Int32" />
            <asp:Parameter Name="IdPrograma" Type="Int32" />
            <asp:Parameter Name="Edad" Type="Int32" />
            <asp:Parameter Name="FactorRH" Type="String" />
            <asp:Parameter Name="IdEstadoCivil" Type="Int32" />
            <asp:Parameter Name="N_Hijos" Type="Int32" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Estatura" Type="Int32" />
            <asp:Parameter Name="Peso" Type="Int32" />
            <asp:Parameter Name="Alergias" Type="Int32" />
            <asp:Parameter Name="QueAlegias" Type="String" />
            <asp:Parameter Name="IdPaciente" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
