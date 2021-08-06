---
title: "Posts by Tag"
permalink: /tags/
layout: archive
author_profile: true
---
{% if site.tags != "" %}
  <!--debugging on production-->
  {% assign rawtags = "" %}
  {% for post in site.posts %}
    {% assign ttags = post.tags | join:'|' | append:'|' %}
    {% assign rawtags = rawtags | append:ttags %}
  {% endfor %}
  {% assign rawtags = rawtags | split:'|' | sort %}

  {% assign site.tags = "" %}
  {% for tag in rawtags %}
    {% if tag != "" %}
      {% if tags == "" %}
        {% assign tags = tag | split:'|' %}
      {% endif %}
      {% unless tags contains tag %}
        {% assign tags = tags | join:'|' | append:'|' | append:tag | split:'|' %}
      {% endunless %}
    {% endif %}
  {% endfor %}
{% endif %}

{% assign tags_max = 0 %}
{% for tag in site.tags %}
  {% if tag[1].size > tags_max %}
    {% assign tags_max = tag[1].size %}
  {% endif %}
{% endfor %}

<ul class="taxonomy__index">
  {% for i in (1..tags_max) reversed %}
    {% for tag in site.tags %}
      {% if tag[1].size == i %}
        <li>
          <a href="#{{ tag[0] | slugify }}">
            <strong>{{ tag[0] }}</strong> <span class="taxonomy__count">{{ i }}</span>
          </a>
        </li>
      {% endif %}
    {% endfor %}
  {% endfor %}
</ul>

{% assign entries_layout = page.entries_layout | default: 'list' %}
{% for i in (1..tags_max) reversed %}
  {% for tag in site.tags %}
    {% if tag[1].size == i %}
      <section id="{{ tag[0] | slugify | downcase }}" class="taxonomy__section">
        <h2 class="archive__subtitle">{{ tag[0] }}</h2>
        <div class="entries-{{ entries_layout }}">
          {% for post in tag.last %}
            {% include archive-single.html type=entries_layout %}
          {% endfor %}
        </div>
        <a href="#page-title" class="back-to-top">{{ site.data.ui-text[site.locale].back_to_top | default: 'Back to Top' }} &uarr;</a>
      </section>
    {% endif %}
  {% endfor %}
{% endfor %}
