---
prompt:
tags:
  - linux
zero-links: "[[NixOs]]"
---
## Hiddify настройка

### Конфиг в Home-manager
```nix
{ config, pkgs, ... }:

{
home.packages = [ pkgs.hiddify-app ];
systemd.user.services.hiddify = {

Unit = {
Description = "Hiddify VPN client";
After = [ "graphical-session-pre.target" ];
};

Service = {

ExecStart = "${pkgs.hiddify-app}/bin/hiddify";

Restart = "on-failure";

Environment = [

"DISPLAY=:0"

"WAYLAND_DISPLAY=wayland-0"

"XDG_SESSION_TYPE=wayland"

];

};

Install = {

WantedBy = [ "graphical-session.target" ];

};
};
}
```

- Решает проблему, когда при запуске  системы, интернет не работает нормально. Т.к ошибка с прокси.
- А теперь hiddify идет как system-служба
	- Да, теперь приложение в автозапуске, но проблема с инетом пропала. И все работает корректно


