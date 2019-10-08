# Stackoverflow and Slack
Integration between Stackoverflow and Slack for your Slack workspace workspace. 

Every 30 minutes, a GitHub Action will run, which pings the StackOverflow API for new questions with your desired tag. 

If there are new questions, it posts them to the Slack Channel in which your Slack WebHook points to. 

Every even numbered day of the month at 11 AM UTC time, un-answered questions will be re-posted. 


## How to use this repo
1) [Create a slack app](https://api.slack.com/start) and generate a [webhook](https://api.slack.com/incoming-webhooks). 
2) Add the webhook as a `secret` under the settings of your repo with the name __SlackWebHook__.
3) In the `SlackIntegration.yml` file, you will need to change `NameOfStackOverflowTag` to the name of the Stack Overflow tag you want to get the questions for. This repo does not currently support multiple tags. 
4) Repeat step 3 above except with `RePostSlackIntegration.yml`. 
5) You should be all set! Enjoy the integration.

## Current state
This repo is very much still WIP. All feeedback / suggestions / feature requests are welcome! Just open an issue on this repo. 

## Resources
YML Check: https://yamlchecker.com

Python SO API Package: https://stackapi.readthedocs.io/en/latest/user/complex.html

Curl to Python conversion: https://curl.trillworks.com/#python

Slack Message formatting check: https://api.slack.com/docs/messages/builder?msg=%7B%22text%22%3A%20%22This%20is%20a%20line%20of%20text.%5CnAnd%20this%20is%20another%20one.%22%7D

GitHub Action Scheduling Docs: https://help.github.com/en/articles/events-that-trigger-workflows#scheduled-events-schedule

