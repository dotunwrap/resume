#import "template.typ": *

#show: resume.with()

#section("Experience")

#entry(
  organization: "Red Ventures",
  title: "Software Engineer",
  location: "Charlotte, NC",
  date: "October 2025 - Present",
  bullets: (),
)

#entry(
  organization: "MedShift",
  title: "Software Engineer III",
  location: "Charlotte, NC",
  date: "May 2024 - October 2025",
  bullets: (
    [Developed two B2B medtech SPAs using Python, Django, Django REST Framework, Vue, React, and Tailwind.],
    [Owned client onboarding and custom development initiatives end-to-end, streamlining processes to reduce time-to-onboard from weeks to days.],
    [Led end-to-end custom integrations with partner APIs (e.g., Stripe, Firebase, Metabase), implementing idempotent workflows to ensure reliable, repeatable data syncs.],
  ),
)

#entry(
  organization: "Punchmark",
  title: "Full Stack Engineer",
  location: "Charlotte, NC",
  date: "June 2021 - May 2024",
  bullets: (
    [Drove development for an e-commerce platform using PHP, JavaScript (React), and Sass in a small team environment.],
    [Managed end-to-end platform operations including DevOps, security, and database administration.],
    [Led incident response to a critical security breach from investigation to implementation, delivering an entire authentication service overhaul within two weeks.],
    [Investigated and resolved security vulnerabilities using Burp Suite.],
    [Owned development of an extendable data-ingestion framework capable of efficiently handling terabytes of data per hour, resulting in a greater than 50% increase in performance.],
    [Orchestrated cloud deployments on AWS with Ansible and Docker.]
  ),
)

#section("Education")

#education(
  institution: "Rowan-Cabarrus Community College",
  degree: "Associate of Applied Science",
  date: "August 2016 - May 2020",
)

#section("Skills")

#skills-section((
  "Programming Languages": "Rust, Python, JavaScript, TypeScript, Go",
  "Frameworks": "Vue, React, Svelte, Django, Axum",
  "Databases": "PostgreSQL, MySQL, SQLite, MongoDB",
  "Cloud": "AWS, GCP",
  "Tools": "Terraform, Ansible, Docker",
))

#section("Projects")

#project(
  title: "DM Helper",
  link: "github.com/dotunwrap/dm-helper",
  bullets: (
    [Designed an interactive Discord bot for managing Dungeons and Dragons (D&D) campaigns and scheduling.],
    [Utilized async Rust and PostgreSQL with an ORM to create a robust and extensible solution.],
  )
)

#project(
  title: "Goldbach's Conjecture Solver",
  link: "github.com/dotunwrap/goldbachs-conjecture-solver",
  bullets: (
    [Developed a command-line tool for attempting to solve Goldbach's Conjecture using Rust.],
    [Implemented both Sieve of Eratosthenes and Sieve of Atkin algorithms for efficient prime number generation.],
  )
)

#project(
  title: "Hangul Recognition Test",
  link: "github.com/dotunwrap/hangul-recognition",
  bullets: (
    [Created a web app for testing hangul recognition in TypeScript using Vue's Options API.],
    [Deployed on GitHub Pages using GitHub Actions.]
  )
)
