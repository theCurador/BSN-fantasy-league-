# Distika - codename "GameChanger"

## Setup Instructions

### Configure Python environment
1. If you do not have Anaconda run this:

    `pip install -r requirements.txt`
1. If you do have Anaconda run this:

    `conda env create --file environment.yml --prune`

### Configure SQL environment
1. If you do have a local MS-SQL instance running, you have two options:

    1. Create an empty database named `gamechanger`
    1. Change the name in line 80 of `distika\distika\settings.py` to the name of the database you want to use

1. if you want to use SQLite, remove lines 78-85 and replace with this data:

    `'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }`

### Setup Django Server

1. ### **Be sure you are in the** *distika\distika* **directory**

1. Run a sanity check that Django is installed correctly

    `python manage.py runserver :4747`

    You shoud be able to navigate to see the [Django welcome page](http://localhost:4747)

    <ins>**Django automatically updates pages and recompiles production code as you save files, but bad edits may cause a crash.<br><br>You can shut down the server by using Ctrl+C on Windows/Linux or Cmd+C on a Mac.**
    </ins>

1. **OPTIONAL** If you are changing to a new module name, make a new app and copy files ( and change dependencies)

    `python manage.py startapp <new_app_name>`

1. Do a preflight check to debug model dependencies

    `python manage.py check`

1. Build the initial bindings of Django only tables to database

    `python manage.py migrate`

1. Build the Python driving the custome model objects for tables

    `python manage.py makemigrations gamechanger`

1. **OPTIONAL** Check DDL for tables for the currrent version (0001 is current version number of schema)

    `python manage.py sqlmigrate gamechanger <ver_#> > <ver_#>`

1. Connect to database via Django and create tables

    `python manage.py migrate`

1. Build admin login

    `python manage.py createsuperuser`

    You will receive prompts for:
    * a superuser admin's name
    * a superuser admin's email address
    * a superuser admin's password 
        * ( you can choose "y" at the end to accept an insecure password for dev purposes)
1. If you stopped the Django server, restart the server

    `python manage.py runserver 4747`

