---
layout: page
title: "Продажі"
permalink: /categories/sales/
---

# Продажі в e-commerce

Статті про продажі на маркетплейсах, оптимізацію карток товарів, цінові стратегії, тренди та міжнародну торгівлю.

{% assign posts = site.posts | where: "category", "sales" %}
{% if posts.size == 0 %}
{% assign posts = site.posts | where_exp: "post", "post.tags contains 'продажі' or post.tags contains 'маркетплейс'" %}
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
