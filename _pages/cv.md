---
layout: single
title: "Curriculum Vitae"
permalink: /cv/
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
  <img src="{{ '/assets/images/paco.webp' | relative_url }}" alt="Paco">
</div>

# Curriculum Vitae
{: .frozen-text }

## Education
{: .frozen-text }

- 2027 (expected) — BA Studio Art & Neuroscience, Connecticut College, New London, Connecticut
- 2026 — Study abroad semester, Siena Art Institute, SI, Italy
{: .frozen-text }

## Selected Exhibitions
{: .frozen-text }

- 2026 — The Peace Room: Spring Show, Siena Art Institute, Siena, IT
- 2026 — "The Undertaker," a ballet by Illarion Gershkovich, Royal College of Music, London, UK
- 2026 — The Happening - The Peace Room 26, Palazzo delle Papesse, Siena, IT
- 2025 — Artist and Curator: Unbodied - In and Beyond the Human Form, Cummings Art Center Gallery, New London, CT
- 2025 — Hygienic Grande, The Local Gallery, New London, CT
- 2024, 2025 — Artist and Curator: All-Student Show, Cummings Art Center Gallery, New London, CT
- 2021, 2022 — Art Expressions of San Joaquin, Stockton, CA
{: .frozen-text }

## Public Displays
{: .frozen-text }

- 2024 — Celebrate Diversity in Stockton Mural, Caltrans District 10 Office, Stockton, CA
{: .frozen-text }

## Awards / Distinctions
{: .frozen-text }

- 2026 — Marguerite Hanson Art Grant, Connecticut College, New London, CT
- 2026 — Yale Norfolk School of Art Summer 2026 Nominee
- 2025 — Salvator Stephen Figliomeni Memorial Art Award '82, Connecticut College, New London, CT
- 2023 — Grace Keenan Scholarship, Creighton University, Omaha, NE
- 2023 — Outstanding Achievement in St. Bernard's Award for Fine Arts, Saint Mary's High School, Stockton, CA
- 2022 — Caltrans District 10 Celebrate Diversity in Stockton Mural Contest Winner, Stockton, CA
- 2021, 2022 — Best of Show, Art Expressions of San Joaquin, Stockton, CA
{: .frozen-text }

## Press
{: .frozen-text }

- 2025 — Artist of the Edition: AJ Escalante '27 Break Boundaries, The College Voice, Connecticut College, New London, CT
{: .frozen-text }

## Student Activity
{: .frozen-text }

- 2023, 2024, 2025, 2026 — Art Department Student Advisory Board Member (SAB), Connecticut College, New London, CT
- 2026 (Fall) — Art Department SAB Co-Chair, Connecticut College, New London, CT
- 2025 (Fall) — Art Department SAB Treasurer, Connecticut College, New London, CT
- 2024 (Spring) — Art Department SAB Co-Chair, Connecticut College, New London, CT
{: .frozen-text }

## Upcoming
{: .frozen-text }

- 2026 — Artist and Curator: Thresholds - Connecticut College x Hygienic Art, Hygienic Art Galleries, New London, CT
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
