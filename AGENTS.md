# Using AI Coding Agents for This Challenge

## Our Philosophy

We **encourage** you to use AI coding agents (Claude, ChatGPT, GitHub Copilot, etc.) to help solve this challenge. Modern software development increasingly involves working with AI tools, and we want to see how you use them effectively.

## Required: Submit Your Complete Interaction History

**You must submit a complete record of all your interactions with AI coding agents as part of your solution.**

We will use this record to understand:
- How you break down problems
- How you communicate technical requirements
- How you debug and iterate
- How you reason about code quality and architecture
- Your ability to evaluate and refine AI-generated code

## Submission Requirements

### 1. Create an `AI_CONVERSATION.md` File

Create a file named `AI_CONVERSATION.md` in the root of your repository that contains:

- **All prompts** you sent to any AI coding agent
- **All responses** from the AI agents
- **Timestamps** for each interaction (in ISO 8601 format: `YYYY-MM-DD HH:MM:SS`)
- **Which AI tool** you used for each interaction (Claude, ChatGPT, Copilot, etc.)
- **Git commits** made after each significant interaction (include commit hash and message)

### 2. Format

Use the following format:

```markdown
## [YYYY-MM-DD HH:MM:SS] - [Tool Name]

### User Prompt
[Your exact prompt here]

### AI Response
[The complete AI response here]

### Actions Taken
- [Describe what you did with this response]
- [Git commit: `abc1234` - "Commit message"]

---
```

### 3. Example Entry

```markdown
## [2025-11-20 14:32:15] - Claude

### User Prompt
I need to create a table view that displays a list of users fetched from an API.
The endpoint is GET /api/users and returns JSON with an array of user objects
containing id, name, and email fields. How should I structure this in Swift?

### AI Response
I'll help you create a table view for displaying users. Here's a recommended approach:

1. Create a User model...
[full response]

### Actions Taken
- Created User.swift model
- Created UserTableViewCell.swift
- Updated ViewController.swift with table view delegate methods
- Git commit: `7a8b9c2` - "Add user table view with API integration"

---
```

## What to Include

### ✅ DO Include:
- Initial planning and architecture discussions
- Code generation requests
- Debugging help and error resolution
- Refactoring discussions
- Questions about best practices
- Design pattern discussions
- All iterations and revisions
- Failed approaches and how you pivoted
- Code review requests to the AI

### ❌ DO NOT Exclude:
- "Embarrassing" questions (we want to see authentic problem-solving)
- Mistakes and corrections (these show learning)
- Multiple attempts at the same problem (iteration is valuable)

## Tips for Effective AI Collaboration

While we don't penalize any particular approach, here are some practices that generally lead to better outcomes:

- **Be specific**: Provide context about your goals and constraints
- **Iterate**: Don't accept the first response blindly; ask follow-up questions
- **Verify**: Test the code and ask about potential issues
- **Understand**: Ask the AI to explain code you don't fully understand
- **Integrate**: Show how you integrated AI suggestions with your own code

## How We Evaluate

Your AI conversation history helps us understand:

1. **Problem-solving approach**: How you break down complex problems
2. **Communication clarity**: How well you articulate technical requirements
3. **Critical thinking**: How you evaluate and adapt AI suggestions
4. **Code comprehension**: Whether you understand the code you're submitting
5. **Iterative refinement**: How you improve solutions over time

## Technical Setup

### For Claude Code Users

Claude Code automatically tracks conversation history. To export:
1. Your conversation is already in markdown format
2. Copy the entire conversation with timestamps
3. Paste into `AI_CONVERSATION.md`
4. Add git commit references where applicable

### For ChatGPT Users

1. Use the "Share" feature to export your conversation
2. Copy the shared link and the full conversation text
3. Reformat into the template above with timestamps
4. Add git commit references where applicable

### For GitHub Copilot Users

Since Copilot interactions are inline:
1. Document each significant Copilot suggestion you accepted
2. Include the prompt (comment you wrote) and the generated code
3. Note when you modified Copilot's suggestions

### For Other Tools

Adapt the format as needed, ensuring you capture:
- What you asked
- What the AI provided
- What you did with it
- When it happened

## Questions?

If you're unsure whether something should be included, include it. We prefer more information over less.

Good luck, and happy coding!
