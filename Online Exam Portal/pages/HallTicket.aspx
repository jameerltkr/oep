<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HallTicket.aspx.cs" Inherits="Online_Exam_Portal.pages.HallTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/style.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-2.2.0.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 174px;
        }

        .auto-style3 {
            width: 1115px;
        }
    </style>

    <script src="../js/script.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Hall Ticket</h3>
                        </div>
                        <div class="panel-body">
                            <fieldset>
                                <legend>Hall Ticket</legend>

                                <table>
                                    <tr>
                                        <td>
                                            <label>Exam Name</label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td>
                                            <asp:DropDownList runat="server" ID="ddlExamName" CssClass="form-control"></asp:DropDownList>
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Exam Date</label>
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtExamDate" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Calendar ID="clndrExamDate" runat="server"></asp:Calendar>--%>
                                        </td>

                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                Student Name
                                            </label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtStudentName" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Question Paper</label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td>
                                            <asp:DropDownList runat="server" ID="ddlQuestionPaper" CssClass="form-control"></asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                Identity Card Number
                                            </label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtIdentityCardNumber" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                Hall Ticket Number
                                            </label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtHallTicketNumber" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Exam Time</label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox style="float: left;" runat="server" ID="txtFromTime" CssClass="form-control" Width="50"></asp:TextBox>
                                            <asp:DropDownList runat="server" ID="ddlExamTimeFrom" Width="50" CssClass="form-control">
                                                <asp:ListItem Value="0">AM</asp:ListItem>
                                                <asp:ListItem Value="1">PM</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox style="float: left;" runat="server" ID="txtToTime" CssClass="form-control" Width="50"></asp:TextBox>
                                            <asp:DropDownList runat="server" ID="ddlExamTimeTo" Width="50" CssClass="form-control">
                                                <asp:ListItem Value="0">AM</asp:ListItem>
                                                <asp:ListItem Value="1">PM</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>




                            </fieldset>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-success" ID="btnReset" runat="server" Text="Reset" />
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-primary" ID="btnFind" runat="server" Text="Find" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Button CssClass="btn btn-lg btn-danger" ID="btnDelete" runat="server" Text="Delete" />
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-info" ID="btnSave" runat="server" Text="Save" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
