---
layout: page
title: "Продажі"
description: "Статті про продажі на маркетплейсах, оптимізацію карток товарів, цінові стратегії."
permalink: /categories/sales/
---

# Продажі в e-commerce

Статті про продажі на маркетплейсах, оптимізацію карток товарів, цінові стратегії, тренди та міжнародну торгівлю.

<ul class="post-list">
{% for post in site.posts %}{% if post.category == "sales" %}
  <li>
    <span class="post-meta">{{ post.date | date: "%d.%m.%Y" }}</span>
    <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
    <p>{{ post.description }}</p>
  </li>
{% endif %}{% endfor %}
</ul>
