from bottle import route, get, post, template, run, error, request, static_file, default_app
from lxml import etree

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')

 
@route('/')
def principal():
    return template('inicio')

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
