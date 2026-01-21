---
title: Operating Model as a Leadership Decision (Expansion of the SGEP)
subtitle: The organizational preconditions for adaptive value delivery
description: Operating model choice is a leadership decision that determines how organizations learn, adapt, and deliver value. Understand why predictive models fail in dynamic environments and how adaptive operating models enable decentralized decisions and continuous value delivery.
keywords:
- Operating model
- Leadership decision
- Organizational design
- Adaptive operating model
- Predictive operating model
- Value delivery
- Decision-making
- Empiricism
- Organizational adaptability
- Product organizations
author:
  - Martin Hinshelwood
date: 2026-01-18T09:00:00Z
type: guide
lang: en
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
forked_from: scrum-guide-expanded/2025.6
sitemap:
  priority: 0.7
---

License/Copyright: [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)  
Note: This section is included in its original, unaltered form with permission under the terms of the [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/) license. No changes have been made.

---

### Purpose and scope

Operating model choice is a leadership and organizational design decision that constrains or enables the outcomes associated with Scrum. Scrum, as a social technology grounded in empiricism, cannot realize its intended benefits when implemented within a Predictive Operating Model in dynamic market conditions. The following content defines the characteristics of an Adaptive Operating Model and positions product-centric adaptive implementations, including Marty Cagan's Product Operating Model and Scrum.org's Agile Product Operating Model, as non-exclusive approaches that align organizational structure, decision rights, and learning loops to the realities of modern product work.

What follows is a formal reference establishing definitions, assumptions, constraints, and consequences. Predictive models are not inherently wrong; their applicability is contextual. When the business theory embedded in the operating model no longer aligns with the environment, the model becomes a systematic source of waste and reduces the value achievable through Scrum.

## Definitions

### Operating model

An operating model defines the essential structure and mechanisms by which an organization consistently delivers value, translating strategy into actionable workflows, roles, and decision rights - whether through deliberate deployment or emergent adaptation. It is the enduring "way we work" across the organization, shaping how teams, technology, governance, and processes interact to achieve outcomes at scale.

An operating model is not a delivery framework, a set of practices, or a methodology. It is the organizational system within which frameworks and practices operate. It determines:

- How work flows from idea to customer
- How decisions are made and where authority resides
- How priorities are set and changed
- How funding and capacity allocation work
- How accountability is structured
- How learning influences direction
- How governance manages risk while enabling progress

The term "operating model" is used here in this precise organizational sense, not as a synonym for tooling, platforms, or architecture.

### Theory of the business

Every organization operates on an implicit or explicit theory of the business[^3], a set of assumptions about the environment, the organization's mission, who the customer is, what the customer values, and what capabilities are necessary for success. Operating models encode these assumptions into organizational structure and governance. When assumptions no longer align the environment, the operating model becomes a structural impediment, regardless of how well it is executed.

Two questions anchor the theory of the business in value delivery[^3]:

- Who is the customer?
- What does the customer value?

In dynamic environments, a third question becomes equally determinative:

- How quickly must the organization learn and respond for the customer's value to be captured and sustained?

Operating models differ materially in how they answer this third question.

### Stable markets and environments

Stable markets are characterised by predictability and slow change across multiple dimensions:

- **Customer needs and preferences** - What customers value remains consistent over extended periods, changing slowly enough that annual or multi-year planning remains valid.
- **Competitive landscape** - Competition is constrained by capital requirements, distribution barriers, or regulatory protections. Market entry is difficult and infrequent. Competitive positions change slowly.
- **Technology evolution** - Underlying technologies, platforms, and capabilities evolve gradually. Established approaches remain viable for years. Technology changes are incremental rather than disruptive.
- **Regulatory and external constraints** - Laws, standards, and market conditions remain relatively constant, or change through predictable cycles with advance notice.
- **Market information velocity** - Feedback from customers and markets arrives slowly. Product lifecycles are long. Planning horizons can extend years without significant information decay.

In stable markets, competitive advantage comes primarily from execution efficiency, cost reduction, and operational reliability[^4]. Organizations that optimize processes, achieve economies of scale, and deliver consistent quality at low cost capture disproportionate value. Long-range planning and standardization are effective because the future resembles the present.

