# Vimi

Vim miripiruni's bundle

Please address bugs and your suggestions to [Issues](http://github.com/miripiruni/vimi/issues).


## How to install Vimi

Just copy to your console:

```
$ git clone https://github.com/miripiruni/vimi.git ~/.vimi && cd ~/.vimi && make
```


## Screenshot

![vimi](http://miripiruni.org/i/vimi.png "vimi")


## Shortcuts

I hold the fundamental rule is not to press the F-keys. First, on my mac they are busy, and secondly, they are too far away. All the shortcuts in the main through <Leader>, which as usual button ",".

`,r` replace in all buffers word under cursor

`,f` recursive search in current dir by word under cursor

`,s` shortcut for :%s//<left> you don't need type this any more :)

`,p` autoformat toggle for insert mode

`,nm` toggle type of line numbers: none/relative/absolute (Vim 7.3 required)

`,v` open .vimrc in new tab

`,u` convert current word to upper case

`,y` copy to first register all current line exept \s in begining and end. Useful for dragging some text constructions.

`,b` in Visual mode exec git blame with selected text

`,w` shortcut for Ctrl+w w for jumpping to next split

`,n` edit another file in the same directory as the current file uses expression to extract path from current file's path

`,bl` show buffers

`,bp` prev buffer

`,bn` next buffer

Create new empty split:

* `,→` right
* `,←` left
* `,↑` above
* `,↓` below

`p` or `P` paste in autoindent

`K` append the string from the cursor to begin the next line

`Q` то же самое что и q. Пригодится для случаев :q :Q

{action} from cursor to end of the line:

* `Y` yank
* `D` remove
* `C` change

`gf` open file by path under cursor

`Space` page down (like in browsers)

`Space-Space` dot and space (like in iPhone)

`Esc-Esc` in Normal mode remove highlights of search result

`Backspace` toggle NerdTree

Disable the arrow keys. Goal quickly grow out of the hands to move the pointers. Warning: nightmare mode! You can move through `hjkl` in Insert mode pressing `Ctrl`.

Move lines:

* `Ctrl-Shift-k` up
* `Ctrl-Shift-j` down

`:w!!` saves the file as if you opened it with sudo

`Ctrl+a` and `Ctrl+e` in command mode and insert mode allow to jump at start and end of line

`Ctrl` + `h` or `j` or `k` or `l` to switch between splits

`Ctrl+s` fast save


## Горячие кнопки

![CheatSheet](http://miripiruni.org/i/vimi-cheat-sheet-2012-02-18.png)


Я придерживаюсь принципиального правила ничего не мапить на F-клавиши. Во-первых, у меня
на маке они заняты, во-вторых, они слишком далеко. Все мапы в основном через `<Leader>`, который по обыкновению кнопка `,`.


`,r` Замена слова под курсором во всех открытых буферах

`,f` грепает в текущей директории по слову, на котором стоит курсор

`,s` шорткат для :%s//<left> Вам не нужно будет печатать этого и курсор
установится между слешами.

`,p` тогглит автоформатирование в режиме для вставки текста. Очень часто автоформатер мешает и его нужно выключать на время.

`,nm` переключает тип нумерации строк: абсолютный/относительный/нет

`,v` открыть .vimrc в новой табе. Кстати, если .vimrc сохранить все изменения вступтят в силу сразу же.

`,u` конвертирует слово под курсором в uppercase

`,y` удаляет строку, предварительно скопировав в последний буфер все содержимое
строки, кроме \s в начале и в конце. Полезно для захвата конструкций и
дальнейшую их вклейку в другие обертки.

`,b` в Visual mode вызывает git blame для выделенного текста

`,w` сокращение для Ctrl+w w для перепрыгивания в следующий сплит

`,n` создать новый документ с введенным вами именем в той же директории, что и текущий открытый документ

`,bl` показывает список буферов и ожидает ввода номера буфера для его открытия

`,bp` предыдущий буфер

`,bn` следующий буфер

Создать новый сплит:

* `,→` справа
* `,←` слева
* `,↑` сверху
* `,↓` снизу

`p` или `P` Вставить текст и отформатировать правильные отступы в зависимости от контекста

`K` перенести часть строки начиная с курсора в начало следующей строки (split/join)

`Q` Bind :Q to :q

{действие} от курсора до конца строки:

* `Y` копировать
* `D` удалить
* `C` заменить

`gf` открывает в сплите справа файл по пути, на котором стоит курсор

`Space` пролистнуть на страницу вниз (как в браузерах)

`Space-Space` точка и пробел (как в айФоне)

`Esc-Esc` в Normal mode убирает подсветку найденных совпадений при поиске

`Backspace` Toggle NerdTree

Отключаются клавиши стрелок для передвижения курсора. Цель быстрее отвыкнуть от перемещения руки к стрелочкам. Warning: nightmare mode! Но позволяем передвигаться с помощью `hjkl` в Insert mode зажав `Ctrl`

Перемещение строк:

* `Ctrl-Shift-k` вверх
* `Ctrl-Shift-j` вниз

`:w!!` сохраняет файл как если бы вы открыли его с sudo

`Ctrl+a` и `Ctrl+e` в Command и Insert режимах позволяет переставлять курсор в начало и в конец строки, как так же как это можно делать в терминале.

`Ctrl` + `h` или `j` или `k` или `l` для переключения между сплитами

`Ctrl+s` быстрое сохранение

