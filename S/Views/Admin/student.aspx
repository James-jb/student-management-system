﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="S.Views.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <%--标题--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h1 class="text-center">学生信息</h1>
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
                <label for="" class="form-labe text-success">姓名</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" />
            </div>

            <div class="mb-3">
                <label for="" class="form-labe text-success">性别</label>
                <%--下拉列表--%>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="" class="form-labe text-success">年龄</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="" class="form-labe text-success">联系方式</label>
                <input type="text" placeholder="" autocomplete="off" class="form-control" />
            </div>

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
