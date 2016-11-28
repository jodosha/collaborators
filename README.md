# Collaborators

Hanami workshop at RubyDay 2016

This project is a leaderboard for the collaborators of a GitHub organization.
The goal is to rank people according to the sum of their contributions across the repositories of an organization.

## Tasks

Some tasks are already implemented, while others are part of the assigment.

  - [x] GitHub authentication (via OmniAuth)
  - [x] Project authentication (via Warden)
  - [x] Fetch GitHub organizations for a given user
  - [x] List the organizations
  - [ ] Let the user to activate an organization
  - [ ] For each active organization, fetch and store the repositories
  - [ ] For each repository, fetch and store the commits from the main branch
  - [ ] Show the leaderboard on the page of each active organization
  
## Guidelines

If you're stuck, ask in [chat](https://gitter.im/hanami/rubyday).
Please try to be collaborative each other. By helping other people, you can learn yourself.

Please try to use "feature tests" to prove that your code works. There are examples in `spec/web/features`.

---

[@jodosha](https://github.com/jodosha) created a testing organization to play with. Ask him for the access.

This testing organization, has also an OAuth2 application for authentication.
Please check it here: https://github.com/organizations/hanami-workshop/settings/applications/443165 and copy the "Client Secret" in your [`.env.development`](https://github.com/jodosha/collaborators/blob/master/.env.development#L6)

---

## Goals

Have fun!

:cherry_blossom:
