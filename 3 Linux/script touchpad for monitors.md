- Если подключен внешний монитор - отключает тачпад
- Если не подключен и работаю за самим ноутом - включаем тачпад и натуральную прокрутку + тап по тачпаду

```bash
#!/bin/bash

TOUCHPAD_NAME="SynPS/2 Synaptics TouchPad"

# Проверяем подключен ли внешний монитор DP-1
if xrandr | grep "^DP-1 connected" > /dev/null; then
  # Внешний монитор ПОДКЛЮЧЕН - отключаем тачпад
  xinput set-prop "$TOUCHPAD_NAME" "Device Enabled" 0
  echo "External monitor connected - touchpad DISABLED"
else
  # Внешний монитор НЕ ПОДКЛЮЧЕН - включаем тачпад и настраиваем его
  xinput set-prop "$TOUCHPAD_NAME" "Device Enabled" 1
  xinput set-prop "$TOUCHPAD_NAME" "libinput Natural Scrolling Enabled" 1
  xinput set-prop "$TOUCHPAD_NAME" "libinput Tapping Enabled" 1
  echo "External monitor disconnected - touchpad ENABLED with natural scrolling and tapping"
fi
```
