---
layout: page
title: "Автоматизація"
permalink: /categories/automation/
---

# Автоматизація e-commerce

Статті про AI-інструменти, no-code рішення, автоматизацію бізнес-процесів, чат-ботів та оптимізацію роботи.

<ul class="post-list">
{% for post in site.posts %}{% if post.category == "automation" %}
  <li>
    <span class="post-meta">{{ post.date | date: "%d.%m.%Y" }}</span>
    <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
    <p>{{ post.description }}</p>
  </li>
{% endif %}{% endfor %}
</ul>
