# Claude Skill Template (Prompt Version)

Use this template to create new Claude skills. Copy the template below, replace all `[placeholders]` with your content, and save as `skills/[skill-name]/[skill-name].md`.

**Quick Start**: Answer these questions first, then fill the template:
1. **Skill Name**: What will users type? (Use kebab-case: `my-skill-name`)
2. **Primary Function**: What does the skill help users do?
3. **Trigger Scenarios**: When should Claude activate this skill?
4. **Core Expertise**: What knowledge areas does this skill cover?
5. **Output Structure**: How should responses be formatted?

---

```markdown
---
name: [skill-name-in-kebab-case]
description: |
  [One-line description of what the skill does.]
  Use when: [scenario 1], [scenario 2], [scenario 3], or when user mentions [keyword 1], [keyword 2], [keyword 3].
license: MIT
metadata:
  author: [your-name]
  version: "1.0.0"
---

# [Skill Name in Title Case]

You are [expert role description]. Your role is to [primary function] following [standards/frameworks].

## When to Apply

Use this skill when:
- [User needs to perform specific task 1]
- [User mentions specific keyword or domain 2]
- [User asks for help with particular problem type 3]
- [The task involves specific methodology 4]
- [Scenario 5]

## Core Competencies

- **[Competency 1]**: [Brief description]
- **[Competency 2]**: [Brief description]
- **[Competency 3]**: [Brief description]
- **[Competency 4]**: [Brief description]

[OPTIONAL SECTION - For complex skills with rules]
## How to Use This Skill

This skill contains **detailed rules** in the `rules/` directory.

### Quick Start

1. **Review [AGENTS.md](AGENTS.md)** for all rules with examples
2. **Reference specific rules** from `rules/` directory
3. **Follow priority order**: [Priority 1] → [Priority 2] → [Priority 3]

## [Skill Domain] Process / Framework

### Format A: Step-by-Step Process (for procedural skills)

#### 1. **[Step 1: Preparation/Analysis]**
- [Action 1.1]
- [Action 1.2]
- [Action 1.3]

#### 2. **[Step 2: Execution/Synthesis]**
- [Action 2.1]
- [Action 2.2]
- [Action 2.3]

#### 3. **[Step 3: Output/Review]**
- [Action 3.1]
- [Action 3.2]
- [Action 3.3]

### Format B: Framework Components (for conceptual skills)

#### **Component 1: [Key Concept]**
[Explanation and application]

#### **Component 2: [Key Concept]**
[Explanation and application]

#### **Component 3: [Key Concept]**
[Explanation and application]

## Output Format

Structure responses as:

```markdown
## [Analysis Title]

### Context
[Problem statement or background]

### Process/Methodology
[How you approached the analysis]

### Findings/Results
- [Finding 1 with evidence]
- [Finding 2 with evidence]
- [Finding 3 with evidence]

### Recommendations
1. [Actionable recommendation 1]
2. [Actionable recommendation 2]
3. [Actionable recommendation 3]

### Notes/Caveats
- [Important consideration 1]
- [Important consideration 2]
```

## Examples

### Example 1: [Common Scenario]

**User Input:**
```
[Example query]
```

**Skill Response:**
```markdown
## [Response Title]

### Context
[Interpreted context]

### Process/Methodology
[Applied methodology]

### Findings/Results
- [Result 1]
- [Result 2]

### Recommendations
1. [Recommendation 1]
2. [Recommendation 2]
```

### Example 2: [Another Scenario]

**User Input:**
```
[Different example]
```

**Skill Response:**
```markdown
[Follow same structure]
```

## Tone & Behavior Rules

[OPTIONAL - Include for consistency]

- **Be Direct**: Start with output, not preamble
- **Stay in Scope**: Focus only on [domain]
- **Use Evidence**: Support with [data/best practices]
- **Be Practical**: Provide actionable guidance
- **Clarify When Needed**: Ask targeted questions if information is missing
- **No Hallucination**: If data is insufficient, say so explicitly
```

---

## Template Completion Checklist

- [ ] **YAML Frontmatter**: `name`, `description` with "Use when:", `license`, `metadata`
- [ ] **Skill Identity**: Clear title and expert role definition
- [ ] **When to Apply**: 3-5 specific trigger scenarios
- [ ] **Core Competencies**: 3-5 key expertise areas
- [ ] **Process/Framework**: Appropriate for skill type (choose Format A or B)
- [ ] **Output Format**: Clear structure for responses
- [ ] **Examples**: 1-2 concrete usage examples
- [ ] **File Name**: `skill-name.md` matching frontmatter `name`

## Skill Complexity Guide

**Simple Skill** (like `debugger`):
- Focus on **Process** and **Output Format**
- Include practical **Examples**
- Skip optional sections

**Medium Skill** (like `data-analyst`):
- Include **Core Competencies**
- Add domain-specific **Framework**
- Provide structured **Output Format**

**Complex Skill** (like `code-reviewer`):
- Add **How to Use This Skill** section
- Reference `rules/` subdirectory
- Include **Tone & Behavior Rules**

## Next Steps

1. **Save** as `skills/[your-skill-name]/[your-skill-name].md`
2. **Test** with `./install.sh [your-skill-name]` (macOS/Linux) or `.\install.ps1 [your-skill-name]` (Windows)
3. **Restart Claude Code** and test your skill
4. **Add to README.md** in the Available Skills table
5. **Commit and push** to repository

---

**Prompt for Claude**: "Help me create a [domain] skill using the template. The skill should help users [primary function]. Key expertise areas: [list]. Common scenarios: [list]. Use kebab-case name: [skill-name]."