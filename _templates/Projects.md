---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline:
---
<%*
let request = await tp.system.prompt('Статус ?');
let options = ["📫 Inbox", "📌 In Progress", "✅ Done"];
let status = await tp.system.suggester(options,options);
 await tp.user.remove_empty_lines(); 
%>

status:: <%status%>


