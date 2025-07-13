#!/bin/bash

# Путь к папке с данными (проверь путь!)
VAULT_PATH="$HOME/Brain/brain/5 Resources"
TMP_JSON="$(mktemp)"

# Получаем данные
curl -s https://codestats.net/api/users/RonInn > "$TMP_JSON"

# Проверка и обработка
if jq empty "$TMP_JSON" 2>/dev/null; then
  echo "✅ JSON валиден"

  # Сохраняем необработанный JSON для скриптов
  cp "$TMP_JSON" "$VAULT_PATH/code-stats.json"

  # Форматируем и сохраняем в .md
  {
    echo '```json'
    jq '.' "$TMP_JSON"
    echo '```'
  } > "$VAULT_PATH/code-stats.md"

  echo "✅ Обновлено: code-stats.json и code-stats.md"
else
  echo "❌ JSON повреждён или пуст"
fi

# Очистка
rm "$TMP_JSON"
