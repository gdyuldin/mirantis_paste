FROM python:2

WORKDIR /opt/app

RUN git clone https://git.openstack.org/openstack-infra/lodgeit . && \
    pip install -r requirements.txt psycopg2

COPY wsgi.py /opt/app/
EXPOSE 5000

ENV 'DBURI=sqlite:////tmp/lodgeit.db'

CMD ["python", "-m", "werkzeug.serving", "-b", "0.0.0.0:5000", "wsgi:app"]
