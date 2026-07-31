---
layout: single
title: "Artist Biography"
permalink: /about/
author_profile: false
hide_pagination: true
---

<style>
#page-title { display: none; }
.page__content > *:not(style):not(script) {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.6s ease, transform 0.6s ease;
}
.page__content > *.cv-fade-visible {
  opacity: 1;
  transform: translateY(0);
}

.page__content {
  position: relative;
}
.page__content .frozen-box-0 {
  position: absolute;
  left: -443px;
  top: 78px;
  margin: 0;
}
.page__content .frozen-text {
  margin-left: 27px;
}

@media (max-width: 600px) {
  .page__content .frozen-box-0 {
    position: static;
    margin: 0 0 1.5rem;
  }
  .page__content .frozen-text {
    margin-left: 0;
  }
}
</style>

<div class="page-stack frozen-box-0">
  <img src="{{ '/assets/images/grace.webp' | relative_url }}" alt="Grace">
</div>

# Artist Biography
{: .frozen-text }

Alexander (AJ) Escalante (b. 2005) is a painter whose work explores memory, cultural identity, and the intersection of figuration and abstraction. Working primarily in oil, he develops layered, gestural surfaces where forms emerge and dissolve through accumulated mark-making, engaging painting as a site of perceptual ambiguity rather than fixed narrative.
{: .frozen-text }

A current fourth-year student pursuing a double major in Art and Neuroscience at Connecticut College, Escalante is the 2026 recipient of the Marguerite Hanson Art Grant from Connecticut College. He was recently nominated for the Yale Norfolk Summer of Art 2026.
{: .frozen-text }

Escalante developed a body of work for the ballet score The Undertaker by Illarion Gershkovich, which premiered at the Royal College of Music in London in March 2026. He completed his semester abroad at the Siena Art Institute in spring 2026, furthering his engagement with material process and cross-cultural perspective.
{: .frozen-text }

<script>
document.addEventListener('DOMContentLoaded', function () {
  var els = document.querySelectorAll('.page__content > *:not(style):not(script)');
  var observer = new IntersectionObserver(function (entries) {
    entries.forEach(function (entry) {
      if (entry.isIntersecting) {
        entry.target.classList.add('cv-fade-visible');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.1 });
  els.forEach(function (el) { observer.observe(el); });
});
</script>

{% include drag-editor.html %}
