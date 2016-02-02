using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam_Portal.pages
{
    public partial class QuestionPaper : System.Web.UI.Page
    {
        services.StoreData storeData = new services.StoreData();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearControls();
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            var quesPaperName = txtQuestionPaperName.Text.Trim();

            var data = storeData.FindQuesPaper(quesPaperName);

            if (data.Count > 0)
            {
                lblNoRecord.Text = "";
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
            else
            {
                lblNoRecord.Text = "No records found!";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            model.QuestionPaper quesModel = new model.QuestionPaper();

            quesModel.ObjExamTime = txtObjectiveExamTime.Text.Trim();
            quesModel.ObjQuesMark = Int32.Parse(txtObjectiveQuestionMarks.Text.Trim());
            quesModel.QuesMarkPerQues = Int32.Parse(txtObjectiveQuestionMarkPerQuestion.Text);
            quesModel.PassingMark = Int32.Parse(txtPassingMarks.Text);
            quesModel.PracticalQuesMark = Int32.Parse(txtPracticalInternalQuesMark.Text);
            quesModel.QuestionPaperName = txtQuestionPaperName.Text;
            quesModel.TotalMarks = Int32.Parse(txtTotalMarks.Text);
            quesModel.TotalObjQues = Int32.Parse(txtTotalObjectiveQuestions.Text);

            storeData.SaveQuestionPaperData(quesModel);

            ClearControls();
        }

        private void ClearControls()
        {
            txtObjectiveExamTime.Text = "";
            txtObjectiveQuestionMarkPerQuestion.Text = "";
            txtPassingMarks.Text = "";
            txtPracticalInternalQuesMark.Text = "";
            txtObjectiveQuestionMarks.Text = "";
            txtQuestionPaperName.Text = "";
            txtTotalMarks.Text = "";
            txtTotalObjectiveQuestions.Text = "";
        }

        protected void txtObjectiveQuestionMarkPerQuestion_TextChanged(object sender, EventArgs e)
        {
            if (txtTotalObjectiveQuestions.Text == "")
                lblerror.Text = "Please enter a value in Total Objective Questions.";
            else
            {
                lblerror.Text = "";

                var totalObjQues = Int32.Parse(txtTotalObjectiveQuestions.Text);
                var objQuesMarkPerQues = Int32.Parse(txtObjectiveQuestionMarkPerQuestion.Text);

                var totalMarks = totalObjQues * objQuesMarkPerQues;

                txtTotalMarks.Text = totalMarks.ToString();
            }
        }
    }
}