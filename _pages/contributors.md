---
layout: page
title: contributors
permalink: /people/
description: All the people involved in growing Herbs.
nav: true
nav_order: 3 
display_categories: [work, fun]
horizontal: false
---

<!-- pages/contributors.md -->
<!-- same style as project -->
<div class="projects"> 
  <!-- There are three categories: core, current & past studetns -->
  {% if site.data.contributors.core_team %}
    <h1 class="category">Core Team</h1> 
    <!-- Generate cards for each person -->
    {% if page.horizontal -%}
      <div class="container">
        <div class="row row-cols-2">
          {%- for person in site.data.contributors.core_team -%}
            {% include contributors_horizontal.html %}
          {%- endfor %}
        </div>
      </div>
    {%- else -%}
      <div class="grid">
          {%- for person in site.data.contributors.core_team -%}
          {% include contributors.html %}
        {%- endfor %}
      </div>
    {%- endif -%}
  {%- endif -%}
</div>

<h3>Other people involved</h3>
For a more complete overview of current and past contributors, see the list on our [GitHub](https://github.com/orgs/Herb-AI/people).