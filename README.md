# First
## Хороших праздников, Илья Алексеевич
Этот скрипт на bash  на вход принимает два параметра - две директории (входная директория и выходная директория). Во входной директории могут находиться как файлы, так и вложенные директории (внутри которых тоже могут быть как файлы, так и папки) - уровень вложенности может быть любой.  Скрипт "обходиит" входную директорию и копирует все файлы из нее (и из всех сложенных директорий) в выходную директорию - но уже без иерархии, а просто все файлы - внутри выходной директории.
## Использование
Для использования скрипта необходимо передать два аргумента - входную и выходную директории.
```bash
./script.sh Входная директория Выходная директория
```
Если же входной директроии не существует, скрипт вернет ошибку.

Если же выходной директории не существует, то скрипт создаст её.
## Пример использования
```bash 
Предположим, у нас есть входная директория /home/input_dir со следующей структурой:

input
├── a.txt
├── dir2
│   └── b.txt
└── dir3
    └── c.txt
Тогда после выполнения скрипта в выходной директории /home/output_dir будет следующая структура:

output
├── a.txt
├── b.txt
└── c.txt
```
