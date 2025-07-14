---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
prompt: <%*let request = await tp.system.prompt('Статус ?');let options = ["📫 Inbox", "📌 In Progress", "✅ Done"];let status = await tp.system.suggester(options,options);%>
---


status:: <%status%>


