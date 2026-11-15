---
title: Refinement (Expansion of the SGEP)
subtitle: Building shared understanding and confidence, just in time
description: Refinement is where discovery meets delivery. Learn how Scrum Teams and Stakeholders build shared understanding of the why, the what, and the how, so that upcoming Product Backlog Items are ready without turning readiness into a gate.
keywords:
- Product Backlog Refinement
- Refinement
- Definition of Ready
- Shared understanding
- Vertical slicing
- Acceptance Criteria
- Outcome criteria
- Product Backlog
- Scrum
- Product Owner
author:
  - Ralph Jocham
date: 2026-09-26T09:00:00Z
type: guide
lang: en
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
forked_from: scrum-guide-expanded/2026.1
sitemap:
  priority: 0.7
---

License/Copyright: Creative Commons Attribution-ShareAlike 4.0 International ([CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)). © 2026 Ralph Jocham.  
Note: The Product Goal Canvas image is © 2021 Ralph Jocham, licensed under [CC BY-NC-SA 2.0](https://creativecommons.org/licenses/by-nc-sa/2.0/), and is included with permission of the author. It is not covered by the CC BY-SA 4.0 license of this document.

---

# Refinement

## Purpose and scope

The Scrum Guide Expansion Pack (SGEP) describes Refinement as an activity: ongoing work that creates clarity and reduces risk, so that upcoming Product Backlog Items become ready[^3]. In the SGEP, an item is ready when it can be completed to the Definition of Output Done within a small number of days.

The 2020 Scrum Guide covers Refinement mainly in one paragraph and does not make it an event[^1]. So many Scrum Teams treat it as an afterthought: a meeting squeezed in when there is time, an estimation session, or a document the Product Owner writes alone and hands over. The price comes later: long Sprint Plannings, missed Sprint Goals, unfinished work, and Increments that meet the Acceptance Criteria but miss the real need.

This expansion explains what Refinement is, what ready means, and a rhythm that works well in practice.

## Why Refinement matters

> What counts as Refinement.<br>
> Refinement is any work that increases the Scrum Team's shared understanding of, and confidence in, upcoming Product Backlog Items, so that they can be completed to the Definition of Output Done and are likely to achieve their intended outcome.

This definition is broad on purpose. The formal sessions count. So do talks in pairs and small groups, conversations with users, a spike, a look at usage data, writing examples, and checking a dependency. Building the item itself does not count, and neither do documents that nobody discusses.

Refinemen looks ahead. It prepares work for the next Sprints. Items already in the Sprint can still change as the Scrum Team learns[^3], but those questions are handled as part of doing the work: with the Product Owner and Stakeholders as needed, and at the Daily Scrum. When a Refinement session turns into a talk about the current Sprint's problems, future work gets neglected, and the Scrum Team ends up refining at the last minute in Sprint Planning.

### It reduces risk while that is still cheap

Every Product Backlog Item comes with open questions about the problem, the value, the solution, the technology, or what it depends on. Ignored questions do not go away. They show up later, during the Sprint or after release.

A question answered in Refinement costs a conversation. The same question found in the middle of a Sprint costs rework, a change in scope, or a missed Sprint Goal. Donald Reinertsen argues that the cost of delay is often far larger than teams assume, and that smaller batches and faster feedback lower both risk and cost[^14]. Refinement is where big pieces of work are cut into small ones and questions get asked early.

### It builds shared understanding

Ron Jeffries described a user story as Card, Conversation, Confirmation[^5]. The card is a reminder, the conversation is where understanding grows, and the confirmation records what was agreed so it can be tested. Jeff Patton put it simply: shared documents aren't shared understanding[^6]. Two people can read the same item and picture two different things. Only talking, sketching, and working through examples brings the difference to light.

That is why Refinement is teamwork. Its real result is a Scrum Team that knows why an item matters, what it is, and roughly how to build it.

## What "ready" means

### Ready is about confidence

The SGEP defines ready by its result: the Scrum Team is confident it can finish the item to the Definition of Output Done within a small number of days[^3]. There are no templates, fields, or sign-offs. This confidence comes from four things:

- The Scrum Team understands the why: which outcome the item serves, for whom, and what result is expected.
- The Scrum Team understands the what: the expected change, usually written as Acceptance Criteria or examples.
- The Product Developers have a realistic idea of the how and know the main risks and dependencies.
- The item is small enough to finish within a few days.

### A Definition of Ready can help, but should not become a gate

Many Scrum Teams write down what ready means to them in a Definition of Ready. The Scrum Patterns community describes it as a short list: the item is immediately actionable, valuable, discussed, estimated, testable, and sized appropriately[^8]. In that pattern, an item must meet the list before it goes into Sprint Planning.

Used strictly, such a list has a cost. Mike Cohn warns that rules like "everything must be fully specified before we start" lead to a stage-gate process, where nothing can begin until the step before it is finished[^9]. Product Developers can then hide behind the gate: "This item isn't ready, so it's not our problem." The Product Owner ends up writing longer and longer specifications, and collaboration turns into contract negotiation. The Agile Manifesto asks for the opposite[^4].

> A checklist for the conversation<br>
> A Definition of Ready is useful when it helps the Scrum Team ask better questions together. It does harm when it is used to reject work, to blame others, or to replace conversation with paperwork.

If an item turns out not to be ready during Sprint Planning, professionals do not simply refuse it. They work out together what is missing. A short conversation may be enough, or a spike may be needed, or the team picks another item for now.

### Ready does not mean complete

Items and their criteria can change at any time, even during the work[^3]. In complex work, some things can only be learned by doing. Refining too much is as wasteful as refining too little.

## The shape of a refined Product Backlog

A healthy Product Backlog is not equally detailed everywhere. Items at the top are small and clear. Items further down are bigger and rougher. Items near the bottom may be little more than a problem or an opportunity linked to the Product Goal.

This shape saves effort. Detail takes time to create and keep up to date, and it depreciates over time or when priorities change. In Reinertsen's terms, detailed items waiting in a queue are inventory[^14]. Detailing far-away items is like filling a warehouse with goods that may never sell.

As a rule of thumb, keep about one to two Sprints' worth of items ready. With less, Sprint Planning turns into rushed Refinement. With more, effort goes into details that will probably change.

This is lean, just-in-time planning: decide as late as is responsible, when the most information is available[^20]. It fits the SGEP's emphasis on directional, just-in-time planning, which the SGEP states for the Sprint Goal[^3]. The Product Goal sets the direction far ahead. Detailed understanding is built only for the next Sprint or two.

## The work of Refinement

Refinement works on three planes: the why, the what, and the how. Two more kinds of work cut across all three: slicing and ordering. These are not steps in a fixed order. In a real conversation, the Scrum Team moves back and forth between them.

### The why plane: clarify the outcome

The why has two levels. The Product Goal gives the direction for the whole Product. Each item should then serve an outcome that moves the Product in that direction.

The SGEP separates Acceptance Criteria in combination with the Definition of Output Done, which say when the output is complete, from Outcome Criteria, which describe the why behind the what[^3]. A team can deliver exactly what was asked for and still miss the outcome. Good questions to ask:

- Which problem or opportunity does this item address, and for whom? Name a role you could later ask whether it worked.
- How does it help reach the Product Goal?
- How will the Scrum Team know it made a difference?
- What does it cost to do it later, or not at all?
- What result would show the idea was wrong? Would the team then stop, change course, or carry on, and who decides?

Not every small slice needs its own measure. Often the measure belongs to the larger item or opportunity the slice came from, and the slice inherits it. What matters is that the Scrum Team can name the outcome and how it will be checked.

If nobody can answer these questions, the item is not ready, however detailed it is. It may need discovery, or it may not be worth doing.

### The what plane: understand what is expected

Once the why is clear, the Scrum Team and Stakeholders work out what is expected. Concrete examples work very well. Matt Wynne's Example Mapping sorts the conversation into rules, examples, and open questions, and quickly shows when an item is too big or too vague[^12]. Gojko Adzic's Specification by Example turns such examples into automated acceptance tests[^13]. The "Three Amigos" practice brings business, development, and testing views together[^17]. The Holistic Testing expansion covers these practices in more depth.

The result is usually a set of clear Acceptance Criteria that add to the Definition of Output Done without repeating it[^3].

### The how plane: explore the solution

The Product Developers look at the options for building the item and at the effect on the overall design. They look for risks and dependencies: on other teams, suppliers, data, infrastructure, special skills, or legal decisions. A dependency found during Refinement can be resolved or avoided. A dependency found during the Sprint blocks the work. If the Scrum Team does not know enough to approach an item, a short, timeboxed spike usually beats a long debate.

### Across the planes: slice vertically and right-size

Large items are split into smaller ones that can each be finished within a few days. Small items flow better, bring feedback sooner, and put the Sprint Goal at less risk.

A vertical slice cuts through every layer needed to deliver something usable and useful, however small. A horizontal slice produces parts that deliver nothing on their own, so feedback has to wait until the last part is done. In software, "database first, then the service, then the screen" is a horizontal split. In a service, so is "write all the procedures, then train all the staff, then open the desk". A vertical slice of that service would serve one type of customer from start to finish.

Bill Wake's INVEST describes good items: Independent, Negotiable, Valuable, Estimable, Small, and Testable[^10]. Richard Lawrence's splitting patterns show practical ways to slice, for example by workflow steps, business rules, or data types, or by starting with the simple case[^11]. Jeff Patton's story mapping shows slices in the context of the whole user journey[^6]. Shorter Sprints usually need better slicing[^3], a skill the whole Scrum Team builds through practice. Because a different slice can mean different value, the Product Owner takes part in slicing.

On size, this expansion recommends right-sizing over detailed estimation. The Product Developers, and nobody else, are responsible for sizing[^3]. The question is simple: can this be finished within a few days? If not, the item is split further. An estimate can still be useful as a conversation starter. When people see the size of an item differently, they understand it differently, and that is worth talking about.

For forecasts, flow metrics based on what actually happened work well: throughput (items finished per week or Sprint), cycle time (how long an item takes from start to finish), work item age, and work in progress[^22]. Cycle time shows what "small enough" really means for the team. Throughput supports forecasts, for example with Monte Carlo simulations, which the SGEP names as a complementary practice[^3]. Right-sized items do not need to be the same size. They all fit under the same limit, so counting them is enough.

### Across the planes: order

The Product Owner guides the ordering of the Product Backlog, always with value in mind[^3]. Refinement provides what ordering needs: value, risk, what can be learned, dependencies, and Cost of Delay[^14]. It can show that an item should move up because it removes a big risk, or down because it depends on something still unknown.

## Refinement and discovery

Talking is not always enough to make an item ready. Sometimes the Scrum Team does not know whether the problem is real, whether users will change their behavior, or whether a solution can be built. The SGEP includes such research in Refinement[^3].

Teresa Torres' opportunity solution tree helps here. Start from a desired outcome, map the opportunities that could lead to it, come up with several solutions for the most promising one, and test the riskiest assumptions with small experiments[^15]. This discovery work is visible in the Product Backlog and the Sprint Backlog, and its results feed Refinement.

Balance matters. The SGEP warns against a "feature factory", where items are built without questioning their value, and just as much against a "discovery factory", where research never turns into Increments[^3]. Every Sprint produces at least one Increment, and feedback from real use counts most.

## Who takes part, and when

### Refinement belongs to the whole Scrum Team

The Product Owner often supports or facilitates Refinement[^3]. This expansion recommends that the whole Scrum Team owns it. When the Product Owner refines alone and hands over finished items, the Product Developers get documents without understanding, and the Product Owner becomes a bottleneck. When the Product Developers refine alone, they lose touch with value and with Stakeholders.

Stakeholders often make the difference, because they know the domain, the users, and the limits the Scrum Team works within. Product Developers should be encouraged to work directly with them[^3]. The better the Product Developers understand the Product, the more the Product Owner can Focus on Product ownership. The Product Thinking expansion also suggests inviting customers and users.

The Scrum Master helps by leading sessions when useful, coaching slicing and working with examples, and removing obstacles such as missing Stakeholders or open dependencies on other teams.

### A rhythm that works well: two sessions per two-week Sprint

Informal Refinement alone rarely works, because urgent Sprint work pushes it aside. One long meeting does not work either. It is tiring and leaves no time to look into open questions.

What works well in a two-week Sprint is two formal sessions, one per Sprint week. The whole Scrum Team takes part, and each session takes one to two hours. Start with one hour, then inspect and adapt.

An item usually visits a Why/What session first and a What/How session later. A simple item can pass through both in the same week. An item with open questions waits for a later What/How session, once the answers are in.

#### Session 1: Why/What Refinement

The Scrum Team takes part, joined by Stakeholders where helpful. The Product Owner explains the upcoming work and gives context, and Stakeholders add their view. The conversation stays high-level, focuses on outcomes, and often looks further ahead than the next Sprint.

**The why plane.** Before looking at any item, everyone reminds themselves where the Product is heading. The Product Goal Canvas[^19] is a helpful reference. It shows on one page:

- The Vision: the bigger picture the Product Goal is a stepping stone towards.
- The Product Goal: what the Scrum Team wants to achieve, and by when.
- The Description: the narrative behind the Product Goal. It connects the past (why are we here), the future (what we expect), and the present (what this means today).
- The Valuable Outcome and Measures: the outcome the Product will create if the Product Goal is reached. Leading measures guide the work, and lagging measures confirm the outcome. Each measure states where it stands today and where it should be by the Product Goal's date.
- The Stakeholders: users, influencers, providers the Scrum Team depends on, and internal and external governance.
- The Risks: what the Scrum Team knows about and what it fears.
- The limits: what the Product Goal deliberately does not chase.
- The Scrum Team working towards the Product Goal.

![Product Goal Canvas](/refinement/2026.11/images/product-goal-canvas.png)
Product Goal Canvas, version 1.0, © 2021 Ralph Jocham, licensed under CC BY-NC-SA 2.0. Included in this expansion with permission of the author. This permission does not change the license of the canvas itself: outside this document, the canvas remains under CC BY-NC-SA 2.0. The latest version is available at effectiveagile.com.

With the canvas in view, everyone can check whether the upcoming work really moves the Product towards the Product Goal. Its Stakeholders show whom to invite, and its risks point to items that need early attention. It also shows early when the Product Goal itself needs to change. Items that do not serve the direction are questioned here, before anyone works on their details.

Then, for each upcoming item, the conversation covers its own why:

- The problem or opportunity behind it.
- The expected outcome: what should change for customers, users, or the organization, and whom the team could talk to.
- How that outcome will be measured and where it stands today. The measure may belong to a larger objective.
- What the outcome must not cause.

The reference for this plane is the Definition of Outcome Done, which describes the evidence needed to show that benefits were achieved. The SGEP says it is often best to define these measures before the work starts[^3]. Afterwards, it is too easy to read the results the way one wishes.

**The what plane.** With the why clear, the conversation turns to the functionality or change needed, high-level Acceptance Criteria, and the dependencies and risks already known.

The results are a shared understanding of the why, Outcome Criteria, first Acceptance Criteria, first ideas for slices, and open questions to answer before a What/How session.

#### Session 2: What/How Refinement

The Scrum Team takes part, including the Product Owner. The session looks at the items likely to be picked in the next Sprint or two.

**The what plane.** The what from the first session is sharpened, not decided again. The Scrum Team slices the items vertically and turns rough Acceptance Criteria into precise ones and concrete examples.

**The how plane.** Then the Product Developers work out:

- The options for building the item, and which to choose for now.
- Which parts of the Product or system are affected, and what the item means for the overall design.
- Dependencies: on other components, teams, external services, data, or infrastructure.
- Risks, and spikes or experiments to reduce them.
- Whether each item is right-sized or needs to be split further.

The reference for this plane is the Definition of Output Done, the quality standard every Increment must meet[^3]. For each item, the Product Developers ask what that standard means for this piece of work. Which tests are needed? Which security, performance, accessibility, or compliance rules apply? How will it be delivered and monitored?

The how can change the what. If an item turns out much more expensive, risky, or limited than expected, the Product Owner may choose a different slice, a simpler solution, or another trade-off. This back-and-forth between the planes is where much of the value of Refinement lies.

The results are items the Scrum Team is confident about, plus a few spikes or follow-ups for anything still unclear.

> Two sessions, three planes<br>
> Why/What: the direction towards the Product Goal, each item's outcome, and the functionality needed. Reference: the Definition of Outcome Done.
> What/How: the functionality sharpened and sliced, and how to build it. Reference: the Definition of Output Done.

### An example: Sprints that start on Wednesday

Ralph Jocham, the author of this expansion, likes to start his Sprints on a Wednesday. Mondays and Fridays are the days most often lost to public holidays and time off. In a two-week Sprint starting on Wednesday, the Why/What Refinement is on Monday and the What/How Refinement on Thursday of the same calendar week. Because Sprint weeks run from Wednesday to Tuesday, that is still one Refinement per Sprint week.

| Sprint day | Weekday | Event |
|---|---|---|
| 1 | Wednesday | Sprint Planning |
| 4 | Monday | Why/What Refinement (Scrum Team and Stakeholders if meaningful) |
| 7 | Thursday | What/How Refinement (Scrum Team) |
| 10 | Tuesday | Sprint Review and Retrospective |

The two working days between the sessions leave time to answer open questions, talk to users, or run a short spike. After Thursday, three working days remain before the next Sprint Planning, the last of them taken up by the Sprint Review and Retrospective. Pairs and small groups use that time to close the last gaps, so Sprint Planning can Focus on the Sprint Goal.

> Adapting the rhythm for 1 week Sprints.<br>
> Hold one session with two clearly separate parts. For longer Sprints, keep about one session per week and shift the balance depending on how uncertain the upcoming work is.

### Between the sessions: pairs and small groups

Much of the best Refinement happens in pairs and small groups throughout the Sprint. A Product Developer and a Stakeholder work through examples. Two Product Developers try out an option. The Product Owner and a Product Developer split a large item. This is faster than a full-team session, and it spreads Product knowledge across the Scrum Team. The results go back into the next formal session or into the Product Backlog, so everyone stays aligned.

### How much time?

The 2017 Scrum Guide said Refinement usually takes no more than 10% of the Development Team's capacity[^2]. The 2020 Scrum Guide dropped this number[^1]. Around 10% is still a good starting point.

In a two-week Sprint, 10% is about one day per person. The two formal sessions take up a quarter to half of that. The rest goes into work in pairs and small groups, open questions, and short spikes. Teams in new or very uncertain areas may need more for a while, and teams with a stable Product may need less. If Refinement keeps needing much more than 10%, check whether items are refined too early, in too much detail, or by too many people at once.

Plan for this time in Sprint Planning, and do not let Refinement put the Sprint Goal at risk[^3].

### Multiple Scrum Teams

When several Scrum Teams work on one Product, Refinement also helps share out the work and find dependencies between teams. Joint Why/What sessions, followed by What/How sessions in each Scrum Team, work well. The Multi-Team Scrum expansion covers this in more depth.

## Refinement with AI

Deciding what matters, what an item really means, how to slice it, and when it is ready are all human judgment calls. AI can help the Scrum Team prepare for those calls. It should not make them.

Barry O'Reilly's Artificial Organizations offers two useful ideas[^21]. He wrote the book for executives. This expansion applies the ideas to a Scrum Team.

The first idea is an order: traits, then tasks, then tools. Start with how the people on the Scrum Team think and work best, for example by talking, sketching, or working through examples. Then find the tasks where their judgment creates the most value: framing the why, choosing between options, making trade-offs. Only then choose AI tools that support those tasks.

The second idea is that decisions run through a loop: sense, frame, decide, and act. In Refinement, it looks like this:

- **Sense.** AI summarizes user feedback, support tickets, and usage data into possible problems and opportunities. It can also search documents, code, and other teams' backlogs for dependencies.
- **Frame.** The Scrum Team and Stakeholders frame the problem and the desired outcome. AI acts as a sparring partner: it asks critical questions and points out unclear wording and missing cases.
- **Decide.** People decide. The Product Owner orders the Product Backlog, the Product Developers size the items, and the Scrum Team decides together when an item is ready.
- **Act.** AI drafts Acceptance Criteria and examples, suggests ways to slice, and prepares test cases. The Scrum Team reviews, changes, and owns the result.

Used this way, AI makes Refinement sessions shorter and better, because people arrive prepared.

There are four risks to watch:

- **Polish looks like readiness.** AI writes clean items very fast. Early research on AI-improved user stories is promising, but people still need to judge whether an item fits the real situation[^18]. An AI-written item that nobody discusses creates no shared understanding.
- **Anchoring.** A finished draft on the table narrows the conversation. Bring AI output as questions and options, and talk about the why first.
- **Made-up facts.** AI can invent dependencies, rules, or user needs that do not exist. Check what it claims.
- **Confidential data.** User feedback, code, and contracts may not be allowed in every AI tool. Know the rules of the organization before pasting anything in.

O'Reilly also warns that AI exposes weak ways of working. A Scrum Team with a vague Product Goal and no Outcome Criteria will simply produce vague items faster.

> People stay accountable.
> Use AI to sense more, frame better, and arrive prepared. The decisions, and the conversations that lead to them, stay with people.

As AI makes building cheaper, knowing what is worth building becomes the scarce skill, and Refinement matters even more. The AI and Scrum expansion looks at this shift in depth.

## Checking the health of Refinement

The Sprint Retrospective is a good place to inspect Refinement. Signs to watch for:

- **Sprint Planning.** Long, tiring Sprint Plannings often mean Refinement is happening there.
- **Unfinished work and missed Sprint Goals.** Items that often stay unfinished may have been too big or too unclear.
- **Surprises during the Sprint.** Frequent "we didn't know that" moments point to gaps in the What/How conversation.
- **Item size and flow.** Can the items at the top of the Product Backlog be finished within a few days? Is cycle time short and stable?
- **Ready items.** Always less than one Sprint of ready work, or far more than two, are both warning signs.
- **Link to outcomes.** For each item at the top, can the Scrum Team name the outcome it serves and how that outcome will be checked?
- **Looking ahead.** How much Refinement time gets pulled into problems of the current Sprint?
- **Participation.** Do all Product Developers take part? Are Stakeholders there when needed?
- **Hand-overs and gates.** Does the Product Owner write alone? Is "not ready" used to reject work?
- **Results.** Do delivered items achieve the expected outcomes? If not, the why was probably not understood.

## How to put it into action

**For Product Owners**

- Bring the why and work out the rest with the Scrum Team.
- Keep the Product Goal visible, for example with a Product Goal Canvas, and use it in every Why/What Refinement.
- Keep the Product Backlog in shape: detailed at the top, rough further down, and no longer than needed.
- Invite the right Stakeholders, and connect Product Developers with them between sessions.
- Treat "this isn't ready" as an invitation to work together.

**For Product Developers**

- Own Refinement as much as delivery. Understanding the problem is part of the job.
- Ask for the why when it is missing, and question items that do not serve the Product Goal.
- Practice vertical slicing, and use examples to make understanding testable.
- Raise options, risks, and dependencies early, and suggest spikes when talking is not enough.
- Refine in pairs and small groups between sessions, and share the results.

**For Scrum Masters**

- Help set up a Refinement rhythm and protect about 10% of capacity for it.
- Coach slicing, Example Mapping, and other ways to make conversations productive.
- Bring the health of Refinement into the Sprint Retrospective.

**For Stakeholders**

- Make time for Refinement. Your knowledge often turns a vague item into a valuable one.
- Share problems and desired outcomes instead of prescribing solutions.
- Expect to be asked for examples, and expect some requests to be split, changed, or questioned.

**For leaders and Supporters**

- Treat Refinement as real work.
- Give Scrum Teams direct access to users, customers, and Stakeholders.
- Remove organizational dependencies instead of asking Scrum Teams to plan around them.
- Do not use a Definition of Ready or detailed specifications as contracts between departments.

## Summary

Refinement builds shared understanding of the why, the what, and enough of the how for future Sprints. It lowers risk while that is still cheap, keeps work small enough to flow, and links items to outcomes. A Definition of Ready can help ask the right questions, but it should not become a gate to hide behind.

A simple rhythm works well: a Why/What Refinement with Stakeholders, based on the Product Goal and the Definition of Outcome Done; a What/How Refinement within the Scrum Team, based on the Definition of Output Done; and ongoing Refinement in pairs and small groups. Together they take about 10% of the Scrum Team's time. Scrum Teams that refine this way can expect shorter Sprint Plannings, fewer missed Sprint Goals, and more of their work to matter.

## References

[^1]: Schwaber, K. and Sutherland, J. (2020) The Scrum Guide. Available at: https://scrumguides.org/scrum-guide.html (Accessed: 26 September 2026).

[^2]: Schwaber, K. and Sutherland, J. (2017) The Scrum Guide. Available at: https://scrumguides.org/revisions.html (Accessed: 26 September 2026).

[^3]: Sutherland, J., Jocham, R. and Coleman, J. (2026) Scrum Guide Expansion Pack. Available at: https://scrumexpansion.org/scrum-guide-expanded/2026.1/ (Accessed: 26 September 2026).

[^4]: Beck, K. et al. (2001) Manifesto for Agile Software Development. Available at: https://agilemanifesto.org (Accessed: 26 September 2026).

[^5]: Jeffries, R. (2001) Essential XP: Card, Conversation, Confirmation. Available at: https://ronjeffries.com/xprog/articles/expcardconversationconfirmation/ (Accessed: 26 September 2026).

[^6]: Patton, J. (2014) User Story Mapping: Discover the Whole Story, Build the Right Product. Sebastopol, CA: O'Reilly Media.

[^7]: Jakobsen, C.R. and Sutherland, J. (2009) 'Scrum and CMMI – Going from Good to Great: are you ready-ready to be done-done?', Agile Conference 2009. Chicago, IL: IEEE.

[^8]: Sutherland, J., Coplien, J.O. and The Scrum Patterns Group (2019) A Scrum Book: The Spirit of the Game. Raleigh, NC: Pragmatic Bookshelf. Pattern "Definition of Ready" available at: https://scrumbook.org/value-stream/product-backlog/definition-of-ready.html (Accessed: 26 September 2026).

[^9]: Cohn, M. (n.d.) The Dangers of a Definition of Ready. Mountain Goat Software. Available at: https://www.mountaingoatsoftware.com/agile/the-dangers-of-a-definition-of-ready (Accessed: 26 September 2026).

[^10]: Wake, B. (2003) INVEST in Good Stories, and SMART Tasks. XP123. Available at: https://xp123.com/invest-in-good-stories-and-smart-tasks/ (Accessed: 26 September 2026).

[^11]: Lawrence, R. and Green, P. (n.d.) The Humanizing Work Guide to Splitting User Stories. Humanizing Work. Available at: https://www.humanizingwork.com/the-humanizing-work-guide-to-splitting-user-stories/ (Accessed: 26 September 2026).

[^12]: Wynne, M. (2015) Introducing Example Mapping. Cucumber. Available at: https://cucumber.io/blog/bdd/example-mapping-introduction/ (Accessed: 26 September 2026).

[^13]: Adzic, G. (2011) Specification by Example: How Successful Teams Deliver the Right Software. Shelter Island, NY: Manning Publications.

[^14]: Reinertsen, D.G. (2009) The Principles of Product Development Flow: Second Generation Lean Product Development. Redondo Beach, CA: Celeritas Publishing.

[^15]: Torres, T. (2021) Continuous Discovery Habits: Discover Products that Create Customer Value and Business Value. Bend, OR: Product Talk LLC.

[^17]: Dinwiddie, G. (2011) 'The Three Amigos: All for One and One for All', Better Software, 13(6), November/December, pp. 24–27.

[^18]: Zhang, Z. et al. (2024) 'LLM-Based Agents for Automating the Enhancement of User Story Quality: An Early Report', in Agile Processes in Software Engineering and Extreme Programming (XP 2024). Cham: Springer. Available at: https://link.springer.com/chapter/10.1007/978-3-031-61154-4_8 (Accessed: 26 September 2026).

[^19]: Jocham, R. (2021) Product Goal Canvas, version 1.0. effective agile. Available at: https://effectiveagile.com/canvases/product-goal-canvas/ (Accessed: 27 September 2026). Licensed under CC BY-NC-SA 2.0.

[^20]: Poppendieck, M. and Poppendieck, T. (2003) Lean Software Development: An Agile Toolkit. Boston, MA: Addison-Wesley.

[^21]: O'Reilly, B. (2026) Artificial Organizations: Build Better Judgment, Speed, and Results with Human and Machine Intelligence. ISBN 9781067626327. Book website: https://artificialorganizations.com/ (Accessed: 27 September 2026).

[^22]: Vacanti, D. and Yeret, Y. (2021) The Kanban Guide for Scrum Teams. Scrum.org. Available at: https://www.scrum.org/resources/kanban-guide-scrum-teams (Accessed: 27 September 2026).
