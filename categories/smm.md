---
layout: page
title: "Соцмережі"
permalink: /categories/smm/
---

# SMM для e-commerce

Статті про ведення соціальних мереж: Instagram, TikTok, Threads, Telegram, YouTube — контент-стратегії, алгоритми, інфлюенсер-маркетинг.

{% assign posts = site.posts | where: "category", "smm" %}
{% if posts.size == 0 %}
{% assign posts = site.posts | where_exp: "post", "post.tags contains 'smm' or post.tags contains 'instagram' or post.tags contains 'tiktok'" %}
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
