---
tags:
  - knowledge
zero-links: "[[100 вопросов JS]]"
created: 16-09-25
prompt:
---
# 📑 Как переопределить переменные в блоке switch без ошибок?
- Переменные внутри блока switch могут быть переопределены без ошибок
	- Потому что каждый case имеет свою область видимости

Пример
```js
let option = 2;
switch (option) {
  case 1:
    let message = "Первый вариант";
    console.log(message);
    break;
  case 2:
    let message = "Второй вариант"; // Нет ошибки, так как это отдельная область видимости
    console.log(message);
    break;
  default:
    let message = "Другой вариант";
    console.log(message);
}
```
