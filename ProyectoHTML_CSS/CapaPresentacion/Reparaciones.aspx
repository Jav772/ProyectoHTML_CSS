<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reparaciones</title>
</head>
<body>
    <form id="form1" runat="server">

<h2>Bienvenido!</h2>
<h2>Gestión de Reparaciones</h2>

 <label>RepararionID:</label>
 <asp:TextBox ID="TxtReparacion" runat="server" required></asp:TextBox><br />

 <label>Fecha:</label>
 <asp:TextBox ID="txtFecha" runat="server" required TextMode="Date"></asp:TextBox><br />

 <label>Estado:</label>
 <asp:TextBox ID="txtEstado" runat="server" required></asp:TextBox><br />

 <label>EquipoID:</label>
 <asp:TextBox ID="txtEquipoID" runat="server" required></asp:TextBox><br />

    <asp:Button ID="Agregar" class="BotAgregar" runat="server" Text="Agregar" />

    <asp:Button ID="Borrar" class="BotBorrar" runat="server" Text="Borrar" />

    <asp:Button ID="Modificar" class="BotModificar" runat="server" Text="Modificar" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ReparacionID" HeaderText="ReparacionID" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
            <asp:BoundField DataField="EquipoID" HeaderText="EquipoID" />
        </Columns>
</asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
