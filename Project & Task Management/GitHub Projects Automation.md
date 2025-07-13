---
title: GitHub Projects Automation Setup
version: 1.0.0
created: 2025-01-25
updated: 2025-01-25
tags: [signflow, github, automation, workflow]
---

# GitHub Projects Automation Setup

## Overview

GitHub Projects automation helps streamline your SignFlow workflow by automatically moving tasks, assigning labels, and triggering notifications based on actions.

## Built-in Project Automations

### 1. Basic Column Automation
Set up in Project Settings > Manage Access > Automation

**Auto-move configurations:**
- **To In Progress**: When issue is assigned to someone
- **To Done**: When issue is closed
- **Back to To Do**: When issue is reopened
- **To Grooming**: When issue gets "needs-grooming" label

### 2. Label-based Automation
**Auto-assign based on labels:**
- `client:edgar` → Auto-assign to Edgar handler
- `client:moises` → Auto-assign to Moises handler
- `urgent` → Move to "To Do Today" column
- `blocked` → Add "blocked" label, move to separate view

### 3. Due Date Automation
**Automated reminders:**
- 3 days before due date: Add "due-soon" label
- Day of due date: Move to "To Do Today" column
- Overdue: Add "overdue" label, send notification

## GitHub Actions Workflows

### 1. Daily Task Triage
**File:** `.github/workflows/daily-triage.yml`

```yaml
name: Daily Task Triage

on:
  schedule:
    - cron: '0 9 * * MON-FRI'  # 9 AM weekdays
  workflow_dispatch:  # Manual trigger

jobs:
  triage:
    runs-on: ubuntu-latest
    steps:
      - name: Move urgent tasks to Today
        uses: actions/github-script@v7
        with:
          script: |
            // Get all issues with 'urgent' label
            const { data: issues } = await github.rest.issues.listForRepo({
              owner: context.repo.owner,
              repo: context.repo.repo,
              labels: 'urgent',
              state: 'open'
            });
            
            // Move to "To Do Today" column
            for (const issue of issues) {
              await github.rest.issues.addLabels({
                owner: context.repo.owner,
                repo: context.repo.repo,
                issue_number: issue.number,
                labels: ['to-do-today']
              });
            }
      
      - name: Check overdue tasks
        uses: actions/github-script@v7
        with:
          script: |
            // Implementation for overdue task handling
            console.log('Checking overdue tasks...');
```

### 2. Client Notification Workflow
**File:** `.github/workflows/client-notifications.yml`

```yaml
name: Client Notifications

on:
  issues:
    types: [closed]
  
jobs:
  notify:
    runs-on: ubuntu-latest
    if: contains(github.event.issue.labels.*.name, 'client-communication')
    
    steps:
      - name: Send client notification
        uses: actions/github-script@v7
        with:
          script: |
            // Extract client from labels
            const labels = context.payload.issue.labels;
            const clientLabel = labels.find(label => label.name.startsWith('client:'));
            
            if (clientLabel) {
              const client = clientLabel.name.replace('client:', '');
              console.log(`Task completed for client: ${client}`);
              
              // Here you can add integration with email/Slack/etc.
              // Example: Send email, update CRM, etc.
            }
```

### 3. Weekly Report Generation
**File:** `.github/workflows/weekly-report.yml`

```yaml
name: Weekly Report

on:
  schedule:
    - cron: '0 17 * * FRI'  # 5 PM Friday
  workflow_dispatch:

jobs:
  generate-report:
    runs-on: ubuntu-latest
    steps:
      - name: Generate weekly summary
        uses: actions/github-script@v7
        with:
          script: |
            const endDate = new Date();
            const startDate = new Date(endDate.getTime() - 7 * 24 * 60 * 60 * 1000);
            
            // Get completed issues this week
            const { data: closedIssues } = await github.rest.issues.listForRepo({
              owner: context.repo.owner,
              repo: context.repo.repo,
              state: 'closed',
              since: startDate.toISOString()
            });
            
            // Get created issues this week
            const { data: newIssues } = await github.rest.issues.listForRepo({
              owner: context.repo.owner,
              repo: context.repo.repo,
              state: 'open',
              since: startDate.toISOString()
            });
            
            // Generate report
            const report = `
            # Weekly SignFlow Report
            
            ## Week ending: ${endDate.toDateString()}
            
            ### Completed Tasks: ${closedIssues.length}
            ${closedIssues.map(issue => `- ${issue.title}`).join('\n')}
            
            ### New Tasks: ${newIssues.length}
            ${newIssues.map(issue => `- ${issue.title}`).join('\n')}
            `;
            
            // Create issue with report
            await github.rest.issues.create({
              owner: context.repo.owner,
              repo: context.repo.repo,
              title: `Weekly Report - ${endDate.toDateString()}`,
              body: report,
              labels: ['weekly-report']
            });
```

## Advanced Automation Ideas

