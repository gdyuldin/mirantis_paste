import os
from lodgeit.application import make_app


app = make_app(
    # the path to the database
    dburi=os.environ.get('DBURI'),
    # generate with os.urandom(30)
    secret_key=os.environ.get('SECRET_KEY', '')
)

