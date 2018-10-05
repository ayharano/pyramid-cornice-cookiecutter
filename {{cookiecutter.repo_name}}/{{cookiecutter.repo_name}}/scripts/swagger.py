import json

import click

from {{ cookiecutter.repo_name }}.swagger import _openAPI_spec


@click.group()
def swagger():
    pass


@swagger.command(name='extract')
def extract():
    print(json.dumps(_openAPI_spec()))