Truly stable markets were the dominant condition during the industrial era[^4]. Today, even organizations with stable product lines or operational contexts typically operate within broader dynamic market conditions. A utility company may have stable infrastructure operations while facing dynamic competitive pressures from distributed energy, regulatory change, and customer expectations. A manufacturer may produce commoditized components reliably while experiencing rapid shifts in supply chains, customer demands, and technological capabilities. The stable characteristics may apply to specific products, services, or operational domains within an organization, but rarely to the organization's entire competitive environment.

### Dynamic markets and environments

Dynamic markets are characterised by persistent and often rapid change in one or more of the following dimensions:

- **Customer needs and preferences** - What customers value evolves frequently and unpredictably, often exceeds annual or quarterly planning cycles.
- **Competitive landscape** - New entrants, substitute products, and competitive moves occur at high frequency, enabled by low barriers to entry and fast distribution.
- **Technology evolution** - Underlying technologies, platforms, and capabilities change continuously, creating new possibilities and obsoleting existing approaches. AI acceleration of work production further compounds this dynamic by increasing the rate at which options can be explored and delivered, widening the gap between organizations optimized for execution speed and those optimized for learning speed.
- **Regulatory and external constraints** - Laws, standards, and market conditions shift in ways that require rapid organizational response.
- **Market information velocity** - Feedback from customers, users, and markets arrives continuously at daily or faster timescales, making long-range predictions decay rapidly.

In dynamic markets, the primary competitive advantage shifts from execution efficiency to learning speed[^6]. Organizations that can detect change, understand its implications, and respond quickly capture disproportionate value. The distinction between stable and dynamic markets is not binary. Markets exist on a spectrum from stable to dynamic, and the degree of dynamism often varies within an organization across different product lines or customer segments. The key criterion is whether the rate of environmental change exceeds the organization's decision-making and ability to adapt.

## Complexity in Operating Models

Markets differ not only in their rate of change, but in their essential nature. Understanding this distinction is critical for leaders choosing an operating model, yet complexity is often overcomplicated.

Dave Snowden's Cynefin framework[^17] describes different domains of work. For leadership purposes, two domains matter most:

### Simple contexts

Simple contexts have clear cause-and-effect relationships that are predictable and repeatable. Best practices exist and can be codified. When you apply a known solution, you get a known result. Learning and standardization turn complicated problems into simple ones.

In simple contexts:

- Solutions are discoverable through expertise and analysis
- Repeatable processes produce consistent outcomes
- Knowledge accumulation reduces uncertainty
- Standardization improves efficiency and reliability

Most operational work, once understood, becomes simple. Manufacturing processes, transaction processing, and established service delivery models operate in this domain. The predictive operating model excels here because cause-and-effect is knowable and stable.

### Complex contexts

Complex contexts have cause-and-effect relationships that are only understood in retrospect, if at all. Outcomes emerge from interactions between many agents and factors. The same action can produce different results depending on context, timing, and state.

In complex contexts:

- Solutions cannot be known in advance
- Outcomes emerge through experimentation and interaction
- Learning helps adaptation, but does not produce predictability
- Standardization offers no advantage because conditions keep changing

Product work in dynamic markets operates in the complex domain. Customer needs, competitive responses, technology evolution, and regulatory shifts interact in ways that cannot be planned away. No amount of learning converts complex work into simple work. Learning only helps you adapt faster when surprise inevitably occurs.

### Why this matters for operating models

The predictive operating model assumes the work is simple or can be made simple through analysis and planning. It seeks to eliminate variability and standardize execution. This works when cause-and-effect is stable.

The adaptive operating model assumes the work is complex and will remain so. It structures the organization to sense, respond, and learn continuously. It treats variability as information rather than noise, and expects emergence rather than plan conformance.

**The critical leadership error is applying a simple-context operating model to complex-context work.** When leaders assume product development can be planned like manufacturing, they create structural waste. Teams gather requirements that decay before delivery. Plans become outdated before execution. Governance enforces conformance to obsolete assumptions. The organization optimizes for efficiency in execution while the real challenge is speed of learning.

Scrum was designed specifically for complex work[^7]. It assumes outcomes cannot be predicted precisely, that learning must be continuous, and that adaptation is normal rather than exceptional. Scrum therefore requires an operating model aligned to complexity—one that enables fast feedback, distributed decision-making, and continuous adjustment based on evidence.

The choice is not about preference or culture. It is about matching the operating model to the actual nature of the work.

## Scrum outcomes and operating model dependency

