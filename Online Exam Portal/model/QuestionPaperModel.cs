using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Exam_Portal.model
{
    public class QuestionPaperModel
    {
        public int ID { get; set; }
        public string QuesPaperName { get; set; }
        public Nullable<decimal> TotalObjQues { get; set; }
        public Nullable<decimal> ObjQuestionMarkPerQues { get; set; }
        public Nullable<decimal> ObjQuesMark { get; set; }
        public Nullable<decimal> PracticalQuesMark { get; set; }
        public Nullable<decimal> TotalMarks { get; set; }
        public Nullable<decimal> PassingMark { get; set; }
        public string ObjExamTime { get; set; }
    }
}