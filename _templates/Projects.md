---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
---
<%* let status = await tp.system.prompt("Status?")%>

<%* let start = await tp.system.prompt("Start Date?")%>
<%* let deadline = await tp.system.prompt("Deadline?")%>

<%* let priority = await tp.system.suggester(["Happy", "Sad", "Confused"], ["Happy", "Sad", "Confused"]) %>


| Status::<%status%> | Priority:: <%priority%> | Start:: <%start%> | Deadline:: <%deadline%> |
| :----------------: | :---------------------: | :---------------: | :---------------------: |

