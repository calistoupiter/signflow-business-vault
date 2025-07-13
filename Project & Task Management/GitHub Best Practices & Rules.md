---
title: GitHub Best Practices & Rules for SignFlow Business
version: 1.4.0
created: 2025-01-16
updated: 2025-01-16
last_modified: 2025-01-16 16:15
author: Vladimir Pavlov
tags:
  - github
  - project-management
  - best-practices
  - workflow
---

# GitHub Best Practices & Rules for SignFlow Business

## Overview
This document establishes standardized rules and best practices for managing SignFlow business tasks using GitHub Issues, Labels, and Projects. These guidelines ensure consistency, professionalism, and efficient project tracking, while keeping it simple.

## Issue Creation Guidelines

### Issue Title Format
Keep titles simple and descriptive - just a clear summary of the task or issue. No special formatting or prefixes required.

**Examples:**
- `Setup PMax campaign for ABC Signs`
- `Send performance report to Johnson Signs`
- `Analyze competitor keywords for LED sign market`
- `Configure GoHighLevel automation for new client`

### Issue Description Guidelines
Keep descriptions flexible and context-appropriate. While you are allowed to paraphrase poorly formulated tasks, don't deviate too much from the original word choice for the sake of easier recall of the issue's matter. Only add structured content when it can be inferred from the task context:

- Add checklists for multi-step tasks when helpful
- Include relevant details that provide necessary context
- Mention deadlines if time-sensitive
- Keep it practical, not rigid

## Label System

### Simple Label Strategy

**Default GitHub Labels**
Keep and use the standard GitHub labels:
- `bug` - Something isn't working
- `documentation` - Improvements or additions to documentation
- `duplicate` - This issue or pull request already exists
- `enhancement` - New feature or request
- `good first issue` - Good for newcomers
- `help wanted` - Extra attention is needed
- `invalid` - This doesn't seem right
- `question` - Further information is requested
- `wontfix` - This will not be worked on

**Client Labels**
Create labels using actual client company names:
- `ABC Signs` - Example client name
- `Signify Company` - Example client name

**Client Reference**: See [[SignFlow Clients List]] for complete client directory with owner names, locations, and company details.

### Label Usage Rules
1. **Add client company name labels** for client-specific tasks
2. **Creating new labels is not allowed except when new client is added** - choose applicable fitting labels for issues
3. **Client Identification**: If a client is mentioned by owner name or city (e.g., "Edgar", "Houston client") or any other hint, refer to the [[SignFlow Clients List]] to identify the correct company name for labeling

## Project Management Workflow

### Current Setup
- **Project Board**: "SignFlow Clients" - https://github.com/users/calistoupiter/projects/1
- Use GitHub Issues as cards on the project board view
- Create issues for tasks and track progress through the board
- Close issues when tasks are completed

### Project Board Structure
The project uses a 6-column workflow:

- **Ideas** - Vague concepts, contemplation items, or tasks with no clear action plan
- **Grooming** - Ideas set for discussion and planning
- **Todo** - Clear tasks ready to be executed (research, specific actions, etc.)
- **In Progress** - Tasks currently being worked on
- **Done** - Completed tasks
- **Ideas Graveyard** - Rejected or obsolete ideas/tasks

### Task Organization
Keep organization simple and flexible:
- Create issues for all tasks
- Use appropriate labels (client names)
- Move issues through the project board as work progresses
- Close completed issues

### Future Enhancements
- Plan to utilize roadmap/timeline view for better project visualization
- May add more structured workflow as the business grows

## AI Assistant Task Creation Protocol

### Automatic Issue Creation
When Vladimir messages a new task, the AI assistant should:

1. **Create GitHub Issue** automatically if >50% certain about the appropriate column
2. **Column Selection Logic**:
   - **Ideas**: Vague concepts, contemplation items, no clear action plan
   - **Todo**: Clear tasks to be done (research, specific actions, etc.)
   - Rarely place new tasks in other columns initially
3. **Issue Details**:
   - Use original task description as title (keep informal/original language)
   - Add appropriate client label if identifiable (refer to [[SignFlow Clients List]] for client lookup by owner name or location)
   - Include context in description when helpful
4. **Response**: Always confirm the issue created and which column it was placed in

### Task Inference Guidelines
- Infer from the message context whether it belongs in Ideas or Todo
- Ideas: brainstorming, "what if", unclear requirements, contemplation
- Todo: actionable tasks with clear objectives, research assignments, specific deliverables
- Use [[SignFlow Clients List]] to identify clients when mentioned by owner name, city, or specialization
- Ask for clarification only if client/project context is unclear after checking the client list

