from bottle import route, get, post, put, template, run, default_app, error, request, static_file, response 
import requests
import json


 
@route('/')
def principal():
    return template('index.tpl')
    
@route('/artistas')
def search():
    return template('artistas.tpl')

@post ('/resultado')
def nombre():
	artist = request.forms.get("artista")
	r = requests.get('http://api.deezer.com/search/album', params={'q':'%s'% artist})
	datos=json.loads(r.text)
	return template('resultado.tpl', data=datos,busqueda=artist)



@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root=os.environ['OPENSHIFT_REPO_DIR']+"wsgi/static")
    
@error(404)
def error404(error):
    return template('error')

# This must be added in order to do correct path lookups for the views

import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
