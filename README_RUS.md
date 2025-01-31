# Linux Monitoring 

Linux basic bash scripting and system research.

## Содержание

1. Введение 
   - Bash
   - Shell
2. Реализация 
3. Скрипты
   - Проба пера
   - Исследование системы
   - Визуальное оформление вывода для скрипта исследования системы 
   - Конфигурирование визуального оформления вывода для скрипта исследования системы    
   - Исследование файловой системы

## Введение

### Bash

>Bash is the shell, or command language interpreter, for the GNU operating system.
>
>The name is an acronym for the ‘Bourne-Again SHell’, a pun on Stephen Bourne, the author of the direct ancestor of the current Unix shell sh, which appeared in the Seventh Edition Bell Labs Research version of Unix.
>
>Bash is largely compatible with sh and incorporates useful features from the Korn shell ksh and the C shell csh. It is intended to be a conformant implementation of the IEEE POSIX Shell and Tools portion of the IEEE POSIX specification (IEEE Standard 1003.1). It offers functional improvements over sh for both interactive and programming use.
>
>While the GNU operating system provides other shells, including a version of csh, Bash is the default shell. Like other GNU software, Bash is quite portable. It currently runs on nearly every version of Unix and a few other operating systems - independently-supported ports exist for MS-DOS, OS/2, and Windows platforms.

### Shell

>At its base, a shell is simply a macro processor that executes commands.
>
>A Unix shell is both a command interpreter and a programming language. As a command interpreter, the shell provides the user interface to the rich set of GNU utilities. Files containing commands can be created, and become commands themselves. These new commands have the same status as system commands, allowing users or groups to establish custom environments to automate their common tasks.
>
>Shells may be used interactively or non-interactively. In interactive mode, they accept input typed from the keyboard. When executing non-interactively, shells execute commands read from a file.
>
>A shell allows execution of GNU commands, both synchronously and asynchronously.
>
>While executing commands is essential, most of the power (and complexity) of shells is due to their embedded programming languages. Like any high-level language, the shell provides variables, flow control constructs, quoting, and functions.
>
>Shells offer features geared specifically for interactive use rather than to augment the programming language. These interactive features include job control, command line editing, command history and aliases.


## Реализация

- Написанные Bash-скрипты находятся в папке src
- Для каждого задания создана папка с названием вида: **0x**, где x - номер задания
- Все скрипты декомпозированы и разбиты на несколько файлов
- Файл с основным сценарием для каждого задания называется **main.sh**
- Во всех скриптах предусмотрены проверки на некорректный ввод (указаны не все параметры, параметры неправильного формата и т.д.)
- Все написанные скрипты запускаются на виртуальной машине *Ubuntu Server 20.04 LTS*

## Проба пера
- Написан bash-скрипт. Скрипт запускается с одним параметром. Параметр текстовый.  
- Скрипт выводит значение параметра.  
- Если параметр - число, то должно выводится сообщение о некорректности ввода.

##  Исследование системы
- Написан bash-скрипт. 
- Скрипт выводит на экран информацию в виде:
**HOSTNAME** = _сетевое имя_  
**TIMEZONE** = _временная зона в виде: **America/New_York UTC -5** (временная зона, должна браться из системы и быть корректной для текущего местоположения)_  
**USER** = _текущий пользователь который запустил скрипт_  
**OS** = _тип и версия операционной системы_  
**DATE** = _текущее время в виде: **12 May 2020 12:24:36**_  
**UPTIME** = _время работы системы_  
**UPTIME_SEC** = _время работы системы в секундах_  
**IP** = _ip-адрес машины в любом из сетевых интерфейсов_  
**MASK** = _сетевая маска любого из сетевых интерфейсов в виде: **xxx.xxx.xxx.xxx**_  
**GATEWAY** = _ip шлюза по умолчанию_  
**RAM_TOTAL** = _размер оперативной памяти в Гб c точностью три знака после запятой в виде: **3.125 GB**_  
**RAM_USED** = _размер используемой памяти в Гб c точностью три знака после запятой_  
**RAM_FREE** = _размер свободной памяти в Гб c точностью три знака после запятой_  
**SPACE_ROOT** = _размер рутового раздела в Mб с точностью два знака после запятой в виде: **254.25 MB**_  
**SPACE_ROOT_USED** = _размер занятого пространства рутового раздела в Mб с точностью два знака после запятой_  
**SPACE_ROOT_FREE** = _размер свободного пространства рутового раздела в Mб с точностью два знака после запятой_

