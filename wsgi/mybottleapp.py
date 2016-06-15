from bottle import route, get, post, template, run, error, request, static_file, default_app
from lxml import etree
 
@route('/')
def principal():
    return template('index.tpl')
    
@route('/artistas')
def search():
    return template('artistas.tpl')

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
