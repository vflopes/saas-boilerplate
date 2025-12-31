# Backlog Structure Guide

## Outcome-Driven Backlog for a SaaS Platform

## 1. Backlog Philosophy

This backlog is **outcome-oriented**, not feature-driven.

> We do not start by building features.  
> We start by defining outcomes, forming hypotheses, placing bets, and validating them through experiments.

The backlog is a **decision system**, not a task list.

## 2. Core Backlog Items

The backlog is composed of **five distinct item types**, each with a clear purpose:

1. **Milestones → Outcomes**
2. **Hypotheses → Beliefs to Validate**
3. **Bets → Strategic Commitments**
4. **Experiments → Learning Vehicles**
5. **Delivery Items → User Stories / Technical Tasks**

Each item answers a **different question** and operates at a different level of decision-making.

## 3. Item Definitions

### 3.1 Milestones (Outcomes)

**Purpose**  
Define _what change in the world we want to see_.

**What they represent**

- A measurable improvement
- A reduction of risk
- A capability unlocked

**They are NOT**

- Features
- Deadlines
- Task collections

**Examples**

- Secure Multi-Tenant Authentication Ready
- Compliance-Ready Analytics with Explicit Consent
- Experimentation Platform Validated

**Key characteristics**

- Few in number
- Long-lived
- Outcome-focused

A Milestone exists until the outcome is achieved or intentionally abandoned.

### 3.2 Hypotheses

**Purpose**  
Make assumptions explicit and testable.

**Definition**  
A hypothesis is a belief that links an action to an expected outcome.

**Recommended format**

```
We believe that [doing X]
will result in [outcome Y]
as measured by [signal Z].
```

**Examples**

- We believe that passwordless authentication will reduce login friction without increasing account recovery incidents.
- We believe that explicit consent management will increase user trust and reduce compliance risk.

**Rule**  
If it cannot be measured or falsified, it is not a hypothesis.

### 3.3 Bets

**Purpose**  
Express intentional commitment under uncertainty.

A Bet represents a decision to invest time and effort to validate one or more hypotheses.

**Bets answer**

> Is this worth investing in now?

**Characteristics**

- Time-boxed
- Explicitly risky
- Strategically motivated

**Examples**

- Bet on WebAuthn as the primary MFA mechanism.
- Bet on PostHog as the experimentation and analytics backbone.

A Bet can succeed, fail, or partially validate assumptions. All outcomes are acceptable.

### 3.4 Experiments

**Purpose**  
Generate learning as quickly and cheaply as possible.

**Definition**  
An experiment is the smallest implementation that tests a hypothesis.

**Experiments may include**

- Technical spikes
- MVPs
- Prototypes
- Feature flags
- A/B tests

**Examples**

- Implement WebAuthn only for admin users.
- Run an A/B test on onboarding step order.
- Measure account recovery flow usage before and after passwordless login.

**Key rule**  
Experiments are disposable.  
Learning is not.

### 3.5 Delivery Items (User Stories / Technical Tasks)

**Purpose**  
Turn validated learning into production-ready capabilities.

These are the only backlog items that describe implementation details.

**Types**

- User Stories (user-facing value)
- Technical Tasks (infrastructure, security, refactoring)

**Examples**

- As a tenant admin, I can enforce MFA for all users.
- Implement RBAC policy evaluation per tenant.
- Add consent enforcement to the analytics pipeline.

Delivery items must link to a Hypothesis, Bet, or Experiment.

## 4. How Items Relate

### 4.1 Hierarchy

```
Milestone (Outcome)
    └── Hypothesis
          └── Bet
                └── Experiment
                └── Delivery Item
```

### 4.2 Flow of Thinking

1. Outcome defines _why_
2. Hypothesis defines _what we believe_
3. Bet defines _where we invest_
4. Experiment defines _how we learn_
5. Delivery Items define _what we build_

## 5. Relationship Rules

### Rule 1 — No Orphan Work

Every Delivery Item must link to:

- a Hypothesis, or
- a Bet, or
- an Experiment

If it does not, it is likely waste.

### Rule 2 — Features Are Not First-Class Citizens

Features are not managed as a primary backlog type.

Features:

- Emerge from validated experiments
- Are outcomes of learning
- Are not planning artifacts

### Rule 3 — Experiments Are Not Always User-Facing

Many experiments are:

- Invisible to users
- Technical
- Short-lived

This is expected and healthy.

## 6. End-to-End Example

**Milestone**  
Secure Multi-Tenant Authentication

**Hypothesis**  
We believe that passwordless authentication reduces login friction without increasing support costs.

**Bet**  
Bet on implementing passwordless and WebAuthn before classic MFA.

**Experiments**

- Implement passwordless login for early users.
- Track recovery flow usage.
- Compare login success rates.

**Delivery Items**

- Production-ready passwordless authentication.
- Tenant-level MFA enforcement.
- Hardened account recovery flows.

## 7. Why This Structure Matters

This backlog structure:

- Makes uncertainty explicit
- Reduces waste
- Encourages learning
- Aligns product and engineering thinking
- Scales from solo founders to large teams

The goal is not to deliver more.  
The goal is to learn faster and deliver the right things.

## 8. Final Guidance

If the backlog becomes:

- Task-heavy
- Feature-centric
- Output-driven

Go back up the chain and ask:

Which outcome are we actually trying to change?

That question keeps the system healthy.
