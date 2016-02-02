<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BulkQuestionBank.aspx.cs" Inherits="Online_Exam_Portal.pages.BulkQuestionBank" %>

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
                            <h3 class="panel-title">Bulk Question Upload</h3>
                        </div>
                        <div class="panel-body">
                            <fieldset>
                                <legend>Question</legend>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label>Course Module</label>
                                        <asp:DropDownList runat="server" ID="ddlCourseModule" CssClass="form-control"></asp:DropDownList>
                                    </div>
                                    <div class="col-lg-6">
                                        <label>
                                            Upload Bulk Question
                                        </label>
                                        <br />
                                        <asp:Button runat="server" ID="btnUploadBulkQuesCSV" Text="Select CSV Comma Delimited) File" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label>Question Type</label>
                                        <asp:DropDownList runat="server" ID="ddlQuestionType" CssClass="form-control"></asp:DropDownList>
                                    </div>
                                    <div class="col-lg-6">
                                        <br />
                                        <asp:LinkButton runat="server" ID="lbDownloadQuestionFormat" OnClick="lbDownloadQuestionFormat_Click" Text="Download Question Format"></asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row" style="float: right;margin-right: 32%;">
                                    <div class="col-lg-12">
                                        <asp:CheckBox runat="server" ID="chkDisableAllQues" OnCheckedChanged="chkDisableAllQues_CheckedChanged" Text="Disable All Questions" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView runat="server" ID="gridQuestion"></asp:GridView>
                                    </div>
                                </div>

                            </fieldset>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-success" ID="btnReset" runat="server" Text="Reset"/>
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-lg btn-primary" ID="btnFind" runat="server" Text="Find" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Button CssClass="btn btn-lg btn-danger" ID="btnDelete" runat="server" Text="Delete"  />
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
