<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bikers.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" ID="pnlIngreso" Visible="true">
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="user_card">


                    <div class="d-flex justify-content-center">
                        <div class="brand_logo_container">
                            <img src="Imagenes/usuario.svg" class="brand_logo" alt="Logo">
                        </div>
                    </div>
                    <div class="d-flex justify-content-center form_container">

                        <table style="width: auto">
                            <tr class="input-group mb-3">
                                <td class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <asp:TextBox ID="txbusu" CssClass="textbox" runat="server" class="form-control input_user" ToolTip="UserName"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="input-group mb-2">
                                <td class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    <asp:TextBox ID="txbcontra" CssClass="textbox" runat="server" TextMode="Password" class="form-control input_pass" ToolTip="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btningresar" CssClass="btn login_btn" runat="server" Text="Login" align="center" OnClick="btningresar_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
 <%--                   <div class="mt-4">
                        <asp:Panel ID="RegistroNuevo" runat="server" Visible="false">
                            <asp:Button ID="btnRegistro" CssClass="btn login_btn_New" runat="server" Text="Crear Cuenta" align="center" OnClick="btnRegistro_Click" />
                        </asp:Panel>
                    </div>--%>
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
