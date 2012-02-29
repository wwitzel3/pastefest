import json
import cgi
import transaction

from pyramid.renderers import render_to_response
from pyramid.view import view_config

from .models import (
    DBSession,
    Paste,
    )

from pyramid.httpexceptions import (
    HTTPFound,
    HTTPNotFound,
    )

@view_config(route_name='index', renderer='create.mako')
def create(request):
    pastes = DBSession.query(Paste.id).order_by(Paste.id.desc()).limit(10)
    return dict(pastes=pastes)

@view_config(route_name='index', request_method='POST')
def create_paste(request):
    session = DBSession()
    paste = Paste(raw=request.params.get('code'))
    session.add(paste)
    session.flush()

    return HTTPFound(location = request.route_url('view', id=paste.id))

@view_config(route_name='view', renderer='view.mako')
def view(request):
    id = request.matchdict.get('id')
    paste = DBSession.query(Paste).get(id)
    embed = cgi.escape('<script src="{0}"> </script>'.format(request.route_url('js',id=id)))
    return dict(id=id, embed=embed, paste=paste)

@view_config(route_name='js')
def embed(request):
    id = request.matchdict.get('id')
    paste = DBSession.query(Paste).get(id)
    escaped_paste = json.dumps(paste.html())
    response = render_to_response('js.mako', dict(escaped_paste=escaped_paste), request=request)
    response.content_type = 'text/javascript'
    response.status_init = 200
    return response
