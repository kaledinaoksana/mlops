# MLOps ODS

## Работа с Git

Создаем новую ветку `setup-repo` по заданию, переходим в нее. Пушим изменения на GitLab, устанавливая upstream на ветку - теперь можно использовать просто git push для сохранения изменений на удаленном репозитории в этой ветке.
```
git checkout -b setup-repo
git push --set-upstream origin setup-repo
```