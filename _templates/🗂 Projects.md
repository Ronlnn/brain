# 🗂 <% tp.file.title %>

**Описание:**  
<напиши цель проекта>

**📅 Старт:** <% tp.date.now("YYYY-MM-DD") %>  
**⏳ Дедлайн:**  
deadline:: 2025-08-15

**📌 Теги:** #проект  
status:: in progress

**🔗 Задачи этого проекта:**
```dataview
table file.link as "Task", status, due
from [[00 Tasks]]
where project = this.file.name
sort due asc