## GitHub Issue Creation Workflow

### Technical Constants
For reliable issue creation and project board management, use these exact identifiers:

**SignFlow Project Details:**
- Project ID: `PVT_kwHOBw8n6s4A9Dq2`
- Project URL: https://github.com/users/calistoupiter/projects/1
- Repository: `calistoupiter/GitHubVault`

**Status Field Configuration:**
- Status Field ID: `PVTSSF_lAHOBw8n6s4A9Dq2zgw35rU`
- Column Values:
  - Ideas: `741ff89c`
  - Grooming: `e9e227bb`
  - Todo: `f75ad846`
  - In Progress: `47fc9ee4`
  - Done: `98236657`
  - Ideas Graveyard: `94f47f9b`

### Standardized Creation Process

**Step 1: Create GitHub Issue**
- Create issue in `calistoupiter/GitHubVault` repository
- Use clear, descriptive title (maintain original language/intent)
- Include context and scope in description
- Add relevant labels (client names + appropriate default labels)

**Step 2: Add Issue to Project Board**
- Add the newly created issue to the SignFlow Clients project
- Use project ID: `PVT_kwHOBw8n6s4A9Dq2`
- Issue will initially appear in temporary/default column

**Step 3: Set Status Column**
- Immediately set the Status field to move issue to proper column
- Use Status Field ID: `PVTSSF_lAHOBw8n6s4A9Dq2zgw35rU`
- Apply appropriate column value based on task type:
  - **Ideas** (`741ff89c`) - Vague concepts, contemplation
  - **Todo** (`f75ad846`) - Clear actionable tasks

### Error Prevention
- **Validate IDs**: Ensure correct project ID and field ID are used
- **Sequential Process**: Complete all three steps in order
- **Immediate Status Setting**: Don't leave issues in temporary column
- **Confirmation**: Verify issue appears in correct column after creation

### Troubleshooting
If issue creation fails:
1. Check that repository name and owner are correct
2. Verify project ID matches the SignFlow Clients project
3. Confirm Status field ID and column values are accurate
4. Retry the status setting step if issue appears in wrong column

## Key Principles

### Keep It Simple
- Use clear, descriptive issue titles not refraining from using informal or original prompt lingo
- Add context to descriptions when helpful
- Use appropriate labels (client names + pre-existing labels from the label list)
- Focus on getting work done, not process complexity
- Make sure not to change original idea behind the task prompt so that your task phrasing's logic is ultimately the same as what I stated in my message

### Consistency Guidelines
- If needed, include client name in issue title for client-specific work
- Close completed issues promptly
- Keep the project board current

## Future Considerations
- Implement roadmap/timeline view when needed
- Add more structure as the business scales
- Evaluate workflow effectiveness periodically

---

## Version History

### v1.4.0 - 2025-01-16
- **Major**: Added GitHub Issue Creation Workflow section
- **Content**: Documented technical constants (project ID, field IDs, column values)
- **Enhancement**: Added standardized 3-step creation process (Create Issue → Add to Project → Set Status)
- **Improvement**: Added error prevention and troubleshooting guidelines
- **Fix**: Addresses issue where items get stuck in temporary column during creation

### v1.3.0 - 2025-01-16
- **Major**: Added client reference system with SignFlow Clients List
- **Enhancement**: Created [[SignFlow Clients List]] for client lookup by owner name, city, or specialization
- **Content**: Enhanced label usage rules with client identification guidelines
- **Workflow**: Updated AI Assistant protocol to reference client list for accurate labeling

### v1.2.0 - 2025-01-16
- **Major**: Added AI Assistant Task Creation Protocol
- **Content**: Defined automatic issue creation workflow with column selection logic
- **Workflow**: Specified project board structure and task inference guidelines
- **Enhancement**: Added SignFlow Clients project board details and 6-column workflow

### v1.1.0 - 2025-01-16
- **Major**: Simplified guidelines based on user feedback
- **Content**: Removed complex label system, simplified to default GitHub labels + client names
- **Workflow**: Streamlined to basic project board usage with future roadmap consideration
- **Philosophy**: Focused on practicality over rigid structure

### v1.0.0 - 2025-01-16
- **Major**: Initial document creation with comprehensive guidelines
- **Content**: Established issue formats, label system, and workflow processes
- **Structure**: Created standardized templates and quality checklists
--- 