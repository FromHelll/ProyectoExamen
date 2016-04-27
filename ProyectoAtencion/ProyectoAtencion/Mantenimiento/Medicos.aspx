<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medicos.aspx.cs" Inherits="ProyectoAtencion.Formulario_web12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1 {
            width: 87%;
        }

        .style2 {
            text-align: right;
            width: 142px;
        }

        .style3 {
            width: 321px;
        }

        .style4 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Labelpermiso" runat="server" Text="Label"></asp:Label>
    <div runat="server" id="theDiv" style="width: 95%; height: 95%;">

        <table class="style1">
            <tr>
                <td class="style2">Tipo Identificacion: *</td>
                <td class="style3">
                    <asp:DropDownList ID="cmbTipoIdentificacion" runat="server"
                        DataSourceID="SqlDataSourceTipIdent" DataTextField="NombreTipo"
                        DataValueField="IdTipoIdentificacion" Width="140px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceTipIdent" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>"
                        SelectCommand="SELECT [IdTipoIdentificacion], [NombreTipo] FROM [TipoIdentificacion]"></asp:SqlDataSource>
                </td>
                <td>
                    <strong><em>* Campos Obligatorios</em></strong></td>
            </tr>
            <tr>
                <td class="style2">Identificacion: *</td>
                <td class="style3">
                    <asp:TextBox ID="txtIdetificacion" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td style="font-style: italic">Para Consultar Un Medico Solo Ingrese Su identificacion <em>y luego clic al 
                boton consultar.....</em></td>
            </tr>
            <tr>
                <td class="style2">Nombre: *</td>
                <td class="style3">
                    <asp:TextBox ID="txtNombre" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Apellidos: *</td>
                <td class="style3">
                    <asp:TextBox ID="txtApellidos" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Fecha De Nacimiento: *</td>
                <td class="style3">
                    <asp:Calendar ID="CalendarFN" runat="server" BackColor="White"
                        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                        ForeColor="#003399" Height="200px" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px"
                            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Sexo:
                </td>
                <td class="style3">
                    <asp:DropDownList ID="cmbSexo" runat="server" Width="140px"
                        DataSourceID="SqlDataSourceTipSexo" DataTextField="NombreSexo"
                        DataValueField="idSexo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceTipSexo" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>"
                        SelectCommand="SELECT [idSexo], [NombreSexo] FROM [Sexos]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Direccion: *</td>
                <td class="style3">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Telefono: *</td>
                <td class="style3">
                    <asp:TextBox ID="txtTelefono" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Email:</td>
                <td class="style3">
                    <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail"
                        runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="* Debe ingregar una direccion de correo valida" Font-Bold="True"
                        Font-Italic="False" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">Especialidad:</td>
                <td class="style3">
                    <asp:DropDownList ID="cmbEspecialidad" runat="server" Width="140px"
                        DataSourceID="SqlDataSourceTipoEspecialidad" DataTextField="NombreEspecialidad"
                        DataValueField="IdEspecialidades">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceTipoEspecialidad" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>"
                        SelectCommand="SELECT [IdEspecialidades], [NombreEspecialidad] FROM [Especialidades]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">Horario: *</td>
                <td class="style3">
                    <asp:DropDownList ID="cmbHorario" runat="server" Width="140px"
                        DataSourceID="SqlDataSourceJornada" DataTextField="Jornada"
                        DataValueField="IdHorario">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceJornada" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DBCITASConnectionString %>"
                        SelectCommand="SELECT [IdHorario], [Jornada] FROM [Horarios]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <hr />
        <asp:Label ID="lbMensaje" runat="server" Text=""
            Style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
        <br />
        <asp:Button ID="BTNConsultar" runat="server" Text="Consultar"
            OnClick="BTNConsultar_Click" />
        <asp:Button ID="BTNNuevo" runat="server" Text="Nuevo"
            OnClick="BTNNuevo_Click" />
        <asp:Button ID="BTNModificar" runat="server" Text="Modificar"
            OnClick="BTNModificar_Click" />
        <asp:Button ID="BTNEliminar" runat="server" Text="Eliminar"
            OnClick="BTNEliminar_Click" Height="26px" />
        <asp:Button ID="BTNLimpiar" runat="server" Text="Limpiar"
            OnClick="BTNLimpiar_Click" />
        <br />
        <br />
        <asp:GridView ID="GridViewMedicos" runat="server" AllowPaging="True"
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="idMedico" DataSourceID="SqlDataSource1"
            EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333"
            GridLines="None" HorizontalAlign="Center" Width="95%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="idMedico" HeaderText="idMedico" ReadOnly="True"
                    SortExpression="idMedico" InsertVisible="False" />
                <asp:BoundField DataField="Identificacion" HeaderText="Identificacion"
                    SortExpression="Identificacion" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre"
                    SortExpression="Nombre" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento"
                    SortExpression="FechaNacimiento" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
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
            DeleteCommand="DELETE FROM [Medicos] WHERE [idMedico] = @idMedico"
            InsertCommand="INSERT INTO [Medicos] ([Identificacion], [Nombre], [FechaNacimiento], [Telefono]) VALUES (@Identificacion, @Nombre, @FechaNacimiento, @Telefono)"
            SelectCommand="SELECT [idMedico], [Identificacion], [Nombre], [FechaNacimiento], [Telefono] FROM [Medicos]"
            UpdateCommand="UPDATE [Medicos] SET [Identificacion] = @Identificacion, [Nombre] = @Nombre, [FechaNacimiento] = @FechaNacimiento, [Telefono] = @Telefono WHERE [idMedico] = @idMedico">
            <DeleteParameters>
                <asp:Parameter Name="idMedico" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Identificacion" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="FechaNacimiento" Type="DateTime" />
                <asp:Parameter Name="Telefono" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Identificacion" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="FechaNacimiento" Type="DateTime" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="idMedico" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
