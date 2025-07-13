---
title: Trello to GitHub Projects Migration Checklist
version: 1.0.0
created: 2025-01-25
updated: 2025-01-25
tags: [signflow, migration, checklist, github, trello]
---

# Trello to GitHub Projects Migration Checklist

## Pre-Migration Preparation

### Phase 1: GitHub Setup
- [ ] Create GitHub repository for SignFlow project management
- [ ] Enable GitHub Projects in repository settings
- [ ] Set up GitHub Actions (if not already enabled)
- [ ] Configure repository permissions for team members

### Phase 2: Project Structure
- [ ] Create new GitHub Project named "SignFlow Task Management"
- [ ] Set up project columns:
  - [ ] Ideas
  - [ ] Grooming
  - [ ] To Do
  - [ ] To Do Today
  - [ ] In Progress
  - [ ] Done
  - [ ] Ideas Graveyard

### Phase 3: Labels and Fields
- [ ] Create client labels:
  - [ ] `client:edgar`
  - [ ] `client:moises`
  - [ ] `client:tony`
  - [ ] `client:uni-signs`
  - [ ] `client:nelson`
  - [ ] `client:alicia`
  - [ ] `client:mansur`
  - [ ] `client:artur`

- [ ] Create priority labels:
  - [ ] `priority:high`
  - [ ] `priority:medium`
  - [ ] `priority:low`

- [ ] Create task type labels:
  - [ ] `ads`
  - [ ] `landing-page`
  - [ ] `tracking`
  - [ ] `ghl-setup`
  - [ ] `video`
  - [ ] `email`
  - [ ] `urgent`
  - [ ] `blocked`

- [ ] Set up custom fields:
  - [ ] Client (single select)
  - [ ] Priority (single select)
  - [ ] Estimated Hours (number)
  - [ ] Due Date (date)
  - [ ] Campaign Type (single select)

## Migration Process

### Phase 4: Task Migration
Reference: `GitHub Projects Migration.md`

#### Ideas Column (6 tasks)
- [ ] make zoom/facetime calls with leads >=$5k
- [ ] truncated LP for split testing, just form & social proof
- [ ] check load speed for clients' LPs
- [ ] article LP as a link on the main LP
- [ ] Customize the follow-up review requests
- [ ] Launch $15 bucks PMax campaign Edgar

#### Grooming Column (3 tasks)
- [ ] add "marquee sign" ad group for csc and isa? "logo signs"? "neighborhood signs"?
- [ ] Finalize sales tip trainings for check-in calls
- [ ] Asana GHL BUS

#### To Do Column (24 tasks)
**High Priority (10 tasks):**
- [ ] remove weekends from UNI ads
- [ ] analyze old ads of UNI signs
- [ ] Split test OFFER-heavy ads for Moises
- [ ] shoot testimonial with Edgar if possible
- [ ] add exclusion of all other states and CAN MEX
- [ ] add business is register keyword and retracted emails from whois
- [ ] Check optimization goals for ALL campaigns
- [ ] add timer and popup to Tony's LP(s)
- [ ] remove inquiry form and make popup sales-ish
- [ ] add gmb/g location to google ads account

**Medium Priority (7 tasks):**
- [ ] Apertura re-phrase copy and voiceover, re-launch PPF
- [ ] add ADA something
- [ ] add g pixel on LPs for the sake of retargeting
- [ ] research Landing Page Experience
- [ ] introduce "building sign company near me" keyword
- [ ] send Alicia and Nelson something
- [ ] add price matching to the lp
- [ ] create a universal negative keyword list for signage google ads
- [ ] add floating call for mansur
- [ ] Email drip campaign topics/content ideas
- [ ] Add branded domains to all client's DNS providers
- [ ] Add more follow-ups in the couldn't reach column

**Lower Priority (7 tasks):**
- [ ] MD: put whole PPF budget into new russian VO video
- [ ] MD: remove 24yo and below
- [ ] MD: do detailing fb ads to whatsapp
- [ ] wait for / remind about Edgar's video
- [ ] Revamp PPF Tutorials Funnel Structure
- [ ] choose PPF car wrapping from Artur's account
- [ ] price reveal for PPF ads for Mansur

