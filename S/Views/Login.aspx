<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css" />
    <title>登录·界面</title>
</head>
<body>
    <div class="container-fluid">
        <%--第一个--%>
        <div class="row mt-5 mb-5">
        </div>

        <%--第二个--%>
        <div class="row">
            <%--1o--%>
            <div class="col-md-4">
            </div>

            <%--2--%>
            <div class="col-md-4">

                <form id="form1" runat="server">
                    <div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8">
                                <img scr="" height="195px" width="162px" />
                            </div>
                        </div>
                        
                    </div>

                    <%--用户名 密码 按钮--%>
                    <div class="mt-3">
                        <label for="" class="form-label">用户名</label>
                        <input type="text" placeholder="用户名" autocomplete="off" class="form-control" />
                    </div>
                    <div class="mt-3">
                        <label for="" class="form-label">密码</label>
                        <input type="password" placeholder="密码" autocomplete="off" class="form-control" />
                    </div>
                    <div class="mt-3 d-grid">
                        <asp:Button ID="Button1" runat="server" Text="登录" CssClass="btn-success btn" />
                    </div>
                </form>
            </div>

            <%--3--%>
            <div class="col-md-4">
            </div>
        </div>


    </div>

</body>
</html>
