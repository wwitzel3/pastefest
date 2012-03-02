from pyramid.config import Configurator
from sqlalchemy import engine_from_config

from .models import DBSession

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    settings['sqlalchemy.url'] = os.environ['HEROKU_SHARED_POSTGRESQL_IVORY_URL']
    settings['sqlalchemy.pool_size'] = 20
    settings['sqlalchemy.max_overflow'] = 0

    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)

    config = Configurator(settings=settings)
    config.add_static_view('static', 'static', cache_max_age=3600)

    config.add_route('index', '/')
    config.add_route('js', '/paste/{id}.js')
    config.add_route('view', '/paste/{id}')

    config.scan()
    return config.make_wsgi_app()

