<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="registrarse.aspx.cs" Inherits="clientes_registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            border: 2px solid #000000;
            background-color: #009933;
        }
        .auto-style3 {
            border: 2px solid #000000;
            background-color: #009933;
        }
        .auto-style4 {
            color: #000099;
        }
        .auto-style5 {
            color: #000099;
            border: 2px solid #000000;
            background-color: #009933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMenuContextual1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Nombre de usuario:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtusuario" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Nombre:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtnombre" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Apellido</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtapellido" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Contraseña</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtcontraseña" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="registrarse" runat="server" CssClass="auto-style4" OnClick="registrarse_Click" Text="Registrarse." />
            </td>
        </tr>
    </table>
</asp:Content>

