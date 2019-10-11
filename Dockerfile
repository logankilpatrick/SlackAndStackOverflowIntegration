FROM python:3

ADD my_script.py /

RUN pip install stackapi

CMD [ "python", "./.github/workflows/StackOverflow.py ${{ secrets.SlackWebHook }} Julia" ]

#TODO: Replace Julia with NameOfStackOverflowTag
