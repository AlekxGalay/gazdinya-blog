# Газдиня Blog

> Оновлено: 2026-03-24

## Опис
SEO блог для Газдиня бота. Статті про e-commerce, AI, автоматизацію. GitHub Pages.

## Стек
- **Engine:** Jekyll
- **Hosting:** GitHub Pages
- **Deploy:** deploy-blog.sh

## Структура
- _posts/ — статті (Markdown), останні від 24.03.2026
- _layouts/, _includes/ — шаблони
- assets/ — CSS, JS, зображення
- _config.yml — локальний конфіг
- _config_gh.yml — GitHub Pages конфіг
- Gemfile — Ruby залежності

## Git
- Remote: https://github.com/AlekxGalay/gazdinya-blog (public)
- Контент генерується автоматично через marketing/seo_generator

## Важливо
- Деплой: bash deploy-blog.sh
- Локальний конфіг != GH Pages конфіг
- Статті додаються автоматично (2 на день, 10:00 + 15:00)
