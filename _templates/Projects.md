---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
priority: ❕Low
status: 📫 Inbox
prompt: <%*let statusOptions = ["📫 Inbox", "📌 In Progress", "✅ Done"];let status = await tp.system.suggester(statusOptions,statusOptions);%><%* let priorityOptions = ["❕Low", "❗Medium", "‼️High"]; let priority = await tp.system.suggester(priorityOptions,priorityOptions);%>
---
📫 Inbox, 📌 In Progress, ✅ Done, ❕Low, ❗Medium,‼️High

status:: <%status%>
priority::<%priority%>
# <>