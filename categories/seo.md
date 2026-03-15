---
layout: page
title: "SEO"
permalink: /categories/seo/
---

# SEO для e-commerce

Статті про пошукову оптимізацію інтернет-магазинів: технічне SEO, ключові слова, Google Search Console, контентна стратегія.

<ul class="post-list">
{% for post in site.posts %}{% if post.category == "seo" %}
  <li>
    <span class="post-meta">{{ post.date | date: "%d.%m.%Y" }}</span>
    <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
    <p>{{ post.description }}</p>
  </li>
{% endif %}{% endfor %}
</ul>