Scrum is designed to support empirical product development through transparency, inspection, and adaptation[^7]. Scrum creates learning loops. It does not, by itself, create the organizational conditions required for those loops to influence decisions at the speed and fidelity needed in dynamic markets.

Scrum outcomes depend on:

- Short feedback cycles producing usable information
- Decision rights located where information emerges
- Persistent cross-functional teams capable of delivering increments without excessive dependencies
- A governance and funding model that can change direction based on evidence
- Measures that reward outcomes and learning rather than plan adherence

These conditions are operating-model properties. Scrum can be executed faithfully and still fail to produce meaningful organizational outcomes if the operating model constrains learning, decentralization, and outcome-driven change.

## Operating Model hierarchy

Operating models can be described as a hierarchy of intent and specialization:

- *Operating Model*
  - Predictive Operating Model
  - Adaptive Operating Model
    - Product Operating Model
    - Agile Product Operating Model

The focus here is on the Predictive and Adaptive operating models, and on product-centric adaptive implementations as examples of how an adaptive model can be expressed at scale.

## The Predictive Operating Model

### Core assumption

The environment is predictable enough that organizations succeed through efficiency, standardization, and control.

### Underlying beliefs

The Predictive Operating Model rests on beliefs that were historically compatible with industrial-era markets and certain stable operational contexts[^4]:

- Demand changes slowly and predictably.
- Work can be understood and specified upfront.
- Variability is noise and should be minimized.
- Planning increases certainty more reliably than adaptation.
- Performance improves through specialization and hierarchical coordination.
- Management optimizes throughput by controlling deviation and enforcing standards.

These beliefs are coherent when the environment is stable, the work is repeatable, and the primary economic challenge is unit cost reduction through scale.

### Customer and value assumptions

In the predictive model, customers are assumed to value consistency, reliability, and availability. Value is primarily delivered through:

- Standardized output
- Low variation
- Repeatable quality
- Economies of scale
- Optimized cost structures

This orientation works when competitive advantage is produced by efficiency in delivery rather than by speed of learning.

### Structure and governance pattern

The Predictive Operating Model has several structural characteristics that reinforce one another[^1]:

- Hierarchical decision-making, escalation-based authority
- Functional specialization and departmental silos
- Separation of planning from execution
- Project-based coordination across functions
- Stage gates and approval checkpoints
- Fixed scope, fixed budget, fixed schedule as governance defaults
- Individual accountability mechanisms and utilization-based performance controls

These patterns produce organizational predictability when uncertainty is low and the work is well understood.

### Where it works

The Predictive Operating Model is effective when its assumptions hold. It is appropriate where:

- Work is repeatable and standardizable
- Demand is stable and forecastable
- Changes are infrequent and can be governed centrally
- Variability primarily represents defects rather than information
- Risk is best managed through compliance and standard operating procedures

The model’s success in stable environments is a reason it persists. It is familiar, operationally legible, and measurably efficient when the environment does not require frequent adaptation.

## The Adaptive Operating Model

### Core assumption

The environment is dynamic enough that organizations can only succeed through continuous learning, rapid adaptation, and proximity to customers.

### Underlying beliefs

The Adaptive Operating Model assumes uncertainty is persistent and often irreducible:

- Demand shifts unpredictably and frequently.
- Work cannot be fully known upfront, it emerges through discovery.
- Variability is information and must be surfaced and understood.
- Fast feedback is more reliable than detailed long-range prediction[^6].
- Performance comes from empowered cross-functional teams[^6].
- Direction is provided through goals and constraints, not fixed plans.
- Leadership designs enabling systems rather than controlling execution.

The adaptive model is a coherent response to environments where speed of learning is a primary driver of competitiveness.

### Customer and value assumptions

Adaptive models assume customers’ needs are context-dependent, evolving, and heterogeneous. Value is created by solving current customer problems and capturing emergent opportunities. The central capability is not plan execution, it is:

- Detecting relevant change
- Learning what matters
- Responding quickly enough for that learning to have economic effect

### Structural characteristics

An adaptive operating model is defined by structural properties that make empirical learning operationally meaningful:

- **Outcome-oriented value delivery** - Work is organized around outcomes and value, not around projects, phases, or task completion. Plans exist, but are treated as hypotheses. Governance expects change based on evidence, not exception requests.

- **Decentralized decision rights** - Decision-making authority is intentionally located close to where information emerges[^5], with explicit boundaries and clear escalation criteria. This reduces decision latency and prevents stale information from shaping outcomes.

