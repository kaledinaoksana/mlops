# MLOps ODS

## Методология: Data Science Lifecycle

Этот репозиторий следует методологии ведения проектов, основанной на практиках разработки программного обеспечения и методологии работы с данными.

### Ветвление (Branching)

Для каждой задачи создается отдельная ветка. Ветвление обеспечивает изоляцию изменений, позволяет параллельно работать над различными задачами и облегчает процесс слияния изменений в основную ветку.

Создаем новую ветку `new-task-branch` по заданию, переходим в нее. Пушим изменения на GitLab, устанавливая upstream на ветку - теперь можно использовать просто git push для сохранения изменений на удаленном репозитории в этой ветке.

```bash
git checkout -b new-task-branch
git push --set-upstream origin new-task-branch
```
При успешном выполнении задачи, мержим изменения в master (не забываем сначала сделать pull из удаленного репозитория):
```bash
git checkout master
git merge new-task-branch
```

## Docker

```bash
docker build . -t test_pytorch
docker run -it --entrypoint /bin/bash test_pytorch
```
**Менеджер**: [poetry](https://python-poetry.org/)

когда ты используешь команду poetry add numpy -- она автоматически добавляет это в poetry.lock и pyproject.toml

**Шаблонизация**: [copier](https://copier.readthedocs.io/en/stable/)


**Автоматизация**: [poethepoet](https://poethepoet.natn.io/index.html)


