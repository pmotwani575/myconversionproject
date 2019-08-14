import os
import numpy as np
import pandas as pd
import pickle
from datetime import datetime
import requests

# Where USD is the base currency you want to use
json_url = 'https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency=USD&to_currency=BTC&apikey=TLPB5KRYPO2BX23A'
cache_path = '{}.pkl'.format(json_url).replace('/','-')

# Making our request
response = requests.get(json_url)
data = response.json()

# Your JSON object
print(data)