- **Explicit learning loops** - Learning is 'designed into' the operating model. Feedback from customers, users, systems, and markets is systematically gathered and used to adjust direction. This includes discovery work, delivery validation, and continuous measurement.

- **Generally stable structure with flexible execution** - Teams and accountabilities remain stable over time as the default pattern. The work and priorities change, not the organizational shape. This reduces coordination overhead and builds broad and deep capability. However, stability does not mean rigidity. Intentional team reformation or dynamic reteaming can be a deliberate adaptive practice when organizational learning or strategic shifts require it[^18]. The distinction is between stable-by-default versus constant reorganization, and between intentional reformation versus arbitrary reassignment.

- **Governance that enables flow** - Governance manages risk through transparency, evidence, and fast correction. It avoids stage gates that delay learning and force speculative commitments.

- **Technical excellence as a condition of speed** - In knowledge work, fast adaptation requires low-cost and quick change. Technical excellence reduces the cost and risk of change (and perhaps faster), enabling frequent increments and emergent feedback[^9][^10].

These characteristics create organizational compatibility with empiricism, and therefore compatibility with Scrum's intent.

## Why the distinction matters for Scrum

Scrum is frequently adopted as a team-level process improvement while the organization retains a predictive operating model. In such adoptions, common contradictions arise:

- Teams are asked to adapt within Sprints, while governance demands plan adherence across quarters and years.
- Product Backlogs are treated as contract scope rather than emergent value hypotheses.
- Sprint Review feedback is gathered, but decision rights to respond are held elsewhere.
- Teams are cross-functional in name, but depend on functional departments for completion.
- Product Owners are accountable for value, but are constrained by project funding, fixed scope, and centralized prioritization.

In these conditions, Scrum events may occur, and artefacts may exist, but the learning loops are prevented from influencing organizational behavior. Scrum becomes a reporting structure rather than an empirical system.

This is not primarily a team problem. It is an operating-model incompatibility.

## The Predictive Operating Model in historical context

The predictive model aligns with industrial-era economic conditions that dominated from the late 19th century through much of the 20th century[^4]:

- Demand growth was often stable and long-term.
- Product lifecycles were long.
- Competition was constrained by capital requirements and distribution limits.
- Customer choice was limited by availability and geography.
- Efficiency gains translated directly into market advantage.

In this environment, customers purchased what was available rather than what was custom-fitted to evolving needs. Mass production and standardization created economic value precisely because markets were relatively stable and predictable. Scientific management and early industrial organizational design optimized for throughput and repeatability under these conditions[^4]. Specialization, separation of planning from execution, and hierarchical control created efficiency and reliability.

The model was not an error. It was a rational response to a stable environment and a coherent theory of the business.

However, these stable, supply-constrained markets are less prevent in the current era. Modern markets are characterized by abundant choice, globalized competition, low barriers to entry, and direct customer feedback loops. Customers can and do switch providers rapidly based on experience and value perception. Distribution channels no longer create natural protection. The industrial-era conditions that made predictive models effective have been replaced by customer choice-driven dynamic markets where adaptability matters more than efficiency alone.

## Why the Predictive Operating Model becomes invalid in dynamic markets

The Predictive Operating Model's historical success creates the conditions for its failure. As environmental dynamics accelerate, the assumptions embedded in predictive structures become systematically incorrect. The model generates specific, compounding forms of waste that prevent organizations from adapting quickly enough to remain competitive.

### Environmental mismatch

In dynamic markets, the predictive model’s assumption set becomes systematically incorrect:

- Customer needs evolve faster than planning cycles.
- Technology enables rapid competitive entry and substitution.
- Market information changes continuously, often at daily timescales.
- Regulatory and geopolitical changes can alter constraints rapidly.
- Distribution and feedback channels are shortened, increasing the penalty for slow response.

When the environment shifts, the predictive model degrades poorly. Its governance and structure amplify error.

### Types of waste created by a mismatch

Mismatch produces distinct forms of waste that are structural, not incidental:

