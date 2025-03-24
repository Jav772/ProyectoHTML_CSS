<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tecnicos</title>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Bienvenido!</h2>
     <h2>Gestión de Tecnicos</h2>

     <label>TecnicoID:</label>
     <asp:TextBox ID="txtTecnico" runat="server" required></asp:TextBox><br />

     <label>Nombre:</label>
     <asp:TextBox ID="txtNombre" runat="server" required></asp:TextBox><br />

     <label>Especialidad:</label>
     <asp:TextBox ID="txtEspecialidad" runat="server" required></asp:TextBox><br />


     <asp:Button ID="Agregar" class="BotAgregar" runat="server" Text="Agregar" />

     <asp:Button ID="Borrar" class="BotBorrar" runat="server" Text="Borrar" />

     <asp:Button ID="Modificar" class="BotModificar" runat="server" Text="Modificar" />

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Tecnico" HeaderText="Tecnico" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" />
            </Columns>
    </asp:GridView>
 

        <div>
        </div>
    </form>
</body>
</html>
