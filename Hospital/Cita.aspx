<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cita.aspx.cs" Inherits="Hospital.Cita" %>

<!DOCTYPE html>

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 275px;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            text-align: right;
            width: 264px;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            background-color: #FFFFFF;
        }
        .auto-style7 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style8 {
            width: 275px;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            color: #000000;
        }
        .auto-style12 {
            background-color: #0066FF;
        }
        .auto-style13 {
            font-weight: bold;
            background-color: #999999;
        }
        .auto-style14 {
            background-color: #999999;
        }
    </style>
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="3"><strong><em><span class="auto-style6">ASIGNAR</span><span class="auto-style12"> </span><span class="auto-style6">CITA</span></em></strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Cod cita</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtCita" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Button ID="btnCita" runat="server" OnClick="Button1_Click" Text="Confirmar Cita" CssClass="auto-style13" />
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Label ID="lblMensajeCita" runat="server" CssClass="auto-style9"></asp:Label>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Fecha</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Hora</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtHora" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Codigo Paciente</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtIdPaciente" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Button ID="btnPaciente" runat="server" Text="Consultar Paciente" OnClick="Button2_Click" CssClass="auto-style13" />
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:Label ID="lblNombrePaciente" runat="server" CssClass="auto-style9"></asp:Label>
                        </em></strong>
                    </td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Label ID="lblCelularPaciente" runat="server" CssClass="auto-style9"></asp:Label>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Codigo Medico </em></strong> </td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtIdMedico" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Button ID="btnMedico" runat="server" Text="Consultar Medico" OnClick="Button3_Click" CssClass="auto-style13" />
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:Label ID="lblNombreMedico" runat="server" CssClass="auto-style9"></asp:Label>
                        </em></strong>
                    </td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Label ID="lblEspecialidad" runat="server" CssClass="auto-style9"></asp:Label>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Valor Consulta</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Diagnostico</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtDiagnostico" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Nombre Acompañante</em></strong></td>
                    <td class="auto-style3">
                        <strong><em>
                        <asp:TextBox ID="txtAcompanante" runat="server"></asp:TextBox>
                        </em></strong>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Button ID="btnGuardarCita" runat="server" Text="Guardar" OnClick="Button4_Click" CssClass="auto-style14" />
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">
                        <strong><em>
                        <asp:Label ID="lblGuardar" runat="server" CssClass="auto-style9"></asp:Label>
                        </em></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>