После вывода значений предлогается записать данные в файл (**Y/N**).  
При согласии пользователя, в текущей директории создается файл содержащий информацию, которая была выведена на экран.  
Время в имени файла указывает момент сохранения данных.

## Визуальное оформление вывода для скрипта исследования системы
- Написан bash-скрипт.  
- Скрипт запускается с 4 параметрами. Параметры числовые. От 1 до 6, например:  
`script03.sh 1 3 4 5`

Обозначения цветов: (1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)  
**Параметр 1** - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)  
**Параметр 2** - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)  
**Параметр 3** - это фон значений (после знака '=')  
**Параметр 4** - это цвет шрифта значений (после знака '=')

Цвета шрифта и фона одного столбца не должны совпадать.  
При вводе совпадающих значений выводится сообщение, описывающее проблему, и предложение повторно вызвать скрипт.  


##  Конфигурирование визуального оформления вывода для скрипта исследования системы
- Написан bash-скрипт. 
- Скрипт запускается без параметров. Параметры задаются в конфигурационном файле до запуска скрипта.  
- Конфигурационный файл имеет вид:
```
column1_background=2
column1_font_color=4
column2_background=5
column2_font_color=1
```

Если один или несколько параметров не заданы в конфигурационном файле, то цвет должен подставляться из цветовой схемы, заданной по умолчанию. 

После вывода информации о системе из [**Part 3**] выводится цветовая схема в следующем виде:
```
Column 1 background = 2 (red)
Column 1 font color = 4 (blue)
Column 2 background = 5 (purple)
Column 2 font color = 1 (white)
```

При запуске скрипта с цветовой схемой по умолчанию вывод имеет вид:
```
Column 1 background = default (black)
Column 1 font color = default (white)
Column 2 background = default (red)
Column 2 font color = default (blue)
```

## Исследование файловой системы

- Написан bash-скрипт. 
- Скрипт запускается с одним параметром.  
- Параметр - это абсолютный или относительный путь до какой-либо директории. 
- Параметр должен заканчиваться знаком '/', например:  
`script05.sh /var/log/`

Скрипт выводит следующую информацию о каталоге, указанном в параметре:
- Общее число папок, включая вложенные
- Топ 5 папок с самым большим весом в порядке убывания (путь и размер)
- Общее число файлов
- Число конфигурационных файлов (с расширением .conf), текстовых файлов, исполняемых файлов, логов (файлов с расширением .log), архивов, символических ссылок
- Топ 10 файлов с самым большим весом в порядке убывания (путь, размер и тип)
- Топ 10 исполняемых файлов с самым большим весом в порядке убывания (путь, размер и хеш)
- Время выполнения скрипта

Скрипт выводит на экран информацию в виде:

```
Total number of folders (including all nested ones) = 6  
TOP 5 folders of maximum size arranged in descending order (path and size):  
1 - /var/log/one/, 100 GB  
2 - /var/log/two/, 100 MB  
etc up to 5
Total number of files = 30
Number of:  
Configuration files (with the .conf extension) = 1 
Text files = 10  
Executable files = 5
Log files (with the extension .log) = 2  
Archive files = 3  
Symbolic links = 4  
TOP 10 files of maximum size arranged in descending order (path, size and type):  
1 - /var/log/one/one.exe, 10 GB, exe  
2 - /var/log/two/two.log, 10 MB, log  
etc up to 10  
TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)  
1 - /var/log/one/one.exe, 10 GB, 3abb17b66815bc7946cefe727737d295  
2 - /var/log/two/two.exe, 9 MB, 53c8fdfcbb60cf8e1a1ee90601cc8fe2  
etc up to 10  
Script execution time (in seconds) = 1.5
```
