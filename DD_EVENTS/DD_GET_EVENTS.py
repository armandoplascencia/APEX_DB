from datadog import initialize, api
import time

options = {
        'api_key': '7d708b093319ed02d93adbb5bf694889',
        'app_key': '12a419878abd82a6790373d42576544f8d9d3650'
}

initialize(**options)

end_time = time.time()
start_time = end_time - 100

api.Event.query(
         start=start_time,
           end=end_time,
      priority="normal",
          tags=["-env:dev,application:web"],
 unaggregated=True
	    )
	    
