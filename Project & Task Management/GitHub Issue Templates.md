---
title: GitHub Issue Templates for SignFlow
version: 1.0.0
created: 2025-01-25
updated: 2025-01-25
tags: [signflow, github, templates, workflow]
---

# GitHub Issue Templates for SignFlow

## Template Files Structure

Create these files in your repository under `.github/ISSUE_TEMPLATE/`:

### 1. Google Ads Task Template
**File:** `.github/ISSUE_TEMPLATE/google-ads-task.md`

```markdown
---
name: Google Ads Task
about: Create a task for Google Ads optimization, setup, or changes
title: '[ADS] '
labels: ['ads', 'priority:medium']
assignees: ''
---

## Client
- [ ] Edgar
- [ ] Moises  
- [ ] Tony
- [ ] UNI Signs
- [ ] Nelson
- [ ] Alicia
- [ ] Mansur
- [ ] Artur

## Task Type
- [ ] Campaign Setup
- [ ] Keyword Research
- [ ] Ad Copy Creation
- [ ] Landing Page Setup
- [ ] Tracking Setup
- [ ] Optimization
- [ ] Reporting
- [ ] Other: ___________

## Description
**What needs to be done:**


**Context/Background:**


**Success Criteria:**


## Campaign Details
- **Campaign Name:** 
- **Ad Groups Affected:** 
- **Budget:** 
- **Target Locations:** 
- **Keywords:** 

## Checklist
- [ ] Research completed
- [ ] Changes implemented
- [ ] Tracking verified
- [ ] Client notified
- [ ] Performance monitored

## Notes
**Additional context, dependencies, or considerations:**

```

### 2. Landing Page Task Template
**File:** `.github/ISSUE_TEMPLATE/landing-page-task.md`

```markdown
---
name: Landing Page Task
about: Create a task for landing page creation, optimization, or updates
title: '[LP] '
labels: ['landing-page', 'priority:medium']
assignees: ''
---

## Client
- [ ] Edgar
- [ ] Moises  
- [ ] Tony
- [ ] UNI Signs
- [ ] Nelson
- [ ] Alicia
- [ ] Mansur
- [ ] Artur

## Task Type
- [ ] New LP Creation
- [ ] Copy Updates
- [ ] Design Changes
- [ ] Tracking Setup
- [ ] Split Testing
- [ ] Performance Optimization
- [ ] Mobile Optimization
- [ ] Other: ___________

## Description
**What needs to be done:**


**Current Issues/Goals:**


**Expected Outcome:**


## Page Details
- **Page URL:** 
- **Campaign:** 
- **Target Audience:** 
- **Key Message:** 
- **Call to Action:** 

## Checklist
- [ ] Copy written/updated
- [ ] Design implemented
- [ ] Mobile responsive
- [ ] Tracking pixels added
- [ ] Speed optimized
- [ ] Client approved
- [ ] Live and tested

## Notes
**Additional context, dependencies, or considerations:**

```

### 3. GHL Setup Task Template
**File:** `.github/ISSUE_TEMPLATE/ghl-setup-task.md`

```markdown
---
name: GHL Setup Task
about: Create a task for GoHighLevel setup, workflow, or automation
title: '[GHL] '
labels: ['ghl-setup', 'priority:medium']
assignees: ''
---

## Client
- [ ] Edgar
- [ ] Moises  
- [ ] Tony
- [ ] UNI Signs
- [ ] Nelson
- [ ] Alicia
- [ ] Mansur
- [ ] Artur

## Task Type
- [ ] Account Setup
- [ ] Workflow Creation
- [ ] Automation Setup
- [ ] Integration Setup
- [ ] Template Creation
- [ ] Training/Documentation
- [ ] Troubleshooting
- [ ] Other: ___________

## Description
**What needs to be done:**


**Current Setup:**


**Desired Outcome:**


## Setup Details
- **Account:** 
- **Workflow Name:** 
- **Triggers:** 
- **Actions:** 
- **Integrations:** 

## Checklist
- [ ] Account access verified
- [ ] Workflow designed
- [ ] Automation configured
- [ ] Testing completed
- [ ] Client trained
- [ ] Documentation updated

## Notes
**Additional context, dependencies, or considerations:**

```

### 4. Video Production Task Template
**File:** `.github/ISSUE_TEMPLATE/video-task.md`

