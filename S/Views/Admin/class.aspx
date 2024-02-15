<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="class.aspx.cs" Inherits="S.Views.Admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <%--标题--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h1 class="text-center">班级管理</h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">

            <%--学号 要 创建吗--%>
            <div class="mb-3">
                <label for="" class="form-labe text-success">学号ID</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" />
            </div>



            <div class="mb-3">
                <label for="" class="form-labe text-success">系部</label>

                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                    <asp:ListItem>信息技术系</asp:ListItem>
                    <asp:ListItem>智能制造系</asp:ListItem>
                    <asp:ListItem>财经商贸系</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="" class="form-labe text-success">班级</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" />
            </div>


            <%--这里是按钮--%>
            <div class="row">
                <div class="d-grid col-md-4">
                    <asp:Button ID="Button1" runat="server" Text="编辑" class="btn-warning btn btn-block" Width="100px" />
                </div>
                <div class="d-grid col-md-4">
                    <asp:Button ID="Button2" runat="server" Text="保存" class="btn-success btn btn-block" Width="100px" />
                </div>
                <div class="d-grid col-md-4">
                    <asp:Button ID="Button3" runat="server" Text="删除" class="btn-danger btn btn-block" Width="100px" />
                </div>
            </div>
        </div>

        <%--这里 显示数据--%>
        <div class="col-md-8">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
