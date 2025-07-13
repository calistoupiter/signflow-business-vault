#!/bin/bash

# GitHub repository details
REPO="calistoupiter/GitHubVault"

echo "Creating SignFlow tasks in GitHub Issues..."

# IDEAS Column
gh issue create --repo $REPO --title "make zoom/facetime calls with leads >=$5k" --body "**Column:** Ideas" --label "ideas,business-development"
gh issue create --repo $REPO --title "truncated LP for split testing, just form & social proof" --body "**Column:** Ideas" --label "ideas,landing-page,testing"
gh issue create --repo $REPO --title "check load speed for clients' LPs" --body "**Column:** Ideas" --label "ideas,landing-page,optimization"
gh issue create --repo $REPO --title "article LP as a link on the main LP" --body "**Column:** Ideas" --label "ideas,landing-page,content"
gh issue create --repo $REPO --title "Customize the follow-up review requests" --body "**Column:** Ideas" --label "ideas,client-communication,automation"
gh issue create --repo $REPO --title "Launch $15 bucks PMax campaign Edgar" --body "**Column:** Ideas
**Client:** Edgar" --label "ideas,client:edgar,ads,pmax"

# GROOMING Column
gh issue create --repo $REPO --title "add \"marquee sign\" ad group for csc and isa? \"logo signs\"? \"neighborhood signs\"?" --body "**Column:** Grooming
**Context:** Keyword research and ad group expansion" --label "grooming,ads,keyword-research"
gh issue create --repo $REPO --title "Finalize sales tip trainings for check-in calls" --body "**Column:** Grooming
**Context:** Training materials for client calls" --label "grooming,training,client-communication"
gh issue create --repo $REPO --title "Asana GHL BUS" --body "**Column:** Grooming
**Context:** GHL Business setup task" --label "grooming,ghl-setup"

# TO DO Column - High Priority
gh issue create --repo $REPO --title "remove weekends from UNI ads" --body "**Column:** To Do
**Priority:** High
**Client:** UNI Signs" --label "to-do,priority:high,client:uni-signs,ads"
gh issue create --repo $REPO --title "analyze old ads of UNI signs" --body "**Column:** To Do
**Priority:** High
**Client:** UNI Signs" --label "to-do,priority:high,client:uni-signs,ads,analysis"
gh issue create --repo $REPO --title "Split test OFFER-heavy ads for Moises (First Sign Proof & On Site Visit is crazy)" --body "**Column:** To Do
**Priority:** High
**Client:** Moises" --label "to-do,priority:high,client:moises,ads,testing"
gh issue create --repo $REPO --title "shoot testimonial with Edgar if possible" --body "**Column:** To Do
**Priority:** High
**Client:** Edgar" --label "to-do,priority:high,client:edgar,video,testimonial"
gh issue create --repo $REPO --title "add exclusion of all other states and CAN MEX" --body "**Column:** To Do
**Priority:** High
**Context:** Geographic targeting exclusions" --label "to-do,priority:high,ads,targeting"
gh issue create --repo $REPO --title "add business is register keyword and retracted emails from whois" --body "**Column:** To Do
**Priority:** High
**Context:** Keyword research and data gathering" --label "to-do,priority:high,ads,keyword-research"
gh issue create --repo $REPO --title "Check optimization goals for ALL campaigns" --body "**Column:** To Do
**Priority:** High
**Context:** Campaign optimization audit" --label "to-do,priority:high,ads,optimization"
gh issue create --repo $REPO --title "add timer and popup to Tony's LP(s)" --body "**Column:** To Do
**Priority:** High
**Client:** Tony" --label "to-do,priority:high,client:tony,landing-page,conversion"
gh issue create --repo $REPO --title "remove inquiry form and make popup sales-ish" --body "**Column:** To Do
**Priority:** High
**Context:** Landing page conversion optimization" --label "to-do,priority:high,landing-page,conversion"
gh issue create --repo $REPO --title "add gmb/g location to google ads account" --body "**Column:** To Do
**Priority:** High
**Context:** Google My Business integration" --label "to-do,priority:high,ads,gmb"

