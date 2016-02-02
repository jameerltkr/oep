using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Exam_Portal.services
{
    public class StoreData
    {
        public void SaveQuestionPaperData(model.QuestionPaper quesModel)
        {
            var dbContext = new model.OEPDBEntities2();

            dbContext.QuestionPapers.Add(quesModel);

            dbContext.SaveChanges();
        }

        public List<model.QuestionPaper> FindQuesPaper(string quesPaperName)
        {
            var dbContext = new model.OEPDBEntities2();

            return dbContext.QuestionPapers.Where(x => x.QuestionPaperName.Contains(quesPaperName)).ToList<model.QuestionPaper>();
        }
    }
}