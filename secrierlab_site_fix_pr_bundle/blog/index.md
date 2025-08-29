---
layout: page
title: Research blog
permalink: /blog/
---
{% for post in site.posts %}
  <article class="card">
    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <p class="muted">{{ post.date | date: "%B %-d, %Y" }}</p>
    <p>{{ post.excerpt | strip_html | truncate: 220 }}</p>
  </article>
  <div class="bigspacer"></div>
{% endfor %}
