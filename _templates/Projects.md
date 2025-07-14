---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
prompt: <%*let options = ["📫 Inbox", "📌 In Progress", "✅ Done"];let status = await tp.system.suggester(options,options);%><%* let options = ["❕Low", "❗Medium", "‼️High"]; let priority = await tp.system.suggester(options,options);%>
---
status:: <%status%>
priority:: <>
  