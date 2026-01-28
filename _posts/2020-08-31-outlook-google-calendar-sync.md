---
layout: post
title: Outlook to Google Calendar Sync
date: 2020-08-31 20:05:54-07:00
permalink: /2020/08/outlook-google-calendar-sync/
---

Ah, the travails of academia. Like many universities, USC uses Microsoft Outlook
as its email and calendar provider. This presents some integration challenges
for those of us, like me, who use Google Calendar everywhere else in life. It's
effectively impossible to sync an Outlook Calendar with a Google Calendar, so I
had to juggle between both when trying to schedule anything. Chaos ensues.

So, I created [a script][1] to perform an ongoing one-way sync from my USC
Microsoft Office 365 Outlook calendar to my personal Google calendar, handling
new, updated, and deleted events. I had to develop my own solution because
Microsoft/Google inexplicably can't get their own acts together. For example,
you can publish your Outlook calendar's ICS URL and add it to Google, but it
only syncs roughly once per day so you miss any new appointments in the
meantime. Microsoft Flow used to work (clumsily) for syncing, but even their
official recipes are now broken. So I had to roll my own.

I made my Python solution open-source for anyone else to reuse if you have the
same problem I did. It's available [on GitHub][1] along with some setup
instructions. A few notes... first, you need access to a server: either your
own, or AWS, or a VPS, or whatever. Second, you'll need to create Google and
Microsoft API access tokens. Third, you'll need to install the Python packages
in requirements.txt and set up a cronjob to run the script periodically. Mine
runs every 15 minutes.

See the GitHub repo for instructions, details, and code.

<!-- markdownlint-disable MD013 -->
[1]: https://github.com/gboeing/outlook-to-google-calendar
