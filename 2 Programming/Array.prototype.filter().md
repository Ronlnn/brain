---
tags:
  - knowledge
zero-links: "[[00 JS]]"
created: 08-11-25
prompt:
---
# 📑 Array.prototype.filter()
- Создает новый массив со всеми элементами прошедшими проверку 
```js
array.filter((element, index, array) => {
  return условие; // true/false
});
```
- Возвращает новый массив с отфильтрованными элементами
- Не изменяет исходный массив

Пример
```js
// Оставить только чётные числа
[1, 2, 3, 4, 5].filter(num => num % 2 === 0);
// [2, 4]

// Оставить только длинные строки
['cat', 'elephant', 'dog'].filter(str => str.length > 3);
// ['elephant']

// Подсчёт falsy значений
arr.filter(item => !item).length;

```
