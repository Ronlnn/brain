---
tags:
  - knowledge
zero-links: "[[100 вопросов JS]]"
created: 16-09-25
prompt:
---
# 📑 Как декодировать и кодировать URL
В JavaScript для декодирования (преобразования из закодированного вида в читаемый) или кодирования (преобразования из читаемого вида в закодированный) URL используются методы `decodeURI()`, `encodeURI()`, `decodeURIComponent()` и `encodeURIComponent()`.

### Декодирование:

- `decodeURI()` используется для декодирования всего URL.
- `decodeURIComponent()` применяется для декодирования компонентов URL, таких как параметры.

Пример декодирования:

```js
let encodedURL =
  "https%3A%2F%2Fexample.com%2F%3Fq%3D%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80";
let decodedURL = decodeURIComponent(encodedURL);
console.log(decodedURL);
```

### Кодирование:


- `encodeURI()` используется для кодирования всего URL.
- `encodeURIComponent()` применяется для кодирования компонентов URL, чтобы делать их безопасными для передачи.

Пример кодирования:

```js
let url = "https://example.com/?q=пример";
let encodedURL = encodeURI(url);
console.log(encodedURL);
```

При использовании `encodeURIComponent()`:

```js
let query = "пример запроса";
let encodedQuery = encodeURIComponent(query);
console.log(encodedQuery);
```

Важно понимать разницу между этими методами и выбирать правильный в зависимости от контекста.