```markdown
---
name: Video Production Task
about: Create a task for video creation, editing, or optimization
title: '[VIDEO] '
labels: ['video', 'priority:medium']
assignees: ''
---

## Client
- [ ] Edgar
- [ ] Moises  
- [ ] Tony
- [ ] UNI Signs
- [ ] Nelson
- [ ] Alicia
- [ ] Mansur
- [ ] Artur

## Video Type
- [ ] Testimonial
- [ ] Ad Creative
- [ ] Tutorial
- [ ] Voiceover
- [ ] Demo
- [ ] Other: ___________

## Description
**What needs to be created:**


**Purpose/Goal:**


**Target Audience:**


## Video Details
- **Length:** 
- **Format:** 
- **Resolution:** 
- **Deadline:** 
- **Delivery Method:** 

## Checklist
- [ ] Script written
- [ ] Video recorded
- [ ] Edited
- [ ] Reviewed
- [ ] Client approved
- [ ] Delivered/Uploaded

## Notes
**Additional context, dependencies, or considerations:**

```

### 5. Client Communication Task Template
**File:** `.github/ISSUE_TEMPLATE/client-communication-task.md`

```markdown
---
name: Client Communication Task
about: Create a task for client calls, emails, or follow-ups
title: '[CLIENT] '
labels: ['client-communication', 'priority:medium']
assignees: ''
---

## Client
- [ ] Edgar
- [ ] Moises  
- [ ] Tony
- [ ] UNI Signs
- [ ] Nelson
- [ ] Alicia
- [ ] Mansur
- [ ] Artur

## Communication Type
- [ ] Check-in Call
- [ ] Performance Review
- [ ] Strategy Session
- [ ] Problem Resolution
- [ ] Email Follow-up
- [ ] Training Session
- [ ] Other: ___________

## Description
**What needs to be communicated:**


**Context/Background:**


**Expected Outcome:**


## Communication Details
- **Method:** (Call/Email/Message)
- **Scheduled Date:** 
- **Duration:** 
- **Agenda Items:** 

## Checklist
- [ ] Meeting scheduled
- [ ] Agenda prepared
- [ ] Materials ready
- [ ] Meeting conducted
- [ ] Follow-up actions identified
- [ ] Summary sent to client

## Notes
**Additional context, dependencies, or considerations:**

```

### 6. General Task Template
**File:** `.github/ISSUE_TEMPLATE/general-task.md`

```markdown
---
name: General Task
about: Create a general task for SignFlow business operations
title: '[TASK] '
labels: ['task', 'priority:medium']
assignees: ''
---

## Client (if applicable)
- [ ] Edgar
- [ ] Moises  
- [ ] Tony
- [ ] UNI Signs
- [ ] Nelson
- [ ] Alicia
- [ ] Mansur
- [ ] Artur
- [ ] Internal/General

## Task Category
- [ ] Research
- [ ] Documentation
- [ ] Process Improvement
- [ ] Tool Setup
- [ ] Training
- [ ] Admin
- [ ] Other: ___________

## Description
**What needs to be done:**


**Why this is important:**


**Success Criteria:**


## Task Details
- **Estimated Time:** 
- **Deadline:** 
- **Dependencies:** 
- **Resources Needed:** 

## Checklist
- [ ] Task planned
- [ ] Resources gathered
- [ ] Work completed
- [ ] Results verified
- [ ] Documentation updated

## Notes
**Additional context, dependencies, or considerations:**

```

## Setup Instructions

### Step 1: Create Template Directory
```bash
mkdir -p .github/ISSUE_TEMPLATE
```

### Step 2: Create Template Files
Copy each template above into its respective file in the `.github/ISSUE_TEMPLATE/` directory.

### Step 3: Configure Template Chooser
Create `.github/ISSUE_TEMPLATE/config.yml`:

```yaml
blank_issues_enabled: false
contact_links:
  - name: SignFlow Documentation
    url: https://github.com/your-username/your-repo/wiki
    about: Check our documentation for common questions
  - name: Client Portal
    url: https://your-client-portal.com
    about: Direct client access portal
```

### Step 4: Test Templates
1. Go to your repository
2. Click "Issues" tab
3. Click "New Issue"
4. Verify all templates appear
5. Test creating issues with each template

## Template Usage Guidelines

### When to Use Each Template:

1. **Google Ads Task**: Any ads-related work (campaigns, keywords, optimization)
2. **Landing Page Task**: LP creation, updates, optimization, testing
3. **GHL Setup Task**: GoHighLevel workflows, automations, integrations
4. **Video Production Task**: Any video creation, editing, or optimization
5. **Client Communication Task**: Scheduled calls, emails, reviews
6. **General Task**: Everything else (research, admin, internal tasks)

### Best Practices:
- Always fill out client selection
- Be specific in descriptions
- Set realistic deadlines
- Use checklists for multi-step tasks
- Add labels for filtering
- Reference related issues when relevant

---

## Version History

### v1.0.0 - 2025-01-25
- **Major**: Initial issue templates created
- **Minor**: Complete template set for SignFlow workflow
- **Patch**: Setup instructions and usage guidelines
--- 