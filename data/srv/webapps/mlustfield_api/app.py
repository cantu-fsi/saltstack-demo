#!/usr/bin/python
'''
A basic bottle app skeleton
'''

import bottle
import json
import subprocess

app = application = bottle.Bottle()

@app.post('/global_highstate')
def global_highstate():
    # Read post data
    j = bottle.request.json
    if not j['repository']['url'].startswith('https://github.com'):
        response.status = 400
        return None

    target = get_highstate_target(j)
    if not target:
        response.status = 400
        return None

    _evt(target, 'highstate')

    response.status = 201
    return None


@app.post('/rebuild_host')
def rebuild_host():
    # Read post data
    j = bottle.request.json
    if not check_2fa(j['response'], lookup_2fa(j['token'])):
        response.status = 400
        return None

    target = get_rebuild_target(j)
    if not target:
        response.status = 400
        return None

    _evt(target, 'rebuild')

    response.status = 201
    return None


def _evt(target = None, fun = None):
    '''Run an event'''
    # NOTE: This script is managed by salt. It is a wrapper that permits turning
    # a whitelist of parameters into a salt event that the reactor system can use.
    subprocess.call(['/usr/bin/sudo', '/usr/local/sbin/api-mlustfield', target, fun])
