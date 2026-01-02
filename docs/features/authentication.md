# Authentication

This section provides an overview of the authentication features implemented in the SaaS boilerplate. It covers user registration, login, password management, and session handling.

- [Authentication](#authentication)
  - [Password management](#password-management)
    - [Password strength](#password-strength)
  - [Abuse prevention](#abuse-prevention)
    - [reCaptcha](#recaptcha)
  - [Administration](#administration)
    - [Cleanup unverified users](#cleanup-unverified-users)

## Password management

### Password strength

Password strength requirements are enforce by the following rules:

- Minimum length of 8 characters
- At least one uppercase letter
- At least one lowercase letter
- At least one digit
- At least one special character (e.g., !@#$%^&\*)

Those rules are validated both on the client-side (frontend) and server-side (backend, by AWS Cognito) to ensure security and a consistent user experience.

<details>
<summary><b>Related backlog items</b></summary>
<ul>
<li>User Story: vflopes/saas-boilerplate#15</li>
</ul>
</details>

## Abuse prevention

### reCaptcha

To prevent abuse during user registration and login, the SaaS boilerplate integrates Google reCaptcha. This helps to mitigate automated attacks and ensures that only legitimate users can create accounts or access the system.

<details>
<summary><b>Related backlog items</b></summary>
<ul>
<li>User Story: vflopes/saas-boilerplate#16</li>
</ul>
</details>

## Administration

### Cleanup unverified users

To maintain the integrity of the user database, unverified users who do not complete the email verification process within a specified timeframe (e.g., 24 hours) are automatically deleted. This cleanup process helps to reduce clutter and potential security risks associated with inactive accounts.

To be considered verified the user must prove ownership of the email address or phone number used during registration by clicking on a verification link sent to that email.

<details>
<summary><b>Related backlog items</b></summary>
<ul>
<li>User Story: vflopes/saas-boilerplate#17</li>
</ul>
</details>
