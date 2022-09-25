# Dicas Desenvolvimento Python


## Instalando Pip

  https://pip.pypa.io/en/stable/installing/  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py


### Virtualenv

#### Instalando virtualenv

    $pip install virtualenv

#### Criando do mbiente virtual

    $virtualenv /path/env

#### Ativando

    $source /path/env/bin/activate


### Django

#### Criando um novo projeto

    $django-admin.py startproject mysite

#### Executado em modo de desenvolvimento

    $cd mysite
    $python manage.py runserver
    $python manage.py runserver 8080 #mudadndo porta
    $python manage.py runserver 0.0.0.0:8000 #permite acesso ao server de todos os IPs ppublicos


#### Descobrir path django

    $ python -c " import sys sys.path = sys.path[1:] import django print(django.__path__)" 


## Miniconda

https://conda.io/projects/conda/en/latest/user-guide/install/index.html#

https://conda.io/projects/conda/en/latest/commands.html

https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/index.html

Comandos uteis:

    conda config --set auto_activate_base false
    conda update conda

Create an environment
	conda create --name $ENVIRONMENT_NAME python
Activate an environment
	conda activate $ENVIRONMENT_NAME
Deactivate an environment
	conda deactivate
Sharing environment
    conda env export > environment.yml
Create enviroment from file
    conda env create -f environment.yml
Create requirements file
	conda list --export
List all environments
	conda info --envs
Install Python
	conda install python=x.x