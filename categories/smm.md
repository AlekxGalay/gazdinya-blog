---
layout: page
title: "Соцмережі"
permalink: /categories/smm/
---

# SMM для e-commerce

Статті про ведення соціальних мереж: Instagram, TikTok, Threads, Telegram, YouTube — контент-стратегії, алгоритми, інфлюенсер-маркетинг.

<ul class="post-list">
{% for post in site.posts %}{% if post.category == "smm" %}
  <li>
    <span class="post-meta">{{ post.date | date: "%d.%m.%Y" }}</span>
    <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
    <p>{{ post.description }}</p>
  </li>
{% endif %}{% endfor %}
</ul>
