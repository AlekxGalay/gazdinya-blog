---
layout: page
title: "Автоматизація"
permalink: /categories/automation/
---

# Автоматизація e-commerce

Статті про AI-інструменти, no-code рішення, автоматизацію бізнес-процесів, чат-ботів та оптимізацію роботи.

{% assign posts = site.posts | where: "category", "automation" %}
{% if posts.size == 0 %}
{% assign posts = site.posts | where_exp: "post", "post.tags contains 'автоматизація' or post.tags contains 'ai'" %}
{% endif %}

<ul class="post-list">
{% for post in posts %}
  <li>
    <span class="post-meta">{{ post.date | date: "%d.%m.%Y" }}</span>
    <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
    <p>{{ post.description }}</p>
  </li>
{% endfor %}
</ul>
