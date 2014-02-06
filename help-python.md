Dicas Desenvolvimento Python

Vistualenv
==

Instalando virtualenv
$pip install virtualenv

Criando do mbiente virtual
    $virtualenv /path/env

Ativando
$source /path/env/bin/activate



Django
==

Criando um novo projeto
$django-admin.py startproject mysite

Executado em modo de desenvolvimento
$cd mysite
$python manage.py runserver
$python manage.py runserver 8080 #mudadndo porta
$python manage.py runserver 0.0.0.0:8000 #permite acesso ao server de todos os IPs ppublicos


Descobrir path django
$ python -c " import sys sys.path = sys.path[1:] import django print(django.__path__)" 
