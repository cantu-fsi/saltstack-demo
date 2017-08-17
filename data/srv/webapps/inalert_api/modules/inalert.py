#!/usr/bin/env python

import json
import re
import urllib2


def process_request(user_id, text):
    '''Returns (response[str], error[bool])'''
    pass


def send_response(bot_id, user, resp):
    '''Sends a message to groupme'''
    pass


def set_alert(user_id, lon, lat):
    return 'I do not currently support subscribe'


def del_alert(user_id, lon, lat):
    return 'You have been unsubscribed from this portal'
