if [[ $APP_MODE == "api" ]]
then
    echo "Running in api mode"
    python manage.py migrate 
    python manage.py collectstatic --noinput
    gunicorn django_redis_demo.wsgi:application --bind 0.0.0.0:8000 
else
    echo "No mode selected";
fi