# TO DO Column - Medium Priority
gh issue create --repo $REPO --title "Apertura re-phrase copy and voiceover, re-launch PPF" --body "**Column:** To Do
**Priority:** Medium
**Context:** PPF campaign refresh" --label "to-do,priority:medium,ads,ppf,copy"
gh issue create --repo $REPO --title "add ADA something" --body "**Column:** To Do
**Priority:** Medium
**Context:** ADA compliance addition" --label "to-do,priority:medium,compliance,website"
gh issue create --repo $REPO --title "add g pixel on LPs for the sake of retargeting" --body "**Column:** To Do
**Priority:** Medium
**Context:** Retargeting pixel setup" --label "to-do,priority:medium,landing-page,tracking,retargeting"
gh issue create --repo $REPO --title "research Landing Page Experience (a component of Quality Score)" --body "**Column:** To Do
**Priority:** Medium
**Context:** Quality Score optimization research" --label "to-do,priority:medium,landing-page,research,quality-score"
gh issue create --repo $REPO --title "introduce \"building sign company near me\" keyword" --body "**Column:** To Do
**Priority:** Medium
**Context:** Local keyword expansion" --label "to-do,priority:medium,ads,keyword-research,local"
gh issue create --repo $REPO --title "send Alicia and Nelson something" --body "**Column:** To Do
**Priority:** Medium
**Clients:** Alicia, Nelson" --label "to-do,priority:medium,client:alicia,client:nelson,client-communication"
gh issue create --repo $REPO --title "add price matching to the lp" --body "**Column:** To Do
**Priority:** Medium
**Context:** Landing page feature addition" --label "to-do,priority:medium,landing-page,pricing"
gh issue create --repo $REPO --title "create a universal negative keyword list for signage google ads" --body "**Column:** To Do
**Priority:** Medium
**Context:** Negative keyword management" --label "to-do,priority:medium,ads,keyword-research,negative-keywords"
gh issue create --repo $REPO --title "add floating call for mansur" --body "**Column:** To Do
**Priority:** Medium
**Client:** Mansur" --label "to-do,priority:medium,client:mansur,landing-page,call-widget"
gh issue create --repo $REPO --title "Email drip campaign topics/content ideas" --body "**Column:** To Do
**Priority:** Medium
**Context:** Email marketing content planning" --label "to-do,priority:medium,email,content,strategy"
gh issue create --repo $REPO --title "Add branded domains to all client's DNS providers for customized review links" --body "**Column:** To Do
**Priority:** Medium
**Context:** Custom domain setup for review system" --label "to-do,priority:medium,dns,branding,reviews"
gh issue create --repo $REPO --title "Add more follow-ups in the couldn't reach column with several days delays" --body "**Column:** To Do
**Priority:** Medium
**Context:** Follow-up automation improvement" --label "to-do,priority:medium,ghl-setup,automation,follow-up"

# TO DO Column - Lower Priority
gh issue create --repo $REPO --title "MD: put whole PPF budget into new russian VO video" --body "**Column:** To Do
**Priority:** Low
**Context:** PPF campaign budget reallocation" --label "to-do,priority:low,video,ppf,budget"
gh issue create --repo $REPO --title "MD: remove 24yo and below" --body "**Column:** To Do
**Priority:** Low
**Context:** Age targeting adjustment" --label "to-do,priority:low,ads,targeting,demographics"
gh issue create --repo $REPO --title "MD: do detailing fb ads to whatsapp" --body "**Column:** To Do
**Priority:** Low
**Context:** Facebook ads to WhatsApp integration" --label "to-do,priority:low,ads,facebook,whatsapp"
gh issue create --repo $REPO --title "wait for / remind about Edgar's video" --body "**Column:** To Do
**Priority:** Low
**Client:** Edgar" --label "to-do,priority:low,client:edgar,video,waiting-on-client"
gh issue create --repo $REPO --title "Revamp PPF Tutorials Funnel Structure (GHL LP With Pixel)" --body "**Column:** To Do
**Priority:** Low
**Context:** PPF funnel restructure" --label "to-do,priority:low,ppf,ghl-setup,funnel,landing-page"
gh issue create --repo $REPO --title "choose PPF car wrapping from Artur's account (wait from Mansur)" --body "**Column:** To Do
**Priority:** Low
**Clients:** Artur, Mansur" --label "to-do,priority:low,client:artur,client:mansur,ppf,waiting-on-client"
gh issue create --repo $REPO --title "price reveal for PPF ads for Mansur full front (before: 2150 - > 1800)" --body "**Column:** To Do
**Priority:** Low
**Client:** Mansur" --label "to-do,priority:low,client:mansur,ppf,pricing,ads"

# TO DO TODAY Column
gh issue create --repo $REPO --title "Schedule Check-in Calls (0/4)" --body "**Column:** To Do Today
**Context:** Client check-in scheduling" --label "to-do-today,client-communication,calls"
gh issue create --repo $REPO --title "Schedule Check-in Calls (3/4)" --body "**Column:** To Do Today
**Context:** Client check-in scheduling - progress update" --label "to-do-today,client-communication,calls"
gh issue create --repo $REPO --title "add weekly dumb but smart reminders for biz owners to follow up on stale opps" --body "**Column:** To Do Today
**Context:** Automated reminder system" --label "to-do-today,ghl-setup,automation,reminders"
gh issue create --repo $REPO --title "PMax tracking template to Edgar account" --body "**Column:** To Do Today
**Client:** Edgar" --label "to-do-today,client:edgar,tracking,pmax"
gh issue create --repo $REPO --title "fix tony's tracking bulk action code" --body "**Column:** To Do Today
**Client:** Tony" --label "to-do-today,client:tony,tracking,code,bug-fix"
gh issue create --repo $REPO --title "respond to Paul: hosting, offer, biz name (viz vs sxlr)" --body "**Column:** To Do Today
**Context:** Client communication - hosting and business name decision" --label "to-do-today,client-communication,hosting,branding"
gh issue create --repo $REPO --title "add tags/custom field for an opportunity's campaign source (katy or houston)" --body "**Column:** To Do Today
**Context:** CRM field customization" --label "to-do-today,ghl-setup,tracking,custom-fields"
gh issue create --repo $REPO --title "pylon tags assign manually + add auto tagging" --body "**Column:** To Do Today
**Context:** Tagging system setup" --label "to-do-today,ghl-setup,automation,tags"
gh issue create --repo $REPO --title "send Tony's video to Moises so he knows what to record" --body "**Column:** To Do Today
**Clients:** Tony, Moises" --label "to-do-today,client:tony,client:moises,video,example"

echo "All tasks created successfully!"
echo "Total issues created: 42"
echo "Go to your project at https://github.com/users/calistoupiter/projects/1/views/1"
