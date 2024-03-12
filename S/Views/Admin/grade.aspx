<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="grade.aspx.cs" Inherits="S.Views.Admin.grade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <%--标题--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h1 class="text-center">成绩管理</h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">

            <%--学号 要 创建吗--%>
            <div class="mb-3">
                <label for="" class="form-labe text-success">学号ID</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" runat="server" id="x_id"/>
            </div>


            <div class="mb-3">
                <label for="" class="form-labe text-success">课程名称</label>
                <asp:DropDownList ID="k_name" runat="server" class="form-control">
                    <asp:ListItem>高等数学</asp:ListItem>
                    <asp:ListItem>大学语文</asp:ListItem>
                    <asp:ListItem>英语</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="" class="form-labe text-success">成绩</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" runat="server" id="k_cj" />
            </div>


            <%--按钮--%>
            <div class="row">
                <asp:Label runat="server" ID="ErrMsg" CssClass="text-danger"></asp:Label>


                <div class="d-grid col-md-4">
                    <asp:Button ID="EditBtn" runat="server" Text="编辑" class="btn-warning btn btn-block" Width="100px" />
                </div>
                <div class="d-grid col-md-4">
                    <asp:Button ID="SaveCtn" runat="server" Text="保存" class="btn-success btn btn-block" Width="100px" />
                </div>
                <div class="d-grid col-md-4">
                    <asp:Button ID="DeleteBtn" runat="server" Text="删除" class="btn-danger btn btn-block" Width="100px"  />
                </div>
            </div>
        </div>

        <%--这里 显示SQL数据--%>
        <div class="col-md-8">
            <asp:GridView ID="ManufactList" runat="server" class="table table-bordered"/></asp:GridView>
            <%--<asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>--%>
        </div>
    </div>
</asp:Content>
