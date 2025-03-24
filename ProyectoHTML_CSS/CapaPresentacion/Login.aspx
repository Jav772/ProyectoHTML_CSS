<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pagina de Inicio</title>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css'>
    <link href="../Style/style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="screen">
            <div class="screen__content">
                <form class="login" id="form1" runat="server">
                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <asp:TextBox ID="tusuario" class="login__input" runat="server"></asp:TextBox>

                    </div>
                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                        <<asp:TextBox ID="tclave" class="login__input" Type="password" runat="server"></asp:TextBox>
                    </div>

                                        <button type="button" class="button login__submit" onclick="validarLogin()">
                        <span class="button__text">Ingresar</span>
                        <i class="button__icon fas fa-chevron-right"></i>
                    </button>
                    <%--<button class="button login__submit">
                        <span class="button__text">Log In Now</span>
                        <i class="button__icon fas fa-chevron-right"></i>
                    </button>--%>
                </form>
                <div class="social-login">
                    <h2>Log in</h2>
                    <div class="social-icons">
                        <a href="#" class="social-login__icon fab fa-instagram"></a>
                        <a href="#" class="social-login__icon fab fa-facebook"></a>
                        <a href="#" class="social-login__icon fab fa-twitter"></a>
                    </div>
                </div>
            </div>
            <div class="screen__background">
                <span class="screen__background__shape screen__background__shape4"></span>
                <span class="screen__background__shape screen__background__shape3"></span>
                <span class="screen__background__shape screen__background__shape2"></span>
                <span class="screen__background__shape screen__background__shape1"></span>
            </div>
        </div>
    </div>
    <!-- partial -->
</body>
</html>

