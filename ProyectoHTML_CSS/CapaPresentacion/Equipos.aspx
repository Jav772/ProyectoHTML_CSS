<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Equipos</title>
</head>
<body>
    <form id="form1" runat="server">
 <h2>Bienvenido!</h2>
 <h2>Gestión de Equipo</h2>

 <label>EquipoID:</label>
 <asp:TextBox ID="txtEquipo" runat="server" required></asp:TextBox><br />

 <label>TipoEquipo:</label>
 <asp:TextBox ID="txtTipoEquipo" runat="server" required></asp:TextBox><br />

 <label>Modelo:</label>
 <asp:TextBox ID="txtModelo" runat="server" required></asp:TextBox><br />

 <label>UsuarioID:</label>
 <asp:TextBox ID="txtUsuarioID" runat="server" required></asp:TextBox><br />

     <asp:Button ID="Agregar" class="BotAgregar" runat="server" Text="Agregar" />
     
     <asp:Button ID="Borrar" class="BotBorrar" runat="server" Text="Borrar" />

     <asp:Button ID="Modificar" class="BotModificar" runat="server" Text="Modificar" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="EquipoID" HeaderText="EquipoID" />
            <asp:BoundField DataField="TipoEquipo" HeaderText="TipoEquipo" />
            <asp:BoundField DataField="Modelo" HeaderText="Modelo" />
            <asp:BoundField DataField="UsuarioID" HeaderText="UsuarioID" />
        </Columns>
    </asp:GridView>

        <div>
        </div>
    </form>
</body>
</html>
