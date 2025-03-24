<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usuarios</title>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Bienvenido!</h2>
     <h2>Gestión de Usuarios</h2>

     <label>UsuarioID:</label>
     <asp:TextBox ID="txtUsuario" runat="server" required></asp:TextBox><br />

     <label>Nombre:</label>
     <asp:TextBox ID="txtNombre" runat="server" required></asp:TextBox><br />

     <label>Correo:</label>
     <asp:TextBox ID="txtCorreo" runat="server" required></asp:TextBox><br />

     <label>Telefono:</label>
     <asp:TextBox ID="txtTelefono" runat="server" required></asp:TextBox><br />

     <label>Clave:</label>
     <asp:TextBox ID="txtClave" runat="server" required></asp:TextBox><br />


     <asp:Button ID="Agregar" class="BotAgregar" runat="server" Text="Agregar" />
     
     <asp:Button ID="Borrar" class="BotBorrar" runat="server" Text="Borrar" />

     <asp:Button ID="Modificar" class="BotModificar" runat="server" Text="Modificar" />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="UsuarioID" HeaderText="Usuario ID" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Correo" HeaderText="Correo" />
        <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
        <asp:BoundField DataField="Clave" HeaderText="Clave" />
    </Columns>
</asp:GridView>
 </form>
</body>
</html>
