import json

def first(event, context):
    # TODO implement
    return {
        'body': json.dumps('Hello from Lambda!')
    }