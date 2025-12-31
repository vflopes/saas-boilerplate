# Authentication

This section provides an overview of the authentication features implemented in the SaaS boilerplate. It covers user registration, login, password management, and session handling.

- [Authentication](#authentication)
  - [Password management](#password-management)
    - [Password strength](#password-strength)

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
