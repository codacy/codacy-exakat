[![Codacy Badge](https://api.codacy.com/project/badge/Grade/297acbe7174e492c921cc7ae20194e93)](https://www.codacy.com/project/Codacy/codacy-exakat/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=codacy/codacy-exakat&amp;utm_campaign=Badge_Grade_Dashboard) 
[![Build Status](https://circleci.com/gh/codacy/codacy-exakat.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/codacy/codacy-exakat)

# Codacy-Exakat Docker Container.

[Docker](https://www.docker.com) container to allow support for [Exakat](https://www.exakat.io/) on Codacy.

## Features

* [Exakat](https://www.exakat.io/) [`1.3.6`](https://github.com/exakat/exakat.git)
* [PHP](https://php.net) 7.2

## Dockerfile building

To build the Codacy-Exakat dockerfile : 

1. Clone the source:

    ``` sh
	$ git clone https://github.com/codacy/codacy-exakat.git
	$ cd codacy-exakat
    ```

2. Build the container:

    ``` sh
    $ ./build.sh
    ```

## Docs

[Tool Developer Guide](https://support.codacy.com/hc/en-us/articles/207994725-Tool-Developer-Guide)

[Tool Developer Guide - Using Scala](https://support.codacy.com/hc/en-us/articles/207280379-Tool-Developer-Guide-Using-Scala)

## Test

We use the [codacy-plugins-test](https://github.com/codacy/codacy-plugins-test) to test our external tools integration.
You can follow the instructions there to make sure your tool is working as expected.

## What is Codacy

[Codacy](https://www.codacy.com/) is an Automated Code Review Tool that monitors your technical debt, helps you improve your code quality, teaches best practices to your developers, and helps you save time in Code Reviews.

### Among Codacy’s features

- Identify new Static Analysis issues
- Commit and Pull Request Analysis with GitHub, BitBucket/Stash, GitLab (and also direct git repositories)
- Auto-comments on Commits and Pull Requests
- Integrations with Slack, HipChat, Jira, YouTrack
- Track issues in Code Style, Security, Error Proneness, Performance, Unused Code and other categories

Codacy also helps keep track of Code Coverage, Code Duplication, and Code Complexity.

Codacy supports PHP, Python, Ruby, Java, JavaScript, and Scala, among others.

### Free for Open Source

Codacy is free for Open Source projects.