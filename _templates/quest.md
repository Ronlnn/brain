<%*
const quest = await tp.system.prompt("Название квеста?")
const xp = await tp.system.prompt("XP за квест?")
const gold = await tp.system.prompt("Голда за квест?")
%>

- [ ] Завершил квест: <%= quest %>
- Получено: <%= xp %> XP, <%= gold %> 💰

<% tp.file.move("RPG/logs/" + tp.date.now("YYYY-MM-DD") + ".md") %>
