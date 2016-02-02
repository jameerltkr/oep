<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionPaper.aspx.cs" Inherits="Online_Exam_Portal.pages.QuestionPaper" %>

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
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Question Paper</h3>
                        </div>
                        <div class="panel-body">
                            <fieldset>
                                <legend>Question Paper</legend>
                                <table>
                                    <tr>
                                        <td colspan="6">
                                            <asp:Label ID="lblerror" runat="server" Style="color: red;"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Question Paper Name </label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td colspan="6">
                                            <asp:TextBox CssClass="form-control" ID="txtQuestionPaperName" runat="server" Width="651px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="6">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Total Objective Questions </label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox MaxLength="4" CssClass="form-control" ID="txtTotalObjectiveQuestions" runat="server" Width="86px"></asp:TextBox>
                                        </td>

                                        <td>
                                            <label>Objective Question Mark(s) Per Question</label>
                                        </td>
                                        <td>
                                            <asp:TextBox MaxLength="2" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtObjectiveQuestionMarkPerQuestion_TextChanged" ID="txtObjectiveQuestionMarkPerQuestion" runat="server" Width="86px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>

                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Objective Questions Marks</label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:TextBox MaxLength="6" CssClass="form-control" ID="txtObjectiveQuestionMarks" runat="server" Width="86px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <label>Practical/Internal Questions Marks</label>
                                        </td>
                                        <td>
                                            <asp:TextBox MaxLength="6" CssClass="form-control" ID="txtPracticalInternalQuesMark" runat="server" Width="86px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Total Marks</label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox Enabled="false" MaxLength="8" CssClass="form-control" ID="txtTotalMarks" runat="server" Width="86px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <label>Passing Marks <span>*</span></label>
                                        </td>
                                        <td>
                                            <asp:TextBox MaxLength="4" CssClass="form-control" ID="txtPassingMarks" runat="server" Width="86px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <label>Objective ExamTime (Min.) </label>
                                        </td>
                                        <td>
                                            <span>*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="txtObjectiveExamTime" runat="server" Width="86px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <span>Note : </span>
                                            <span style="color: black !important">Please make sure that Question bank has sufficient quantity of module wise questions for the Examination.
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">&nbsp;</td>
                                    </tr>
                                </table>
                                <div>
                                    <table>
                                        <tr>
                                            <td class="auto-style2">&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblNoRecord" Style="color: red;"></asp:Label>
                                                <asp:GridView ID="GridView1" runat="server">
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>


                                </div>
                            </fieldset>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-success" ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-primary" ID="btnFind" runat="server" Text="Find" OnClick="btnFind_Click" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Button CssClass="btn btn-lg btn-danger" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-info" OnClientClick="return ValidateInputs()" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
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