- **Planning waste** - Detailed upfront planning consumes capacity while producing plans that decay faster than they can be executed. The organization invests in certainty production rather than learning. Change then requires governance exceptions, escalating the cost of responding to reality.
- **Decision latency waste** - Hierarchical decision-making delays responses to current information. When decisions are made, they are based on stale abstractions rather than current conditions. Teams closest to customers lack the authority to act on what they learn.
- **Handoff and dependency waste** - Functional specialization creates handoffs, queues, and overhead for dependency management. In dynamic contexts, these delays reduce the value of learning because responses arrive late.
- **Innovation waste** - Stage gates and risk controls designed for large capital bets prevent small experiments. This blocks safe-to-learn approaches, forcing organizations into speculative commitments.
- **Measurement distortion waste** - Output-based measures (utilization, "on time and on budget," plan adherence) reward behaviors that suppress transparency and discourage adaptation[^8]. The organization optimizes visible activity or outputs rather than value realisation.
- **Human capability waste** - Treating people as interchangeable 'resources' reduces ownership and undermines team-level learning. Continuous improvement requires teams that evolve their capability, not project staffing cycles.
- **System capability waste** - Optimizing individual teams or functions in isolation degrades overall system performance. Without explicit mechanisms for cross-team coherence and integration, organizations create local efficiency at the expense of end-to-end value delivery.

These wastes reduce Scrum’s effectiveness because Scrum depends on transparency and adaptation. Predictive structures systematically discourage both; they even discourage inspection at times.

### Speed mismatch

In dynamic markets, the organization competes on learning and adaptation speed. Predictive models operate on long horizons, annual budgets, quarterly plans, and multi-month projects. Scrum operates on a Sprint cadence, and modern product learning operates even faster.

When the organization's decision horizon is slower than the market's change horizon, empirical methods cannot produce competitive outcomes. The organization may still deliver outputs, but those outputs increasingly miss current value opportunities.

## Operating models as a leadership decision

Operating model choice is not an optimization problem within delivery teams. It is a system-level decision because it determines:

- Where authority resides
- What behaviors are rewarded
- How strategy becomes action
- How learning influences investment
- How risk is managed
- How accountability is expressed

Scrum adoption without operating model alignment creates a structural contradiction. Teams are held accountable for outcomes while being governed as if outcomes were predictable.

The leadership decision is therefore not "do we use Scrum?" It is:

- Which operating model will the organization use to translate [strategy]({{< ref "/strategy" >}}) into value delivery?
- What assumptions will leadership embed into decision rights, funding, governance, and measurement? Will they become an [adaptive enterprise]({{< ref "/adaptive-enterprise" >}}) or remain a predictive enterprise? [^3]
- Will the organization treat uncertainty as a planning failure, or as a condition requiring adaptiveness?
- Will the organization enable parallel safe-to-fail experiments to manage uncertainty and accelerate learning, or demand sequential approvals and large-batch commitments?

## Operating-model incompatibilities with Scrum outcomes

This section defines specific predictive practices that are incompatible with Scrum outcomes in dynamic contexts, and why.

### Project funding and fixed scope governance

Project funding typically assumes:

- A defined scope can be approved upfront
- Delivery is the execution of that scope
- Variance from plan is treated as failure or mismanagement, rather than as information about changing conditions

Scrum assumes:

- Value is discovered and refined through feedback
- The Product Backlog evolves with learning
- The Product Owner makes ordering decisions continuously

Fixed scope governance treats adaptation as deviation. Scrum treats adaptation as required. The conflict is structural.

A compatible funding approach funds products, value streams, or persistent teams, and expects scope to evolve within strategic boundaries.

Lean-agile procurement and Beyond Budgeting practices[^13] provide complementary approaches that reduce the need for speculative commitments and enable rolling decisions based on evidence.

### Functional silos and dependency-based delivery

Scrum Teams require the skills necessary to create a Done Increment[^6]. Functional silos create dependencies that delay completion and fragment accountability. A team can be labelled "cross-functional" while still relying on other departments for testing, security approval, release, or operations.

Dependencies reduce feedback speed and introduce queueing effects[^9]. This undermines empiricism because learning arrives late and is expensive to act upon.

Adaptive models address this by making teams persistently cross-functional, and by treating functional groups as capability-building communities rather than delivery gatekeepers.

### Utilization and individual productivity controls

Utilization metrics assume the objective is keeping resources busy. In dynamic environments the objective is learning and value. High utilization reduces slack, and slack is required for:

- Discovery work
- Technical improvement
- Incident response
- Experimentation and learning
- Cross-skilling

Utilization-driven systems discourage collaboration and local optimization, and they incentivize starting work rather than finishing value.

