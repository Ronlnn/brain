#!/bin/bash

# Путь к хранилищу Obsidian
VAULT_PATH=~/Brain/brain/5\ Resources

# Получаем JSON
curl -s https://codestats.net/api/users/RonInn > "$VAULT_PATH/code-stats.json"

# Оборачиваем в Markdown-кодблок и сохраняем в .md
echo -e '```json\n'$(cat "$VAULT_PATH/code-stats.json")'\n```' > "$VAULT_PATH/code-stats.md"
