<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalle de Reparaciones</title>
</head>
<body>
    <form id="form1" runat="server">
    
<h2>Bienvenido!</h2>
<h2>Gestión de Detalle de Reparaciones</h2>

 <label>DetalleID:</label>
 <asp:TextBox ID="TxtDetalleID" runat="server" required></asp:TextBox><br />


 <label>ReparacionID:</label>
 <asp:TextBox ID="txtReparacionID" runat="server" required></asp:TextBox><br />

 <label>Descripcion:</label>
 <asp:TextBox ID="txtDescripcion" runat="server" required></asp:TextBox><br />

 <label>FechaInicio:</label>
 <asp:TextBox ID="txtFechaInicio" runat="server" required TextMode="Date"></asp:TextBox><br />

 <label>FechaFin:</label>
 <asp:TextBox ID="FechaFin" runat="server" required TextMode="Date"></asp:TextBox><br />



      <asp:Button ID="Agregar" class="BotAgregar" runat="server" Text="Agregar" />
     
     <asp:Button ID="Borrar" class="BotBorrar" runat="server" Text="Borrar" />

     <asp:Button ID="Modificar" class="BotModificar" runat="server" Text="Modificar" />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="DetalleID" HeaderText="DetalleID" />
        <asp:BoundField DataField="ReparacionID" HeaderText="ReparacionID" />
        <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" />
        <asp:BoundField DataField="FechaFin" HeaderText="FechaFin" />
    </Columns>
</asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>