Scrum outcomes improve when teams are measured on product outcomes and system capability rather than on individual activity[^8].

### Stage gates and approval chains

Stage gates assume risk is managed by preventing progress until compliance is proven. In dynamic contexts, the primary risk is delayed learning. Gated progress delays discovery of errors and reduces the time available for correction.

Scrum assumes continuous inspection and adaptation. Governance should therefore focus on transparency and fast correction rather than on delayed approval.

## Why adopting an Adaptive Operating Model becomes imperative

In dynamic markets, the predictive model does not merely reduce performance, it constrains growth. Growth depends on:

- Responsiveness to emerging demand
- Ability to exploit new technology quickly
- Retention of capable people through meaningful autonomy and ownership
- Continuous refinement of product-market fit
- Capacity to adapt to external constraints

The predictive model assumes that the main path to growth is execution efficiency. In dynamic markets, the main path to growth is learning and adaptation at speed.

Therefore, adopting an adaptive model is not an improvement initiative. It is a leadership response to an environmental condition.

This framing remains contextual, not moral. Predictive models are appropriate in stable contexts. The issue is the increasing prevalence of dynamic conditions in modern product environments.

## The Adaptive Operating Model as the organizational expression of empiricism

Scrum operationalizes empiricism within a defined structure of roles, artefacts, and events. The Adaptive Operating Model operationalizes empiricism at organizational scale by ensuring:

- The organization can see reality (transparency)
- The organization can learn from reality (inspection)
- The organization can change based on learning (adaptation)

Scrum creates local empirical cycles. The operating model determines whether those cycles can influence strategy, investment, and governance. An adaptive operating model is therefore the organizational mechanism that allows Scrum's empiricism to matter beyond the team boundary.

## Product-centric adaptive implementations

Adaptive operating models are general. Product-centric implementations specialize them for organizations whose primary value delivery mechanism is products.

Two influential product-centric implementations are treated here as distinct and compatible:

- Marty Cagan's Product Operating Model
- Scrum.org's Agile Product Operating Model

They are not mutually exclusive. They emphasize different aspects of the same foundational adaptive properties. Organizations may combine elements of both, provided accountabilities and decision rights remain clear.

### Marty Cagan’s Product Operating Model as an adaptive implementation

A product operating model in Cagan's sense centres on[^11][^12]:

- Product teams oriented to solving customer problems
- Continuous discovery as a first-class discipline[^11]
- Product strategy as an organizational capability
- Empowered teams operating within clear strategic boundaries
- Decision-making anchored in customer outcomes and evidence

This aligns with adaptive operating model characteristics:

- Outcome orientation through problem and opportunity focus
- Decentralized decisions through empowered teams
- Explicit learning loops via discovery and validation
- Stable team structures over project staffing
- Governance enabling fast learning rather than plan compliance

Cagan's framing provides strong emphasis on the product management and discovery system required for modern product success. It highlights the organizational conditions necessary for product teams to act on evidence.

### Scrum.org’s Agile Product Operating Model as an adaptive implementation

Scrum.org's Agile Product Operating Model aligns product value delivery with empiricism and Scrum accountabilities, emphasizing[^8]:

- Persistent teams aligned to products or value streams
- Empirical planning and continuous adaptation
- Clear Product Goals and transparency of progress
- Evidence-based measures of value and capability[^8]
- Coherence across multiple teams working on one product through shared goals and integrated delivery

It operationalizes adaptive principles through explicit connections to Scrum's accountabilities and artefacts. It provides a structured approach to aligning organizational governance and measurement with empirical product development.

### Compatibility and non-exclusivity

These implementations can reinforce each other:

- Cagan’s model strengthens the discovery and product strategy system, clarifying what teams should learn and why.
- Scrum.org’s model strengthens the empirical governance and delivery coherence system, clarifying how learning is integrated into execution and accountability.

The constraint is not conceptual overlap, it is organizational clarity. Combining models requires explicit decisions about:

- Product accountability boundaries
- Decision rights between leadership, product management, and Scrum Teams
- Measures used to guide investment and evaluate outcomes
- Integration mechanisms for multi-team products
- How discovery and delivery interact without creating separate “discovery teams” and “delivery teams”

Done well, the combination increases learning fidelity and delivery reliability. Done poorly, it creates dual operating systems and reintroduces handoffs.

