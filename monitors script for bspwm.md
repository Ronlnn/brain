```bash
#!/bin/bash

INTERNAL_MONITOR="eDP-1"
EXTERNAL_MONITOR="DP-1"

# Удаляем ВСЕ существующие рабочие области
for desktop in $(bspc query -D --names); do
  bspc desktop "$desktop" --remove 2>/dev/null
done

# Проверяем подключен ли внешний монитор (точная проверка!)
if xrandr | grep "^${EXTERNAL_MONITOR} connected" > /dev/null; then
  # Двухмониторная конфигурация
  xrandr --output "$EXTERNAL_MONITOR" --primary --mode 2560x1440 --rate 165
  xrandr --output "$INTERNAL_MONITOR" --mode 1920x1080 --rate 60 --below "$EXTERNAL_MONITOR"
  
  bspc monitor "$EXTERNAL_MONITOR" -d 1 2 3 4 5 6 7 8 9 10
  bspc monitor "$INTERNAL_MONITOR" -d 11 12 13 14 15
  bspc wm -O "$EXTERNAL_MONITOR" "$INTERNAL_MONITOR"
else
  # Одномониторная конфигурация
  xrandr --output "$INTERNAL_MONITOR" --primary --mode 1920x1080 --pos 0x0 --rotate normal
  xrandr --output "$EXTERNAL_MONITOR" --off 2>/dev/null
  
  bspc monitor "$INTERNAL_MONITOR" -d 1 2 3 4 5 6 7 8 9
fi

# Перезапуск polybar
#~/.config/polybar/launch.sh &

```

**Тут в связке нужно еще launch.sh для polybar:**

```bash
#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait for polybar to fully terminate
sleep 0.3

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

# Run on the desired monitor
if [[ $(xrandr -q | grep 'DP-1 connected' ) ]]; then
  polybar top_external -r >>/tmp/polybar1.log 2>&1 & disown
  polybar top -r >>/tmp/polybar2.log 2>&1 & disown
  echo "Polybar launched for two monitors"
else
  polybar top -r >>/tmp/polybar1.log 2>&1 & disown
  echo "Polybar launched for one monitor..."
fi

```
