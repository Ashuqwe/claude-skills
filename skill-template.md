# Claude Skill Creation Template

This document serves as both a **framework** and **prompt** for creating new Claude skills. Use this template to create consistent, high-quality skills that follow the patterns established in the `claude-skills` repository.

## How to Use This Template

1. **Copy this template** to a new file named `your-skill-name.md`
2. **Replace all placeholders** (text in `[brackets]`) with your skill-specific content
3. **Choose appropriate sections** - not all sections are required for every skill
4. **Save** in your skill directory: `skills/your-skill-name/your-skill-name.md`
5. **Test** by installing with `./install.sh your-skill-name` or `.\install.ps1 your-skill-name`

## Template Sections Quick Reference

| Section | Required | Purpose |
|---------|----------|---------|
| YAML Frontmatter | ✅ Yes | Standardized metadata for agent discovery |
| Skill Name & Role | ✅ Yes | Clear title and agent identity definition |
| When to Apply | ✅ Yes | Triggers for when the skill should activate |
| Core Competencies | ⚠️ Recommended | Key expertise areas of the skill |
| How to Use This Skill | ⚠️ For complex skills | Instructions for using rules/subsections |
| Skill Framework/Process | ⚠️ For process skills | Step-by-step methodology |
| Output Format | ⚠️ Recommended | Structure for consistent responses |
| Examples | ⚠️ Recommended | Concrete examples of skill usage |
| Tone & Behavior Rules | ⚠️ Optional | Guidelines for agent behavior |

---

## THE TEMPLATE

```markdown
---
name: [skill-name-in-kebab-case]
description: |
  [One-line description of what the skill does.]
  Use when: [list scenarios when the skill should activate], [user mentions specific keywords],
  or when user needs help with [specific task or domain].
license: MIT
metadata:
  author: [your-name-or-username]
  version: "1.0.0"
---

# [Skill Name in Title Case]

You are [an expert role description with years of experience or specific expertise]. Your role is to [primary function of the skill] following [industry standards/best practices/frameworks].

## When to Apply

Use this skill when:
- [Scenario 1: e.g., User needs to perform specific task]
- [Scenario 2: e.g., User mentions specific keyword or domain]
- [Scenario 3: e.g., User asks for help with particular type of problem]
- [Scenario 4: e.g., User provides input that requires structured analysis]
- [Scenario 5: e.g., The task involves specific methodology or framework]

## Core Competencies

- **[Competency 1]**: [Brief description of this expertise]
- **[Competency 2]**: [Brief description of this expertise]
- **[Competency 3]**: [Brief description of this expertise]
- **[Competency 4]**: [Brief description of this expertise]

[OPTIONAL: For skills with rules/subdirectories]
## How to Use This Skill

This skill contains **detailed rules** in the `rules/` directory, organized by category and priority.

### Quick Start

1. **Review [AGENTS.md](AGENTS.md)** for a complete compilation of all rules with examples
2. **Reference specific rules** from `rules/` directory for deep dives
3. **Follow priority order**: [Priority 1] → [Priority 2] → [Priority 3]

### Available Rules

| Priority | Rule | Description |
|----------|------|-------------|
| 🔴 CRITICAL | [Rule Name 1](rules/rule-name-1.md) | [Brief description of what this rule covers] |
| 🟡 HIGH | [Rule Name 2](rules/rule-name-2.md) | [Brief description of what this rule covers] |
| 🟢 MEDIUM | [Rule Name 3](rules/rule-name-3.md) | [Brief description of what this rule covers] |

## [Skill Domain] Process / Framework

[Choose one of these formats based on your skill type]

### Format A: Step-by-Step Process (for procedural skills)

#### 1. **[Step 1: Discovery/Preparation]**
- [Action item 1.1]
- [Action item 1.2]
- [Action item 1.3]

#### 2. **[Step 2: Analysis/Execution]**
- [Action item 2.1]
- [Action item 2.2]
- [Action item 2.3]

#### 3. **[Step 3: Synthesis/Output]**
- [Action item 3.1]
- [Action item 3.2]
- [Action item 3.3]

### Format B: Framework Components (for conceptual skills)

#### **Component 1: [Key Concept/Principle]**
[Explanation of this component and how to apply it]

#### **Component 2: [Key Concept/Principle]**
[Explanation of this component and how to apply it]

#### **Component 3: [Key Concept/Principle]**
[Explanation of this component and how to apply it]

### Format C: Methodologies (for analytical skills)

#### **Methodology 1: [Method Name]**
When to use: [Situations where this method is appropriate]
How to apply: [Step-by-step application]
Example: [Brief example]

#### **Methodology 2: [Method Name]**
When to use: [Situations where this method is appropriate]
How to apply: [Step-by-step application]
Example: [Brief example]

## Output Format

Structure responses using this template:

```markdown
## [Main Analysis/Result Title]

### Context
[Brief background or problem statement]

### Analysis/Process
[Step-by-step analysis, methodology application, or process followed]

### Key Findings/Results
- [Finding 1 with supporting detail]
- [Finding 2 with supporting detail]
- [Finding 3 with supporting detail]

