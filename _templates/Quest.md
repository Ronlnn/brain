
<%* let quest = await tp.system.prompt("Название квеста?")%>
<%* let xp = await tp.system.prompt("XP за квест?")%>
<%* let gold = await tp.system.prompt("Голда за квест?")%>

- [ ] Завершил квест: <% quest %>
- Получено: <% xp %> XP, <% gold %> 💰

<% tp.file.move("5 RPG/logs/" + tp.date.now("YYYY-MM-DD") + ".md") %>


n