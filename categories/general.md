---
layout: page
title: "Загальне"
description: "Загальні статті про e-commerce, AI та бізнес в Україні."
permalink: /categories/general/
---

# Загальне

Статті про e-commerce, AI-інструменти та бізнес-поради для українських підприємців.

<ul class="post-list">
{% for post in site.posts %}{% if post.category == "general" %}
  <li>
    <span class="post-meta">{{ post.date | date: "%d.%m.%Y" }}</span>
    <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
    <p>{{ post.description }}</p>
  </li>
{% endif %}{% endfor %}
</ul>
