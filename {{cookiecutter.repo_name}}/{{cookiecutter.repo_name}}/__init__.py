from pyramid.config import Configurator


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """

    config = Configurator(settings=settings)

    config.include('pyramid_{{ cookiecutter.template_language }}')
    config.add_static_view('static', 'static', cache_max_age=3600)

    config.include('cornice')
    config.include('cornice_swagger')

    config.add_route('apidocs', '/apidocs')

    config.add_route('home', '/')
    config.scan()
    return config.make_wsgi_app()

