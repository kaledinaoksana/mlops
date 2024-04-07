# Конфигурационные файлы

В корне проекта существуют конфигурационные файлы:
- `pyproject.toml` - конфиг проекта

    **Если используете vscode**:
    для использования файла настройки проекта pyproject.toml, необходимо в корне необходимо создать папку **.vscode** с файлом `settings.json` и поместить в него код, приведенный ниже

    ```
    {
        "files.associations": {
            "*.toml": "toml"
        }
    }
    ```

- `.pre-commit-config.yaml` - конфиг pre-commit'a

## Линтеры и форматеры

В файле `pyproject.toml` описаны настройки линтеров и форматеров для проекта **mlops_ods**. Как главный tool используется [ruff](https://docs.astral.sh/ruff/), который позволяет легко добавлять необходимые надстройки.

На данном этапе проекта в pyproject.toml используются:
- [ruff](https://docs.astral.sh/ruff/formatter/) - быстрый форматер кода
- [pyflakes](https://pypi.org/project/pyflakes/) - проверка на наличие ошибок
- [mccabe](https://pypi.org/project/mccabe/) - сложность кода
- [isort](https://pypi.org/project/isort/) - сортировка импортов
- [pep8-naming](https://pypi.org/project/pep8-naming/) - соответствие имен PEP8
- [pydocstyle](https://pypi.org/project/pydocstyle/) - стиль документации
- [pyupgrade](https://pypi.org/project/pyupgrade/) - обновление синтаксиса
- [flake8](https://pypi.org/project/flake8/):
    * [flake8-annotations](https://pypi.org/project/flake8-annotations/) - аннотации типов
    * [flake8-async](https://pypi.org/project/flake8-async/) - асинхронный код
    * [flake8-bandit](https://pypi.org/project/flake8-bandit/) - безопасность кода
    * [flake8-blind-except](https://pypi.org/project/flake8-blind-except/) - "слепой" except
    * [flake8-comprehensions](https://pypi.org/project/flake8-comprehensions/) - улучшение comprehensions
    * [flake8-datetimez](https://pypi.org/project/flake8-datetimez/) - работа с datetime
    * [flake8-errmsg](https://pypi.org/project/flake8-errmsg/)- сообщения об ошибках
    * [flake8-future-annotations](https://pypi.org/project/flake8-future-annotations/) - Будущие аннотации
    * [flake8-implicit-string-concat](https://pypi.org/project/flake8-implicit-str-concat/) - неявная конкатенация строк
    * [flake8-pie](https://pypi.org/project/flake8-pie/)- различные проверки
    * [flake8-pytest-style](https://pypi.org/project/flake8-pytest-style/) - стиль pytest
    * [flake8-self](https://pypi.org/project/flake8-self/) - использование self
    * [flake8-simplify](https://pypi.org/project/flake8-simplify/) - упрощение кода
    * [flake8-unused-argument](https://pypi.org/project/flake8-unused-arguments/) - неиспользуемые аргументы

- [eradicate](https://pypi.org/project/eradicate/) - удаление кодовых комментариев
- [pandas-vet](https://pypi.org/project/pandas-vet/) - линтер для pandas
- [tryceratops](https://pypi.org/project/tryceratops/) - предотвращение антипаттернов обработки исключений
- NumPy-specific rules - правила для numpy


Для добавления будущей настройки файла `pyproject.toml` используйте [настройки](https://docs.astral.sh/ruff/settings/) и [правила](https://docs.astral.sh/ruff/rules/).

**Документация**: [ruff documentation](https://docs.astral.sh/ruff/).


## Pre-commit

Настройки pre-commit находятся в файле `.pre-commit-config.yaml`.

На данном этапе проекта в pre-commit используются:
- [black](https://github.com/python/black) 24.3.0 - форматер кода
- [isort](https://github.com/pycqa/isort) 5.13.2 - сортировка импортов
- [flake8](https://github.com/PyCQA/flake8) 7.0.0 - линтер
- [mypy](https://github.com/pre-commit/mirrors-mypy) 1.9.0 - проверка типов
- [ruff](https://github.com/astral-sh/ruff-pre-commit) 0.3.5 - линтер
- [nbqa-black](https://github.com/nbQA-dev/nbQA) 1.8.3 - black в .ipynb


**Автоматическое использование:**

Установите pre-commit в git hooks `pre-commit install` - теперь pre-commit будет запускаться при каждом коммите. Это необходимо выполнять каждый раз, когда вы клонируете проект.

**Использование вручную:**
* `pre-commit run --all-files` - запуск всех хуков в репозитории
* `pre-commit run <hook_id>` - запуск отдельных хуков

**Документация**: [pre-commit documentation](https://pre-commit.com).
