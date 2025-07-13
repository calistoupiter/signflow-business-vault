---
title: GitHub Projects Migration - SignFlow Task Management
version: 1.0.0
created: 2025-01-25
updated: 2025-01-25
tags: [signflow, project-management, github, migration]
---

# GitHub Projects Migration - SignFlow Task Management

## Migration Overview

Moving from Trello to GitHub Projects for better integration with development workflow and advanced project management features.

## GitHub Project Structure

### Board Views
1. **Main Kanban Board** - Primary workflow view
2. **Priority Matrix** - High/Medium/Low priority sorting
3. **Client-focused View** - Grouped by client
4. **Sprint Planning** - Weekly/monthly planning view

### Status Fields (Columns)
- **Ideas** - Raw ideas and concepts
- **Grooming** - Ideas being refined and scoped
- **To Do** - Ready to work, prioritized backlog
- **To Do Today** - Current day priorities
- **In Progress** - Currently working on
- **Done** - Completed tasks
- **Ideas Graveyard** - Archived/cancelled ideas

### Labels System
- **Client Labels**: `client:edgar`, `client:moises`, `client:tony`, `client:uni-signs`, `client:nelson`, `client:alicia`, `client:mansur`, `client:artur`
- **Priority**: `priority:high`, `priority:medium`, `priority:low`
- **Task Type**: `ads`, `landing-page`, `tracking`, `ghl-setup`, `video`, `email`, `review`, `keyword-research`, `ppf`, `call-setup`
- **Urgency**: `urgent`, `waiting-on-client`, `blocked`

### Custom Fields
- **Client** (select): Edgar, Moises, Tony, UNI Signs, Nelson, Alicia, Mansur, Artur
- **Priority** (select): High, Medium, Low
- **Estimated Hours** (number): 0.5, 1, 2, 4, 8+
- **Due Date** (date)
- **Campaign Type** (select): Google Ads, Facebook, Landing Page, GHL, Video, General

## Current Tasks Migration

### Ideas Column
- [ ] make zoom/facetime calls with leads >=$5k
- [ ] truncated LP for split testing, just form & social proof  
- [ ] check load speed for clients' LPs
- [ ] article LP as a link on the main LP
- [ ] Customize the follow-up review requests
- [ ] Launch $15 bucks PMax campaign Edgar

### Grooming Column
- [ ] add "marquee sign" ad group for csc and isa? "logo signs"? "neighborhood signs"?
- [ ] Finalize sales tip trainings for check-in calls
- [ ] Asana GHL BUS

### To Do Column (Prioritized Backlog)

**High Priority:**
- [ ] remove weekends from UNI ads
- [ ] analyze old ads of UNI signs
- [ ] Split test OFFER-heavy ads for Moises (First Sign Proof & On Site Visit is crazy)
- [ ] shoot testimonial with Edgar if possible
- [ ] add exclusion of all other states and CAN MEX
- [ ] add business is register keyword and retracted emails from whois
- [ ] Check optimization goals for ALL campaigns
- [ ] add timer and popup to Tony's LP(s)
- [ ] remove inquiry form and make popup sales-ish
- [ ] add gmb/g location to google ads account

**Medium Priority:**
- [ ] Apertura re-phrase copy and voiceover, re-launch PPF
- [ ] add ADA something
- [ ] add g pixel on LPs for the sake of retargeting
- [ ] research Landing Page Experience (a component of Quality Score)
- [ ] introduce "building sign company near me" keyword
- [ ] send Alicia and Nelson something
- [ ] add price matching to the lp
- [ ] create a universal negative keyword list for signage google ads
- [ ] add floating call for mansur
- [ ] Email drip campaign topics/content ideas
- [ ] Add branded domains to all client's DNS providers for customized review links
- [ ] Add more follow-ups in the couldn't reach column with several days delays

**Lower Priority:**
- [ ] MD: put whole PPF budget into new russian VO video
- [ ] MD: remove 24yo and below
- [ ] MD: do detailing fb ads to whatsapp
- [ ] wait for / remind about Edgar's video
- [ ] Revamp PPF Tutorials Funnel Structure (GHL LP With Pixel)
- [ ] choose PPF car wrapping from Artur's account (wait from Mansur)
- [ ] price reveal for PPF ads for Mansur full front (before: 2150 - > 1800)