## Beyond Budgeting and lean-agile procurement as enabling mechanisms

An adaptive operating model requires governance and funding practices that tolerate and expect change. Beyond Budgeting and lean-agile procurement provide enabling mechanisms that reduce predictive lock-in:

- Funding horizons become adaptable rather than fixed commitments
- Investment decisions can be revisited based on evidence
- Capacity is allocated to persistent teams rather than projects
- Governance emphasizes transparency, trust boundaries, and measurable outcomes

These approaches are not "agile finance practices" layered onto predictive governance. They are complementary operating-model mechanisms that align financial decision-making with empirical product development.

An organization can execute Scrum and still be unable to act on learning if procurement and budgeting require deterministic plans. Adaptive financial governance reduces this contradiction.

## AI as a forcing function

AI accelerates the rate at which work can be produced, information can be processed, and options can be explored. This does not automatically create customer value. It amplifies the operating model it enters.

Within a predictive model, AI often increases the volume of output while preserving slow decision-making, gated governance, and fixed-scope constraints. The organization becomes capable of producing more work that is still selected, sequenced, and governed based on stale assumptions.

Within an adaptive model, AI accelerates:

- Experimentation cadence
- Time-to-feedback
- Information processing for customer insight
- Automation of delivery and validation practices
- Rapid iteration while preserving quality through engineering discipline

The result is not merely faster delivery, it is faster learning[^10]. Because dynamic markets reward learning speed, AI increases the penalty of predictive governance. Slow decision cycles become more costly when teams can generate validated options quickly.

AI therefore strengthens the case that operating model choice is a leadership imperative. Increased production capacity without increased learning capacity increases waste.

## Operating-model hygiene and regression risk

Organizations frequently attempt to adopt adaptive patterns while maintaining predictive incentives and governance. Over time, regression occurs because predictive practices are familiar and appear to offer control under uncertainty.

Operating-model hygiene is the disciplined practice of:

- Removing structures and governance mechanisms that assume predictability where it does not exist
- Preventing the reintroduction of those mechanisms under pressure
- Creating enabling structures that maintain transparency and decentralized learning

This includes systematic abandonment of[^2]:

- Stage gates that delay learning
- Utilization measures that reduce slack and suppress improvement
- Project staffing cycles that undermine team capability
- Approval chains that centralize decisions away from information

Hygiene is not removal alone. It requires purposeful innovation[^2], building the capabilities that make adaptation safe:

- Modern engineering practices enabling low-risk change[^9][^10]
- Clear outcome measures that guide decentralized decisions
- Explicit boundaries for decision rights and escalation
- Stable team structures with coherent product direction

Without hygiene, Scrum becomes a local practice within a global predictive system, and organizational learning remains constrained.

## Making the transition at operating-model level

Transitioning from predictive to adaptive is a system change, not a process adjustment.[^14] Because predictive elements reinforce each other, partial change produces contradictions:

- Agile teams operating under fixed scope project governance
- Product Owners accountable for outcomes but constrained by centralized decisions
- Cross-functional labels without cross-functional capability
- Inspection events without authority to adapt

System change requires alignment across:

- Structure, persistent cross-functional teams aligned to products or value streams
- Governance, outcome-oriented, evidence-based decision processes
- Funding, capacity and product-based investment models
- Measurement, outcome and capability measures rather than output and utilization
- Leadership behaviors, system stewardship rather than execution control[^15]

Open Space Agile can provide a mechanism for organizational participation in designing these changes within constraints[^16], but it remains an implementation approach rather than the operating model itself. The operating model shift must be explicit and leadership-owned.

## Implications for Scrum practitioners

For Scrum practitioners, the operating model framing clarifies several recurring failure patterns:

- “Scrum does not work here” frequently indicates operating-model incompatibility, not Scrum inadequacy.
- Increasing ceremony fidelity does not compensate for decision-latency and fixed-scope governance.
- Team-level improvements plateau when organizational constraints prevent acting on learning.
- Scaling efforts fail when they add coordination layers instead of improving product coherence and integration capability.

This does not reduce accountability for good Scrum practice. It clarifies where accountability lies:

- Scrum Teams are accountable for creating valuable, Done increments and learning through inspection.
- Leadership is accountable for designing an operating model in which that learning can influence outcomes.

## Conclusion

