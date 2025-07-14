---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
prompt: <%*let statusOptions = ["📫 Inbox", "📌 In Progress", "✅ Done"];let status = await tp.system.suggester(statusOptions,statusOptions);%><%* let priorityOptions = ["❕Low", "❗Medium", "‼️High"]; let priority = await tp.system.suggester(priorityOptions,priorityOptions);%>
status:
---

status:: <%status%>
priority::<%priority%>
  