### To Do Today Column
- [ ] Schedule Check-in Calls (0/4)
- [ ] Schedule Check-in Calls (3/4)
- [ ] add weekly dumb but smart reminders for biz owners to follow up on stale opps
- [ ] PMax tracking template to Edgar account
- [ ] fix tony's tracking bulk action code
- [ ] respond to Paul: hosting, offer, biz name (viz vs sxlr)
- [ ] add tags/custom field for an opportunity's campaign source (katy or houston)
- [ ] pylon tags assign manually + add auto tagging
- [ ] send Tony's video to Moises so he knows what to record

### Done Column (Recent Completions)
- [x] check Nick's request: multiple opps for return business - do workflows work like that by default or we need to engineer something?
- [x] add pics to Moises lp
- [x] ask Moises to install GHL app
- [x] insert hosted links to all LP buttons and in sitelinks
- [x] add a script code snippet for UNI Signs
- [x] UNI Signs Domain Stuff: Setup and send to Moises asap
- [x] Make all the clients install High Level App to see notifications
- [x] add sitelinks to UNI Signs ads
- [x] add single ph number and call asset

### Ideas Graveyard Column
- [x] Gregg SignType Campaign (cancelled)
- [x] Schedule Check-in Calls (0/3) (replaced)
- [x] Add campaign-specific goals for Palmer campaigns (cancelled)
- [x] add "shopping center signs" developer oriented kws, and others for PTM campaign (cancelled)
- [x] remind Tony about the GPM (cancelled)
- [x] wait for the list of services Jon wants to expand to (cancelled)
- [x] Onboard Alex if all good (cancelled)
- [x] make ad previews for Teslas (cancelled)
- [x] boat ad group (cancelled)
- [x] Text Edgar about connecting GMB to google ads (cancelled)
- [x] Check in call w Tony (cancelled)

## GitHub Project Setup Instructions

### Step 1: Create New Project
1. Go to your GitHub organization/profile
2. Click "Projects" tab
3. Click "New Project"
4. Choose "Board" template
5. Name: "SignFlow Task Management"

### Step 2: Configure Columns
Add these columns in order:
- Ideas
- Grooming
- To Do
- To Do Today
- In Progress
- Done
- Ideas Graveyard

### Step 3: Set Up Labels
Create labels with colors:
- `client:edgar` (blue)
- `client:moises` (green)
- `client:tony` (purple)
- `client:uni-signs` (orange)
- `client:nelson` (red)
- `client:alicia` (yellow)
- `client:mansur` (pink)
- `client:artur` (gray)
- `priority:high` (red)
- `priority:medium` (orange)
- `priority:low` (green)
- `ads` (blue)
- `landing-page` (purple)
- `tracking` (orange)
- `ghl-setup` (green)
- `video` (red)
- `email` (yellow)
- `urgent` (red)
- `waiting-on-client` (gray)
- `blocked` (black)

### Step 4: Create Custom Fields
1. Client (Single select): Edgar, Moises, Tony, UNI Signs, Nelson, Alicia, Mansur, Artur
2. Priority (Single select): High, Medium, Low
3. Estimated Hours (Number): 0.5, 1, 2, 4, 8+
4. Due Date (Date)
5. Campaign Type (Single select): Google Ads, Facebook, Landing Page, GHL, Video, General

### Step 5: Set Up Automation
Create automation rules:
- Move to "In Progress" when assigned
- Move to "Done" when closed
- Auto-assign based on labels
- Weekly review reminders

### Step 6: Create Issue Templates
Create templates for common task types:
- Google Ads Task
- Landing Page Task
- GHL Setup Task
- Video Production Task
- Client Communication Task

## Migration Benefits

### Advantages over Trello:
1. **Better Integration**: Links directly to code, docs, and development workflow
2. **Advanced Filtering**: Multiple views, custom fields, complex queries
3. **Automation**: GitHub Actions for advanced workflows
4. **Issue Templates**: Standardized task creation
5. **Milestone Tracking**: Better project phase management
6. **Custom Fields**: More data capture and reporting
7. **API Access**: Better integration with other tools
8. **Free for Personal Use**: No subscription costs

### Workflow Improvements:
- Link tasks to specific commits/PRs
- Automated task creation from client emails
- Better client reporting with custom views
- Integration with time tracking tools
- Automated reminders and notifications

## Next Steps

1. Set up GitHub Project following instructions above
2. Import all tasks from this document
3. Configure automation rules
4. Create issue templates
5. Set up weekly review process
6. Train team on new workflow

---

## Version History

### v1.0.0 - 2025-01-25
- **Major**: Initial migration document created
- **Minor**: Complete task inventory from Trello
- **Patch**: Setup instructions and configuration guide
--- 