Operating model choice is a leadership decision that encodes a theory of the business[^3] into organizational structure, decision rights, governance, and measurement. Scrum depends on empiricism[^7]. Empiricism depends on fast feedback and the ability to adapt direction based on evidence. These properties are operating-model properties.

The Predictive Operating Model remains effective where its assumptions hold. In stable environments it can provide efficiency, repeatability, and control. In dynamic markets, its assumptions become systematically invalid. The result is structural waste, decision latency, delayed learning, and diminished ability to capture customer value. Implementing Scrum within a predictive operating model in dynamic conditions produces contradiction: teams are expected to adapt while the organization is designed to prevent adaptation.

The Adaptive Operating Model provides an organizational structure aligned to uncertainty, enabling outcome-oriented work, decentralized decision rights, explicit learning loops, stable teams, and governance that enables flow. Product-centric adaptive implementations, including Marty Cagan's Product Operating Model and Scrum.org's Agile Product Operating Model, provide compatible approaches for organizations delivering value through products. They are not mutually exclusive. They can be combined when accountabilities, decision boundaries, and measures remain explicit.

AI intensifies the consequences of operating model choice. It accelerates production capacity, which increases the cost of slow decision cycles and fixed-scope governance. In adaptive models, AI can accelerate learning and value delivery. In predictive models, it often accelerates output without improving relevance, increasing waste.

For organizations seeking Scrum outcomes in modern product environments, operating model redesign is not optional optimization. It is the prerequisite that makes empiricism effective at organizational scale.

## References

[^1]: Drucker, P.F. (1954) *The Practice of Management*. New York: Harper & Row.

[^2]: Drucker, P.F. (1973) *Management: Tasks, Responsibilities, Practices*. New York: Harper & Row.

[^3]: Drucker, P.F. (2001) 'The Theory of the Business', *Harvard Business Review*, March-April, pp. 1-12.

[^4]: Taylor, F.W. (1911) *The Principles of Scientific Management*. New York: Harper & Brothers.

[^5]: Follett, M.P. (1941) *Dynamic Administration: The Collected Papers of Mary Parker Follett*. New York: Harper & Brothers.

[^6]: Takeuchi, H. & Nonaka, I. (1986) 'The New New Product Development Game', *Harvard Business Review*, January-February, pp. 137-146.

[^7]: Schwaber, K. & Sutherland, J. (2020) *The Scrum Guide*. Available at: [https://scrumguides.org](https://scrumguides.org) (Accessed: 7 January 2026).

[^8]: Scrum.org (2020) *Evidence-Based Management Guide*. Available at: [https://www.scrum.org/resources/evidence-based-management](https://www.scrum.org/resources/evidence-based-management) (Accessed: 7 January 2026).

[^9]: Humble, J. & Farley, D. (2010) *Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation*. Boston: Addison-Wesley.

[^10]: Farley, D. (2021) *Modern Software Engineering: Doing What Works to Build Better Software Faster*. Boston: Addison-Wesley.

[^11]: Cagan, M. (2018) *Inspired: How to Create Tech Products Customers Love*. Second Edition. Hoboken, NJ: John Wiley & Sons.

[^12]: Cagan, M. (2020) *Empowered: Ordinary People, Extraordinary Products*. Hoboken, NJ: John Wiley & Sons.

[^13]: Bogsnes, B. (2016) *Implementing Beyond Budgeting: Unlocking the Performance Potential*. Second Edition. Hoboken, NJ: John Wiley & Sons.

[^14]: Pflaeging, N. & Steinmann, H. (2014) *Organize for Complexity: How to Get Life Back into Work to Build the High-Performance Organization*. Third Edition. Hamburg: BetaCodex Publishing.

[^15]: Laloux, F. (2014) *Reinventing Organizations: A Guide to Creating Organizations Inspired by the Next Stage of Human Consciousness*. Brussels: Nelson Parker.

[^16]: Mezick, D. et al. (2015) *The OpenSpace Agility Handbook*. Connecticut: New Technology Solutions, Inc.
[^17]: Snowden, D.J. and Boone, M.E. (2007) 'A Leader's Framework for Decision Making', *Harvard Business Review*, November, pp. 69-76.
[^18]: Vodde, B. (2015) *Dynamic Reteaming and Organizational Design in LeSS* [Video]. Available at: [https://youtu.be/cxmLO0U6gQ0](https://youtu.be/cxmLO0U6gQ0) (Accessed: 18 January 2026).