#### To Do Today Column (9 tasks)
- [ ] Schedule Check-in Calls (0/4)
- [ ] Schedule Check-in Calls (3/4)
- [ ] add weekly dumb but smart reminders for biz owners
- [ ] PMax tracking template to Edgar account
- [ ] fix tony's tracking bulk action code
- [ ] respond to Paul: hosting, offer, biz name
- [ ] add tags/custom field for an opportunity's campaign source
- [ ] pylon tags assign manually + add auto tagging
- [ ] send Tony's video to Moises

#### Done Column (9 tasks)
- [ ] Mark all completed tasks as closed issues
- [ ] Preserve completion dates and notes

#### Ideas Graveyard (11 tasks)
- [ ] Create cancelled/archived issues for reference

## Post-Migration Setup

### Phase 5: Issue Templates
Reference: `GitHub Issue Templates.md`

- [ ] Create `.github/ISSUE_TEMPLATE/` directory
- [ ] Set up issue templates:
  - [ ] Google Ads Task Template
  - [ ] Landing Page Task Template
  - [ ] GHL Setup Task Template
  - [ ] Video Production Task Template
  - [ ] Client Communication Task Template
  - [ ] General Task Template
- [ ] Configure template chooser (`config.yml`)
- [ ] Test all templates work correctly

### Phase 6: Automation Setup
Reference: `GitHub Projects Automation.md`

#### Basic Automation
- [ ] Set up column automation rules:
  - [ ] Auto-move to "In Progress" when assigned
  - [ ] Auto-move to "Done" when closed
  - [ ] Auto-move to "To Do" when reopened
- [ ] Configure label-based automation
- [ ] Set up due date reminders

#### Advanced Automation (Optional)
- [ ] Create workflow files in `.github/workflows/`:
  - [ ] Daily task triage
  - [ ] Client notifications
  - [ ] Weekly reports
- [ ] Set up GitHub Actions secrets
- [ ] Configure Slack/email integrations (if needed)

### Phase 7: Testing & Validation
- [ ] Create test issues using templates
- [ ] Verify automation rules work
- [ ] Test column movements
- [ ] Confirm labels and fields function correctly
- [ ] Run through complete workflow

### Phase 8: Team Training
- [ ] Document new workflow process
- [ ] Train team on GitHub Projects interface
- [ ] Explain new issue creation process
- [ ] Share automation features and benefits
- [ ] Set up regular review meetings

## Migration Timeline

### Week 1: Setup
- [ ] Complete Phases 1-3 (GitHub setup, project structure, labels)
- [ ] Begin Phase 4 (task migration)

### Week 2: Migration
- [ ] Complete task migration (Phase 4)
- [ ] Set up issue templates (Phase 5)
- [ ] Configure basic automation (Phase 6)

### Week 3: Testing & Training
- [ ] Complete testing and validation (Phase 7)
- [ ] Train team (Phase 8)
- [ ] Go live with new system

### Week 4: Optimization
- [ ] Monitor workflow performance
- [ ] Adjust automation rules as needed
- [ ] Gather feedback and iterate
- [ ] Decommission Trello board

## Success Metrics

### Immediate (Week 1-2)
- [ ] All tasks successfully migrated
- [ ] Team can create and manage issues
- [ ] Basic automation functioning

### Short-term (Month 1)
- [ ] Improved task visibility and tracking
- [ ] Better client communication workflow
- [ ] Reduced manual task management overhead

### Long-term (Month 2-3)
- [ ] Integrated development and project management
- [ ] Automated reporting and analytics
- [ ] Improved client satisfaction and delivery times

## Rollback Plan

If migration needs to be reversed:
- [ ] Export all GitHub issues to CSV
- [ ] Recreate Trello board structure
- [ ] Import tasks back to Trello
- [ ] Update team on process change

## Support Resources

- **Documentation**: All files in `BUSINESS/Project & Task Management/`
- **GitHub Docs**: https://docs.github.com/en/issues/planning-and-tracking-with-projects
- **GitHub Actions**: https://docs.github.com/en/actions
- **Issue Templates**: https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests

---

## Migration Notes

**Current Status:** Ready to begin migration
**Estimated Time:** 3-4 weeks for full migration and training
**Risk Level:** Low (can maintain Trello as backup during transition)

---

## Version History

### v1.0.0 - 2025-01-25
- **Major**: Complete migration checklist created
- **Minor**: All phases, timelines, and success metrics defined
- **Patch**: Support resources and rollback plan included
--- 