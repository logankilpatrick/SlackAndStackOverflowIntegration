FROM python:3

LABEL "com.github.actions.name"="Send Stack Overflow questions to Slack"
LABEL "com.github.actions.description"="Monitor a tag on Stack Overflow and then send newly posted questions to Slack"
LABEL "com.github.actions.icon"="cast"
LABEL "com.github.actions.color"="6f42c1"

ADD my_script.py /

RUN pip install stackapi

CMD [ "python", "./.github/workflows/StackOverflow.py ${{ secrets.SlackWebHook }} Julia" ]

#TODO: Replace Julia with NameOfStackOverflowTag
