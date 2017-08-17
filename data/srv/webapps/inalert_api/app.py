#!/usr/bin/python
'''
A basic bottle app skeleton
'''

import bottle
import ConfigParser
import json

from modules.inalert import process_request, send_response


app = application = bottle.Bottle()

conf = ConfigParser.SafeConfigParser({
    'bot_id': None,
    'bot_group_id': None})
conf.read('/etc/inalert.ini')


@app.post('/')
@app.post('/api')
def read_api():
    # Read post data
    try:
        j = bottle.request.json
        gid = j['group_id']
        user_name = j['name']
        user_id = j['user_id']
        text = j['text']
    except:
        print('Error reading post body')
        return None

    # Verify this application is configured to handle this group
    if gid != conf.get('bottle', 'bot_group_id'):
        return None

    # Process request
    resp = process_request(user_id, text)

    # If any response was returned, send this message back
    if resp:
        send_response(conf.get('bottle', 'bot_id'), user_name, resp)
