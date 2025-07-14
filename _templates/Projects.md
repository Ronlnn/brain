---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline:
---
<%*
tR += "🟡 Статус ?\n\n";
let options = ["📫 Inbox", "📌 In Progress", "✅ Done"];
let status = await tp.system.suggester(options,options)
%>

status:: <%status%>


