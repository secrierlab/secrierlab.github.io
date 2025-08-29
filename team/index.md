---
layout: page
title: People
permalink: /team/
---
<h1>Current members</h1>
<div class="team-grid">
{% assign current = site.people | sort: "order" %}
{% for p in current %}
  {% include person-card.html person=p %}
{% endfor %}
</div>

<h2>Gallery</h2>
<!-- keep your existing gallery section below if you want -->
