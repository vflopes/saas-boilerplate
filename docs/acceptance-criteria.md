# Acceptance Criteria Guidelines

## For User Stories and Technical Tasks

## 1. Purpose of Acceptance Criteria

Acceptance Criteria (AC) define when a specific backlog item is correct.

They answer one question only:

> How do we know this item does what it is supposed to do?

Acceptance Criteria:

- Do NOT explain how to implement something
- Do NOT replace the Definition of Done
- Do NOT describe architecture or design decisions

They define observable behavior and constraints.

## 2. Scope and Ownership

### What Acceptance Criteria apply to

- User Stories
- Technical Tasks
- Experiments (when behavior must be validated)

### What Acceptance Criteria do NOT apply to

- Milestones / Outcomes
- Hypotheses
- Bets
- Architectural Decisions (ADRs)

Each backlog item has its own Acceptance Criteria.

## 3. Core Principles

### 3.1 Acceptance Criteria must be testable

Each criterion must be verifiable by:

- A human (manual test)
- Or an automated test

If you cannot clearly say “this passed” or “this failed”, the criterion is too vague.

Good:

- User is informed when the password does not meet strength requirements.

Bad:

- Password validation should be user-friendly.

### 3.2 Focus on behavior, not implementation

Acceptance Criteria describe what happens, not how it is built.

Avoid:

- UI layout details
- Internal method names
- Database structures
- Technology choices

Good:

- The sign-up process does not proceed if CAPTCHA validation fails.

Bad:

- The frontend must call reCAPTCHA v3 before submitting the form.

### 3.3 Describe observable outcomes

Write Acceptance Criteria from the perspective of:

- The user
- Or the system’s externally visible behavior

Good:

- The user receives clear feedback when verification fails.

Bad:

- An exception is thrown when verification fails.

### 3.4 Keep Acceptance Criteria specific to the item

Acceptance Criteria apply only to the current backlog item.

Do not repeat:

- Code review rules
- Testing standards
- Deployment requirements

These belong in the Definition of Done.

## 4. Structure and Formatting

### 4.1 Recommended format

Use a simple checklist:

## Acceptance Criteria

- [ ] Condition or behavior
- [ ] Another condition or behavior

This makes it:

- Easy to read
- Easy to review
- Easy to validate

### 4.2 Group criteria when helpful

If an item has multiple dimensions, group them logically.

Example:

## Acceptance Criteria

### Validation Rules

- [ ] Rule A
- [ ] Rule B

### Feedback Behavior

- [ ] Feedback is shown immediately
- [ ] Feedback explains the failure

## 5. Writing Acceptance Criteria for User Stories

Focus on:

- User-visible behavior
- Validation rules
- Feedback
- Error handling
- Edge cases

Example:

User Story:
User receives clear feedback when password does not meet strength requirements

Acceptance Criteria:

- The user is required to define a password during sign-up.
- The password must meet all defined strength rules.
- If any rule is not satisfied, the user receives immediate feedback.
- Feedback clearly indicates which rule(s) are failing.
- Password validation feedback updates as the user types.

## 6. Writing Acceptance Criteria for Technical Tasks

Focus on:

- System behavior
- Constraints
- Invariants
- Failure handling
- Security and consistency

Avoid low-level implementation details.

Example:

Technical Task:
System prevents reuse of a verified email or phone number across multiple accounts

Acceptance Criteria:

- The system prevents more than one account from being associated with the same verified email address or phone number.
- Only ownership factors that have been successfully verified are considered in use.
- If a verified ownership factor is already associated with another account, the operation does not proceed.
- The user receives clear guidance when the operation cannot be completed.

## 7. Common Mistakes to Avoid

### Mixing Acceptance Criteria with Definition of Done

Do not include:

- Code is reviewed
- Tests are written
- Deployed to staging

These belong in the Definition of Done.

### Writing Acceptance Criteria as implementation steps

Avoid:

- The backend must…
- The database must…
- The UI must render…

Focus on what happens, not how.

### Being vague or subjective

Avoid words like:

- Fast
- Easy
- User-friendly
- Secure enough

If it cannot be objectively verified, rewrite it.

## 8. Acceptance Criteria and Definition of Done

Acceptance Criteria and Definition of Done work together:

An item is Done when:

- All Acceptance Criteria are met
  AND
- The Definition of Done is met

They are complementary, not interchangeable.

## 9. When to Write Acceptance Criteria

Acceptance Criteria should be written:

- Before implementation starts
- During refinement or planning
- When uncertainty exists about expected behavior

They should be reviewed and clarified before coding, not after.

## 10. Final Guideline

When writing Acceptance Criteria, always ask:

“If someone else picked this up tomorrow, would they know exactly what success looks like?”

If the answer is yes, your Acceptance Criteria are good.
