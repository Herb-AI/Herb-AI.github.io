---
layout: page
permalink: /repositories/
title: repositories
description: A list of Herb.jl-related repositories.
nav: true
nav_order: 3
---

## Herb.jl repositories

{% if site.data.repositories.herb_packages %}
<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.herb_packages %}
    {% include repository/repo.html repository=repo %}
  {% endfor %}
</div>
{% endif %}

## Projects using Herb.jl

{% if site.data.repositories.herb_projects %}
<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.herb_projects %}
    {% include repository/repo.html repository=repo %}
  {% endfor %}
</div>
{% endif %}


