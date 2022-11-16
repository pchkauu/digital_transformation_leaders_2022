# dippvvod
Программное решение для хакатона "Лидеры Цифровой Трансформации 2022".

Front-end Source Code https://drive.google.com/file/d/16ATBkrOEKxFGXIv0lyH_Z8jw8yFSGFhY/view?usp=sharing

Back-end Source Code https://drive.google.com/file/d/1IlikjcHrOXRegEQyfy15TVFdTEebpNmv/view?usp=sharing


Документация


Задача 9. Веб-платформа для разметки
медицинских изображений и
генерации диагностических
исследований на основе
размеченных патологий

Команда: Дипп_ввод
(Сеченовский Университет)
Используемые технологии


Front: 

Dart/Flutter
React JS


Backend:

Python 3.10/Flask
Apache 
OC Debain 11


ML:

Tensorflow 2.10
Cuda
GAN-CT



Развертывание веб-интерфейса

Запустить команду flutter run build в корневой папке проекта solution/. Полученные файлы расположенные в каталоге solution/build/web перенести на сервер.

На сервере создать каталог research/, перенести в него файлы из папки solution/research.

В директории research в файле src/js/ui/toolbar.js выставить параметры для передачи по REST API


Развертывание бэкенда

Захостить сервер Apache. Установить daemon с файлом back-end/rest_api.py 








