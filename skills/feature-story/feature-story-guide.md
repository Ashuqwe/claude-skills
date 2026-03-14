# /feature-story — Quick Reference Guide

---

## How to Invoke

Type `/feature-story` in any Claude Code session.

The skill runs through **5 steps** before generating output — see the flow below.

---

## Invocation Flow

| Step | What Happens |
|---|---|
| **Step 0 — Session Check** | Skill checks for a previous session and loads any past feedback patterns. If a session exists, asks: Continue / New feature / Start fresh. |
| **Step 1 — Gather inputs** | Skill asks for your current role, target role, resume theme, raw context, and optional JD — all in one message. |
| **Step 2 — Clarifying questions** | Skill asks up to 3 targeted questions if key data is missing (metrics, ownership, before/after). Say *"that's all I have"* to skip. |
| **Step 3 — Context summary** | Skill presents what it understood — problem, what was built, your role, metrics, and gaps. Confirm or edit before output is generated. |
| **Step 4 — Feature Brief** | Skill asks: *"Include a Feature Brief (PM documentation)? Yes / No."* |
| **Step 5 — Output** | Full output generated across all sections. |

---

## Inputs (Step 1 — What to Provide)

| Input | Required | What to Provide |
|---|---|---|
| **Current Role** | Yes | Your present job title + company type. e.g., *"Senior PM at a mid-size OTA"* |
| **Target Role** | Yes | The role you're applying to. e.g., *"GPM at a fintech scale-up"* |
| **Resume Theme** | Yes | Your CV's narrative angle. e.g., *"Growth & Monetization PM"*, *"Platform & Tech PM"* |
| **Raw Project Context** | Yes | Anything: written notes, data points, experiment results, screenshots, bullet dumps |
| **Job Description (JD)** | Optional | Paste the full JD for role-specific ATS keyword targeting. Skip to use the built-in keyword bank. |

---

## Output Sections

| Section | Always Shown | What It Contains |
|---|---|---|
| **Section 1 — Feature Brief** | Only if requested | Structured PM doc: Problem, What Was Built, Stakeholders, Metrics & Outcomes |
| **Section 2 — CV Story** | Yes | Context · What I Did · Impact · CV Options · ATS Keywords Used |
| **Section 3 — CV Pointers** | Yes | 4–6 ready-to-paste CV bullets, each with Tonality + Best For + Why Use This |
| **Section 4 — Interview Prep** | Yes | Key Learning + 2–3 behavioral questions this story answers |
| **Section 5 — Learnings** | Yes | What worked · What to do differently · Broader insight |

---

## CV Option Angles (Section 2)

The skill picks 2–3 of these based on available data:

| Angle | Leads With |
|---|---|
| Revenue & Monetization | Financial impact, margin, revenue metrics |
| Platform & Tech | System design, rule engines, scalability |
| User & Growth | Conversion lift, adoption, funnel improvement |
| Experimentation & Insights | A/B test design, hypothesis, data-driven decisions |

---

## CV Pointer Tonalities (Section 3)

| Tonality | Signals | Best For |
|---|---|---|
| **Strategic** | Product vision, business judgment, leadership | Senior / Lead / Director roles |
| **Execution** | Hands-on delivery, technical depth, ownership | IC PM / Senior PM roles |
| **Data-driven** | Analytical rigor, hypothesis-led thinking | Growth / Analytics / Consumer PM roles |
| **Cross-functional** | Collaboration, influence without authority | Scaled orgs, matrixed environments |

---

## ATS Keyword Behaviour

- **With JD**: Keywords extracted from JD, used in CV output, new ones silently added to the keyword bank.
- **Without JD**: Falls back to built-in bank at `~/.claude/commands/pm-story-keywords.md`
- **ATS Keywords Used** callout in Section 2 shows which keywords were used and their source (*From JD* / *From Bank*).

---

## Seniority Calibration (Auto)

The skill adjusts bullet framing based on your role gap:

| Scenario | Bullet Bias |
|---|---|
| Applying for a more senior role | More Strategic + Cross-functional bullets |
| Lateral move | Balanced Execution + Impact bullets |
| Applying for a specialist/IC role | More Execution + Data-driven bullets |

---

## Session Memory

- After every run, the skill silently saves a session to `~/.claude/commands/feature-story-session.md`
- On the next invoke, it shows the last session and asks if you want to continue, share a new feature, or start fresh
- Session stores: feature name, date, your roles, resume theme, and a 2–3 sentence summary

---

## Feature Stories File

- Every completed output is **automatically appended** to `~/Documents/feature-stories.md`
- The file is yours — open and edit it directly anytime
- Each entry is separated by a header: `## [Feature Name] — [Date]`
- If you edit a story directly in the file, the skill will not overwrite your changes — it only appends new entries

---

## Feedback & Improvement

- After every output, the skill asks: *"Rate this output 1–5. Anything specific to improve? (or skip)"*
- Feedback is saved to `~/.claude/commands/feature-story-feedback.md`
- On the next invocation, the skill silently reads past feedback and applies recurring patterns as calibration adjustments
- You can also edit the feedback file directly to add or remove notes

---

## Tips

- The more data you provide (numbers, %, ₹, user counts), the stronger the CV pointers.
- If a metric is missing, the skill inserts `[insert metric]` — fill it in before using on your CV.
- Paste the JD whenever possible — role-specific ATS targeting is significantly more effective than the generic bank.
- You can run the skill multiple times on the same feature with a different resume theme or target role to get a different angle.
- At Step 3 (Context Summary), edit aggressively — the quality of the summary directly determines the quality of the CV output.
