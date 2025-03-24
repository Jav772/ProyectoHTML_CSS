<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asignaciones</title>
</head>
<body>
    <form id="form1" runat="server">

 <h2>Bienvenido!</h2>
 <h2>Gestión de Asignaciones</h2>

 <label>AsignacionID:</label>
 <asp:TextBox ID="TxtAsignacionID" runat="server" required></asp:TextBox><br />

 <label>RepararionID:</label>
 <asp:TextBox ID="TxtReparacion" runat="server" required Width="128px"></asp:TextBox><br />

<label>TecnicoID:</label>
<asp:TextBox ID="txtTecnico" runat="server" required></asp:TextBox><br />

<label>Fecha:</label>
<asp:TextBox ID="FechaFIn" runat="server" required TextMode="Date"></asp:TextBox><br />

     <asp:Button ID="Agregar" class="BotAgregar" runat="server" Text="Agregar" />
     
     <asp:Button ID="Borrar" class="BotBorrar" runat="server" Text="Borrar" />

     <asp:Button ID="Modificar" class="BotModificar" runat="server" Text="Modificar" />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="AsignacionID" HeaderText="AsignacionID" />
        <asp:BoundField DataField="RaparacionID" HeaderText="ReparacionID" />
        <asp:BoundField DataField="TecnicoID" HeaderText="TecnicoID" />
        <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
    </Columns>
</asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
