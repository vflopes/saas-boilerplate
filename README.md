# SaaS Boilerplate

When I started this project, I wanted to create a solid foundation for building micro-SaaS applications quickly and efficiently but applying what I had learned from my career as a software engineer, DevOps/SRE, product manager and entrepreneur. Not only from what I learned, but also from the mistakes I made along the way.

This boilerplate is opinionated and designed to follow best practices, but it is also flexible enough to be adapted to different use cases. It includes a variety of features that are commonly needed in SaaS applications. Its a starting point, not a finished product.

## Documentation

- [Backlog Structure Guide](docs/backlog-structure.md)
- [Acceptance Criteria Guidelines](docs/acceptance-criteria.md)
- [Definition of Done](docs/definition-of-done.md)

## Features

- [User authentication](./docs/features/authentication.md) and authorization
- Compliance and data protection
- Product engineering and analytics
- Machine Learning general use cases
- Interfaces: web and mobile

## Repositories

- [saas-python-lib](vflopes/saas-python-lib): A Python library with common functions and utilities for SaaS applications written in Python (e.g., settings loading, reCaptcha validation and etc).
- [saas-infrastructure](vflopes/saas-infrastructure): Infrastructure as Code (Terraform) and operations automation software to provision and manage infrastructure for SaaS applications on AWS.
- [saas-frontend](vflopes/saas-frontend): A React frontend (web) template for SaaS applications, applying all the features packed in the boilerplate, including authentication, user management, consent management and so on.
- [saas-user-management](vflopes/saas-user-management): A microservice for user management in SaaS applications, including authentication, authorization, user profiles, and more.
