---
layout: page
title: "SEO"
permalink: /categories/seo/
---

# SEO для e-commerce

Статті про пошукову оптимізацію інтернет-магазинів: технічне SEO, ключові слова, Google Search Console, контентна стратегія.

{% assign posts = site.posts | where: "category", "seo" %}
{% if posts.size == 0 %}
{% assign posts = site.posts | where_exp: "post", "post.tags contains 'seo'" %}
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
