---
layout: single
title: About
permalink: /about/
hide_pagination: true
---

<style>
.page__content > *:not(style):not(script) {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.6s ease, transform 0.6s ease;
}
.page__content > *.cv-fade-visible {
  opacity: 1;
  transform: translateY(0);
}
</style>

Alexander (AJ) Escalante is a painter whose works are at the intersection of memory and material. Working primarily in oil, Escalante develops layered, gestural surfaces in which figural suggestion and abstraction coexist. Forms emerge and dissolve through repeated mark-making, emphasizing painting as a site of accumulation and perceptual ambiguity.

Drawing on personal and cultural references, Escalante's practice engages with questions of identity, history, and belonging without relying on fixed narratives. Influenced by his pluricultural heritage, his work explores how memory and personal experience shape visual language, allowing paintings to function as open, affective spaces rather than as descriptive representations. These spaces arise from Escalante's innate need to respond to and process the outside world, in the hope of transforming his art into a means of sharing and connecting with others.

Escalante is a current third-year student pursuing a double major in Art and Neuroscience at Connecticut College. He has developed a body of work for the ballet score The Undertaker by Illarion Gershkovich, which premiered at the Royal College of Music in London in March 2026 and was nominated for the Yale Norfolk Summer of Art 2026. Escalante also completed his semester at the Siena Art Institute in spring 2026 and is the 2026 recipient of the Marguerite Hanson Art Grant from Connecticut College.

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
