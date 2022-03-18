<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ppalAdm.aspx.cs" Inherits="Bikers.ppalAdm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" ID="pnlAdmin">
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="user_card">
                    <div class="d-flex justify-content-center">
                        <div class="brand_logo_container_admin">
                            <img src="Imagenes/administrador.png" class="brand_logo" alt="Logo">
                        </div>
                    </div>
                    <div class="d-flex justify-content-center form_container">
                        <div class="d-flex justify-content-center form_container">
                            <table style="width: auto">
                                <tr>
                                    <td>
                                        <asp:Button ID="BtnUsuarios" CssClass="btn login_btn" runat="server" Text="Usuarios" align="center" OnClick="BtnUsuarios_Click"/>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnDocumentos" CssClass="btn login_btn" runat="server" Text="Documentos" align="center" OnClick="btnDocumentos_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="BtnReportes" CssClass="btn login_btn" runat="server" Text="Reportes" align="center" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td calign="center">
                                        <asp:Button ID="btnsalir" CssClass="btn login_btn" runat="server" Text="Cerrar Sesion" align="center" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </asp:Panel>
    <asp:Panel runat="server" ID="pnlGeneralUsuarios" Visible="false">
        <table class="auto-style1" style="margin-top: 100px">
            <tr>
                <td></td>
                <td align="center">
                    <label class="fuente" runat="server" style="font-size: large;">USUARIOS</label></td>
            </tr>
            <tr>
                <td style="width: 170px;">&nbsp;</td>
                <td style="text-align: center;">
                    <asp:UpdatePanel runat="server" ID="upngrillapermisos">
                        <ContentTemplate>
                            <asp:GridView ID="grvlista_Usuarios" runat="server" AutoGenerateColumns="false"
                                CellPadding="1" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="true" EmptyDataText="No se encontraron registros para mostrar"
                                HeaderStyle-CssClass="alinear" Width="790px" ShowFooter="true" AllowPaging="True" CssClass="grilla">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="BksIdUsu" HeaderText="ID USUARIO" />
                                    <asp:BoundField DataField="BksUsuario" HeaderText="USUARIO" />
                                    <asp:BoundField DataField="BksNombreCompleto" HeaderText="USUARIO" />
                                    <asp:BoundField DataField="BksCodigo" HeaderText="CODIGO" />
                                    <asp:BoundField DataField="BksDescripcionEst" HeaderText="ESTADO" />
                                    <asp:CommandField HeaderText="OPCION" SelectText="Eliminar" ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="Red" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="center">
                    <asp:Button ID="btnvolver" CssClass="btn login_btn_New" runat="server" Text="Volver" Width="250px" />
                    <asp:Button ID="btnAgregarUsuario" CssClass="btn login_btn_New" runat="server" Text="Agregar" Width="250px" OnClick="btnAgregarUsuario_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>

<asp:Panel runat="server" ID="pnlRegistroUsu" Visible="false">
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="user_card">
                    <div class="d-flex justify-content-center form_container">
                        <div class="d-flex justify-content-center form_container_Registro">
                            <table style="width: auto">
                                <tr>
                                    <td>
                                        <label>Primer Nombre</label></td>
                                    <td>
                                        <asp:TextBox ID="txtPrimNom" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Segundo Nombre</label></td>
                                    <td>
                                        <asp:TextBox ID="txtSegunNom" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Primer Apellido</label></td>
                                    <td>
                                        <asp:TextBox ID="txtPrimApell" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Segundo Apellido</label></td>
                                    <td>
                                        <asp:TextBox ID="txtSegunApell" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Codigo</label></td>
                                    <td>
                                        <asp:TextBox ID="txtcodigo" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Tipo de Identificacion</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlTipoIdentificacion" runat="server" class="form-control input_user"></asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <label>Numero Identificacion</label></td>
                                    <td>
                                        <asp:TextBox ID="txtIdentificacion" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Usuario</label></td>
                                    <td>
                                        <asp:TextBox ID="txtUsuario" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Contraseña</label></td>
                                    <td>
                                        <asp:TextBox ID="txtcontrasena" CssClass="textbox" runat="server" TextMode="Password" class="form-control input_pass" ToolTip="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnCancelar" CssClass="btn login_btn" runat="server" Text="Cancelar" align="center" OnClick="btnCancelar_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnEnviar" CssClass="btn login_btn" runat="server" Text="Enviar" align="center" OnClick="btnEnviar_Click" />

                                    </td>

                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
  <%--    <asp:Panel runat="server" ID="pnlMaterias" Visible="false">
        <table class="auto-style1" style="margin-top: 100px">
            <tr>
                <td></td>
                <td align="center">
                    <label class="fuente" runat="server" style="font-size: large;">MATERIAS</label></td>
            </tr>
            <tr>
                <td style="width: 170px;">&nbsp;</td>
                <td style="text-align: center;">
                    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                        <ContentTemplate>
                            <asp:GridView ID="grvlista_MateriasEst" runat="server" AutoGenerateColumns="false"
                                CellPadding="1" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="true" EmptyDataText="No se encontraron registros para mostrar"
                                HeaderStyle-CssClass="alinear" Width="790px" ShowFooter="true" AllowPaging="True" CssClass="grilla" OnSelectedIndexChanged="grvlista_MateriasEst_SelectedIndexChanged" >
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="UniIdCarr" HeaderText="ID CARRERA" />
                                    <asp:BoundField DataField="UniIdMat" HeaderText="ID MATERIA" />
                                    <asp:BoundField DataField="UniDescripcionCarr" HeaderText="CARRERA" />
                                    <asp:BoundField DataField="UniDescripcionMat" HeaderText="MATERIA" />
                                    <asp:BoundField DataField="UniDescripcionEst" HeaderText="ESTADO" />
                                    <asp:CommandField HeaderText="OPCION" SelectText="Eliminar" ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="Red" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="center">
                    <asp:Button ID="btnregresar" CssClass="btn login_btn_New" runat="server" Text="Volver" Width="250px"  />
                    <asp:Button ID="btnAdicionarMat" CssClass="btn login_btn_New" runat="server" Text="Agregar"  Width="250px" />

                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlAgregarMate" Visible="false">
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="user_card">
                    <div class="d-flex justify-content-center form_container">
                        <div class="d-flex justify-content-center form_container">
                            <table style="width: auto">
                                <tr>
                                    <td>
                                        <label>Nombre de Materia</label></td>
                                    <td>
                                        <asp:TextBox ID="txtMateria" CssClass="textbox" runat="server" class="form-control input_user"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Carrera</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlCarrera" runat="server" class="form-control input_user"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Estado</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlEstadoMate" runat="server" class="form-control input_user"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnCancelarMat" CssClass="btn login_btn" runat="server" Text="Cancelar" align="center"  />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnAgregarMat" CssClass="btn login_btn" runat="server" Text="Adicionar" align="center"  />

                                    </td>

                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>--%>
</asp:Content>
