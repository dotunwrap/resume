#import "template.typ": *

#show: resume.with()

#section("Education")

#education(
  institution: "The Ohio State University",
  degree: "Bachelor of Arts in Computer and Information Science",
  date: "2020 - 2025",
)

#section("Experience")

#entry(
  organization: "IBM X-Force Red",
  title: "Pentest Intern",
  location: "Austin, Texas",
  date: "May-August 2024",
  bullets: (
    [Engineered a stealthy LDAP tool in python, #link("https://github.com/logangoins/soapy", "soapy"), building eight communication layers and authentication mechanisms from the ground up. Developed a stand alone tool compatible with the well known impacket tool set.],
    [Worked with senior pentesters during live engagements to identify and exploit vulnerabilities.],
  ),
)

#entry(
  organization: "IBM X-Force Red",
  title: "Pentest Intern",
  location: "Austin, Texas",
  date: "May-August 2023",
  bullets: (
    [Worked in team to develop a C2 system using ETW for opportunistic traffic capture on Windows devices, enabling covert communication without direct socket use. Presented a proof of concept to IBM executives.],
    [Shadowed experienced pentesters on app and internal network penetration tests, gaining valuable insights.],
    [Completed series of expert-led, training programs focused on network penetration, web application security, cryptography, social engineering, and mobile application security.],
  ),
)

#entry(
  organization: "The Ohio State University Athletics Department",
  title: "IT Student Intern",
  location: "Columbus, Ohio",
  date: "May 2022 - August 2022",
  bullets: (
    [Developed processes to track and document vulnerability remediation across four thousand devices.],
    [Worked with the myriad of tools used to secure and manage large enterprise environments including CrowdStrike, Qualys, and the SolarWinds suite.],
  ),
)

#section("Extracurricular")

#entry(
  organization: "OSU Cyber Security Club",
  title: "Vice President / Member",
  location: "Columbus, Ohio",
  date: "August 2020 - Present",
  bullets: (
    [Member of the winning RIT ISTS 2022 team, an attack-defense cybersecurity competition. Competed in ISTS from 2022 to 2024.],
    [Led meetings, managed AWS infrastructure using Terraform, and coordinated BuckeyeCTF, organizing participation for thousands annually.],
    [Participated in the Cyber Truck Challenge 2022, working in a six-person team to map and attack heavy truck engine control units, communication networks, and cyber-physical systems. Presented findings and vulnerabilities to OEMs.],
    [Collaborated with the Truck Cybersecurity Research Group to develop attack methodologies for Engine Control Units.],
    [Designed Python network support for J1939 intelligent fuzzers and J1939 Transport Protocol.],
  ),
)

#entry(
  organization: "US National Team",
  title: "Athletics Experience, Target Pistol Shooting",
  location: "OSU Varsity Athlete",
  date: "August 2016 - 2024",
  bullets: (
    [2020 Tokyo Olympian, Rapid Fire Pistol],
    [Dedicated 20+ hours a week to training and practice while maintaining a full academic course load.],
    [2021, 2022, 2023, 2024 All-American, OSU Scholar Athlete.],
    [2018 CAT Games Mexico, 2018 South Korea World Championship team, 2019 Pan-American Games Lima.],
  ),
)

#section("Skills")

#skills-section((
  "Programming Languages": "Python, Golang, Zig, C, Terraform",
  "Tools & Frameworks": "Ghidra, Pwntools, AWS, WireShark",
))