### 1. Slack Integration
**Webhook setup for real-time notifications:**
```yaml
- name: Notify Slack
  uses: 8398a7/action-slack@v3
  with:
    status: ${{ job.status }}
    webhook_url: ${{ secrets.SLACK_WEBHOOK }}
    text: "Task completed: ${{ github.event.issue.title }}"
```

### 2. Email Integration
**Send email notifications to clients:**
```yaml
- name: Send email notification
  uses: dawidd6/action-send-mail@v3
  with:
    server_address: smtp.gmail.com
    server_port: 465
    username: ${{ secrets.EMAIL_USERNAME }}
    password: ${{ secrets.EMAIL_PASSWORD }}
    subject: "SignFlow Task Update"
    body: "Task completed: ${{ github.event.issue.title }}"
    to: client@example.com
```

### 3. CRM Integration
**Update customer records:**
```yaml
- name: Update CRM
  uses: actions/github-script@v7
  with:
    script: |
      // Integration with your CRM system
      const response = await fetch('https://your-crm-api.com/update', {
        method: 'POST',
        headers: {
          'Authorization': 'Bearer ${{ secrets.CRM_TOKEN }}',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          task: context.payload.issue.title,
          status: 'completed',
          client: 'extracted-from-labels'
        })
      });
```

## Project Board Automation Rules

### 1. Smart Assignment Rules
```yaml
# In project settings
Auto-assign rules:
- If label contains "client:edgar" → assign to @edgar-handler
- If label contains "ads" → assign to @ads-specialist
- If label contains "video" → assign to @video-editor
- If priority is "high" → notify @project-manager
```

### 2. Column Movement Rules
```yaml
# Automatic column movements
Movement rules:
- Issue assigned → Move to "In Progress"
- Issue closed → Move to "Done"
- Issue reopened → Move to "To Do"
- Label "urgent" added → Move to "To Do Today"
- Label "blocked" added → Move to "Blocked" (custom column)
```

### 3. Notification Rules
```yaml
# Notification triggers
Notifications:
- High priority task created → Notify immediately
- Task overdue → Daily reminder
- Client task completed → Email client
- Weekly summary → Send to team
```

## Setup Instructions

### Step 1: Enable GitHub Actions
1. Go to repository Settings
2. Click "Actions" in sidebar
3. Select "Allow all actions and reusable workflows"

### Step 2: Create Workflow Files
Create `.github/workflows/` directory and add the workflow files above.

### Step 3: Set Up Secrets
In repository Settings > Secrets and variables > Actions, add:
- `SLACK_WEBHOOK` - Your Slack webhook URL
- `EMAIL_USERNAME` - SMTP username
- `EMAIL_PASSWORD` - SMTP password
- `CRM_TOKEN` - Your CRM API token

### Step 4: Configure Project Automation
1. Go to your GitHub Project
2. Click "..." menu > Settings
3. Set up automation rules
4. Configure webhooks if needed

### Step 5: Test Automation
1. Create a test issue
2. Add labels and assignments
3. Verify automation triggers work
4. Check notifications are sent

## Custom Automation Scripts

### 1. Bulk Task Creation
**File:** `scripts/bulk-create-tasks.js`

```javascript
// Create multiple tasks from a list
const tasks = [
  { title: "Review Edgar's campaign", client: "edgar", priority: "high" },
  { title: "Update Moises landing page", client: "moises", priority: "medium" },
  // Add more tasks...
];

tasks.forEach(async (task) => {
  await github.rest.issues.create({
    owner: 'your-username',
    repo: 'your-repo',
    title: task.title,
    labels: [`client:${task.client}`, `priority:${task.priority}`]
  });
});
```

### 2. Client Report Generator
**File:** `scripts/client-report.js`

```javascript
// Generate client-specific reports
async function generateClientReport(client) {
  const issues = await github.rest.issues.listForRepo({
    owner: 'your-username',
    repo: 'your-repo',
    labels: `client:${client}`,
    state: 'closed'
  });
  
  const report = `
  # ${client} Report
  
  ## Completed Tasks: ${issues.data.length}
  ${issues.data.map(issue => `- ${issue.title}`).join('\n')}
  
  ## Performance Summary
  - Average completion time: X days
  - Tasks completed this month: Y
  `;
  
  return report;
}
```

## Monitoring and Analytics

### 1. Task Completion Metrics
- Average time to completion
- Tasks completed per client
- Task type distribution
- Priority distribution

### 2. Performance Dashboards
- GitHub Insights for issue tracking
- Custom dashboards with GitHub API
- Integration with analytics tools

### 3. Weekly/Monthly Reports
- Automated report generation
- Client-specific summaries
- Performance trend analysis

---

## Version History

### v1.0.0 - 2025-01-25
- **Major**: Initial automation setup guide created
- **Minor**: Complete workflow examples and integration guides
- **Patch**: Setup instructions and monitoring guidelines
--- 