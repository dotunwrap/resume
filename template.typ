
/// Resume template for creating professional resumes
///
/// This function sets up the document structure and styling for a resume.
/// It handles parameter resolution from function arguments or command line inputs.
///
/// ```typ
/// #show: resume.with(
///   title: "Jane Doe",
///   email: "jane.doe@example.com",
///   phone: "(123) 456-7890",
///   links: "linkedin.com/in/janedoe, github.com/janedoe",
/// )
/// ```
///
/// A fully formatted resume document
/// -> content
#let resume(
  /// The name to display at the top of the resume
  /// -> string
  title: none,
  /// The document author metadata
  /// -> string
  author: none,
  /// Contact email address
  /// -> string
  email: none,
  /// Contact phone number
  /// -> string
  phone: none,
  /// Professional links (LinkedIn, GitHub, etc.)
  /// -> string
  links: none,
  /// The main content of the resume
  /// -> content
  body,
) = {
  // Get values from command line arguments or use provided parameters
  let defaults = (
    "title": "Your Name",
    "author": "Resume Owner",
    "email": "email\@example.com",
    "phone": "(123) 456-7890",
    "links": "linkedin.com/in/yourprofile",
  )

  let params = (
    "title": title,
    "author": author,
    "email": email,
    "phone": phone,
    "links": links,
  )

  let resolve(key) = {
    if params.at(key) != none {
      params.at(key)
    } else {
      sys.inputs.at(key, default: defaults.at(key))
    }
  }

  let title = resolve("title")
  let author = resolve("author")
  let email = resolve("email")
  let phone = resolve("phone")
  let links = resolve("links")

  // Document setup
  set document(author: author, title: "Resume", date: datetime.today())
  set text(size: 11pt, lang: "en")
  set page(margin: 2.5em)
  set par(justify: true)
  set align(left + top)

  // Header styling
  show heading: it => {
    set text(weight: 700)
    set block(below: 0.5em)
    it
  }

  // Header
  align(center)[
    #text(weight: 700, 1.75em, title)
    #v(0.5em)
    #text((phone, email, links).join(" | "))
    #v(1em)
  ]

  // Main content
  body
}

/// Creates a section heading with a horizontal divider
///
/// This function generates a formatted section header with a horizontal line
/// underneath to visually separate resume sections.
///
/// ```example
/// #section("Experience")
/// ```
///
/// A formatted section heading with a horizontal divider
/// -> content
#let section(
  /// The section title (will be displayed in uppercase)
  /// -> string
  title,
) = {
  heading(level: 2, text(weight: 700, title))
  line(length: 100%, stroke: 0.7pt)
  v(-3pt)
}

/// Creates a resume entry for experience, projects, or other achievements
///
/// This function formats a professional experience or project entry with
/// organization name, job title, location, dates, and bullet points.
///
/// ```example
/// #entry(
///    organization: "IBM X-Force Red",
///    title: "Pentest Intern",
///    location: "Austin, Texas",
///    date: "May-August 2023",
///    bullets: (
///      "Worked in team to develop a C2 system",
///      "Shadowed pentesters",
///    ),
/// )
/// ```
///
/// A formatted block with the experience entry details
/// -> content
#let entry(
  /// The company or organization name
  /// -> string
  organization: none,
  /// The position or job title
  /// -> string
  title: none,
  /// The geographical location
  /// -> string
  location: none,
  /// The time period (e.g., "May 2022 - Present")
  /// -> string
  date: none,
  /// An array of bullet point descriptions
  /// -> array
  bullets: (),
) = {
  block(spacing: 1em)[
    #grid(
      columns: (1fr, auto),
      rows: 2,
      row-gutter: 0.1em,
      inset: (top: 0.3em),
      text(weight: "bold", organization), align(right, date),
      (title, location).join(" | "),
    )

    #if bullets.len() > 0 {
      pad(
        left: 0.5em,
        list(..bullets.map(bullet => [#bullet])),
      )
    }
  ]
}

/// Creates a skills section with customizable skill categories
///
/// This function formats a skills section with multiple categories,
/// each containing a list of skills or technologies.
///
/// ```example
/// #skills-section((
///    "Programming Languages": "Python, Golang, Zig, C, Terraform",
///    "Tools & Frameworks": "Ghidra, Pwntools, AWS, WireShark",
/// ))
/// ```
///
/// A formatted block containing the skills categorized in a list
/// -> content
#let skills-section(
  /// A dictionary where keys are category names and values are the skills
  /// -> dictionary
  categories,
) = {
  block[
    #for (category, skills) in categories.pairs() [
      - #text(weight: "bold", category + ": ") #skills
    ]
  ]
}

/// Creates an education entry with institution, degree, and details
///
/// This function formats an education entry with university name,
/// degree information, dates, and optional additional details.
///
/// ```example
///#education(
///    institution: "The Ohio State University",
///    degree: "B.A. Computer and Information Science",
///    date: "2020 - 2025",
///    details: [Minor in Mathematics, GPA: 3.9],
/// )
/// ```
///
/// A formatted block with the education entry details
/// -> content
#let education(
  /// The school or university name
  /// -> string
  institution: none,
  /// The degree title or program of study
  /// -> string
  degree: none,
  /// The time period (e.g., "2020 - 2024")
  /// -> string
  date: none,
  /// Optional additional information (e.g., GPA, minors, honors)
  /// -> content
  details: none,
) = {
  block(spacing: 0.7em)[
    #grid(
      columns: (1fr, auto),
      rows: 2,
      row-gutter: 0.6em,
      text(weight: "bold", institution), align(right, date),
      text(style: "italic", degree), details,
    )
  ]
}