### Recommendations/Next Steps
1. [Actionable recommendation 1]
2. [Actionable recommendation 2]
3. [Actionable recommendation 3]

### Additional Considerations
- [Important caveat, limitation, or additional context]
- [Potential risks or challenges to watch for]
```

[OR use a domain-specific format if appropriate]

## Examples

### Example 1: [Common Use Case]

**User Input:**
```
[Example user query or scenario]
```

**Skill Response:**
```markdown
## [Response title based on output format]

### Context
[How the skill interprets the context]

### Analysis/Process
[How the skill applies its methodology]

### Key Findings/Results
- [Example finding 1]
- [Example finding 2]

### Recommendations/Next Steps
1. [Example recommendation 1]
2. [Example recommendation 2]
```

### Example 2: [Another Common Use Case]

**User Input:**
```
[Different example user query or scenario]
```

**Skill Response:**
```markdown
[Follow same structure as Example 1]
```

## Tone & Behavior Rules

[OPTIONAL: Include if your skill requires specific behavioral constraints]

These guidelines ensure consistent, high-quality output:

- **Be Direct**: Start with the analysis/output, not preamble
- **Stay in Scope**: Focus only on [skill domain] - avoid unrelated advice
- **Use Evidence**: Support recommendations with [data/logic/best practices]
- **Be Practical**: Provide actionable, implementable guidance
- **Clarify When Needed**: Ask targeted questions if key information is missing
- **No Hallucination**: If data is insufficient, say so explicitly rather than inventing

## Common Patterns & Pitfalls

### Patterns to Follow
- [Pattern 1: e.g., Always start with understanding the context]
- [Pattern 2: e.g., Validate assumptions before proceeding]
- [Pattern 3: e.g., Provide multiple options when appropriate]

### Pitfalls to Avoid
- [Pitfall 1: e.g., Jumping to conclusions without analysis]
- [Pitfall 2: e.g., Overcomplicating simple problems]
- [Pitfall 3: e.g., Ignoring edge cases]

---

## Template Usage Examples

### Simple Skill Example (like `debugger`):
- Focus on **When to Apply**, **Process**, and **Output Format**
- Include practical **Examples**
- Skip complex rules/subdirectories

### Medium Complexity Skill (like `data-analyst`):
- Include **Core Competencies**
- Add domain-specific **Framework/Process**
- Provide structured **Output Format**
- Include multiple **Examples**

### Complex Skill (like `code-reviewer` or `ux-designer`):
- Add **How to Use This Skill** section
- Reference **rules/** subdirectory
- Include comprehensive **Process/Framework**
- Detailed **Output Format** with examples
- **Tone & Behavior Rules** for consistency

## Creating Supporting Files

### For Rules-Based Skills:
1. Create `rules/` subdirectory
2. Add individual rule files (e.g., `rules/security-sql-injection.md`)
3. Create `AGENTS.md` compiling all rules with examples

### For Skills with Additional Resources:
1. Create `assets/` directory for templates, examples, etc.
2. Create `references/` directory for supporting documentation
3. Ensure install scripts copy all necessary files

### README.md (Optional but Recommended):
Create a `README.md` in your skill directory with:
- Skill description and purpose
- Installation instructions
- Usage examples
- Input/output specifications
- Any prerequisites or dependencies

## Testing Your Skill

1. **Install locally**: `./install.sh [your-skill-name]` or `.\install.ps1 [your-skill-name]`
2. **Restart Claude Code** to load the new skill
3. **Test with example queries** from your skill documentation
4. **Verify output format** matches your specifications
5. **Refine based on results** - update skill as needed

## Adding to the Repository

1. **Add skill entry** to `README.md` in the "Available Skills" table
2. **Update install scripts** if your skill has special installation requirements
3. **Commit and push** your new skill

---

## Quick Checklist

- [ ] YAML frontmatter with `name`, `description` (including "Use when:"), `license`, `metadata`
- [ ] Clear title and role definition
- [ ] Comprehensive "When to Apply" section
- [ ] Core competencies or expertise areas
- [ ] Process/framework appropriate for skill type
- [ ] Structured output format
- [ ] Practical examples
- [ ] Skill name in kebab-case (lowercase with hyphens)
- [ ] File named `skill-name.md` matching frontmatter `name`
- [ ] Installs correctly with `./install.sh skill-name`

---

**Remember**: The best skills are specific, actionable, and follow consistent patterns. Start simple, test thoroughly, and refine based on real usage.
```

---

## Using This Template with Claude Code

You can use this template directly in Claude Code:

1. **Load this template** as context
2. **Ask Claude** to help you create a new skill by filling in the placeholders
3. **Copy the result** to your skill directory
4. **Test and refine** as needed

Example prompt:
```
Using the skill template, help me create a [skill domain] skill called [skill-name].
The skill should help users with [primary function].
Key areas of expertise include: [list competencies].
Common use cases are: [list scenarios].
```

---

**Template Version**: 1.0.0
**Based on analysis of**: feature-story, data-analyst, content-creator, debugger, code-reviewer, ux-designer
**Last Updated**: 2026-03-16