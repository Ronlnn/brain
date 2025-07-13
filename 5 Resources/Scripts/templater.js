// Подсчитать решенные проблемы
module.exports.countProblems = async () => {
  const dv = app.plugins.plugins.dataview.api;
  let total = 0;
  for (let page of dv.pages("[[00 Problems]]")) {
    if (page.problems) total += Number(page.problems);
  }
  return total;
};

// Подсчитать все заметки
module.exports.countNotes = async () => {
  const dv = app.plugins.plugins.dataview.api;
  return dv.pages("").length;
};

// Подсчитать прочитанные книги
module.exports.countCompletedBooks = async () => {
  const dv = app.plugins.plugins.dataview.api;
  return dv.pages("00 Book Tracker").where(p => p.status == "completed").length;
};
