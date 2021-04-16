"""
WSGI config for django_redis_demo project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application
from dotenv import load_dotenv

load_dotenv(dotenv_path=os.path.join(os.path.dirname(os.path.dirname(__file__)), '.env'))


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'django_redis_demo.settings')

application = get_wsgi_application()
