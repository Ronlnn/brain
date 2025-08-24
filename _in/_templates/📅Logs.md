---
tags:
  - logs
zero-links: 
prompt: <%* let day = tp.date.now("DD-MM-YY"); %> <%tp.file.rename(day)%>
---
# 📅 <%day%>
#### Решено проблем:
problems::
### Работа дня:
<% tp.file.cursor()%>
