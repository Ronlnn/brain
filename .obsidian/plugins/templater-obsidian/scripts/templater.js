module.exports.countProblems = async () => {
  const dv = app.plugins.plugins.dataview.api;
  let total = 0;

  // Получаем все страницы из папки "3 Problems" и вложенных
  const allPages = dv.pages('"3 Problems"');

  for (let page of allPages) {
    if (page.problems) {
      total += Number(page.problems || 1);
    }
  }

  return total;
};
