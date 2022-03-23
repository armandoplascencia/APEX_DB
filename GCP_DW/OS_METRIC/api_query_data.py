from datadog import initialize, api
from time import time
from json import dump

options = {'api_key': '7d708b093319ed02d93adbb5bf694889',
           'app_key': '12a419878abd82a6790373d42576544f8d9d3650'}

initialize(**options)

end = int(time())  # Specify the time period over which you want to fetch the data in seconds
#start = end - 3600
start = end - 604800
query = '<METRIC>{*}'  # Enter the metric you want, see your list here: https://app.datadoghq.com/metric/summary.
                              # Optionally, enter your host to filter the data, see here: https://app.datadoghq.com/infrastructure
#results = api.Metric.query(start=start - 3600, end=end, query=query)
results = api.Metric.query(start=start - 604800, end=end, query=query)

with open("DD_<METRIC>.json", "w") as f:
  dump(results, f)
  #  This creates a file named output.json in the current folder
