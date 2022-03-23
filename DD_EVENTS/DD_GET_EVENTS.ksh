#!/bin/ksh

#! https://docs.datadoghq.com/api/latest/events/#query-the-event-stream
#! This endpoint returns a maximum of 1000 most recent results. To return additional results,
#! identify the last timestamp of the last result and set that as the end query time to paginate the results.
#! You can also use the page parameter to specify which set of 1000 results to return.
#! 
#! 
#! Name                 TYPE        DESC
#! =================    =======     ===================
#! start [required]     integer     POSIX timestamp.
#! end   [required]     integer     POSIX timestamp.
#! priority             enum        Priority of your events, either low or normal. Allowed enum values: normal, low
#! sources              string      A comma separated string of sources.
#! tags                 string      A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
#! unaggregated         boolean     
#! Set unaggregated to true to return all events within the specified [start,end] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won’t be available in the output. Aggregated events with is_aggregate=true in the response will still be returned unless exclude_aggregate is set to true.
#! 
#! exclude_aggregate
#! boolean
#! Set exclude_aggregate to true to only return unaggregated events where is_aggregate=false in the response. If the exclude_aggregate parameter is set to true, then the unaggregated parameter is ignored and will be true by default.
#! 
#! page
#! integer
#! By default 1000 results are returned per request. Set page to the number of the page to return with 0 being the first page. The page parameter can only be used when either unaggregated or exclude_aggregate is set to true.
#! 
#! rmand@LAPTOP-K0S2D5LN MINGW64 /c/sam/DD_EVENTS
#! $ date "+%s"
#! 1644445452
#! 
#! rmand@LAPTOP-K0S2D5LN MINGW64 /c/sam/DD_EVENTS
#! $ date
#! Wed, Feb  9, 2022  2:24:15 PM
#! 
#! rmand@LAPTOP-K0S2D5LN MINGW64 /c/sam/DD_EVENTS
#! $ date "+%s" -d "02/20/2013 08:41:15"
#! 1361378475

export DD_API_KEY="7d708b093319ed02d93adbb5bf694889"
export DD_APP_KEY="12a419878abd82a6790373d42576544f8d9d3650"
	    

# Required query arguments
export start=(date "+%s" -d "02/01/2022 00:00:00")
export   end=(date "+%s" -d "02/10/2022 00:00:00")
# Curl command
(curl -X GET "https://api.datadoghq.com/api/v1/events?start=${start}&end=${end}" -H "Content-Type: application/json" -H "DD-API-KEY: ${DD_API_KEY}" -H "DD-APPLICATION-KEY: ${DD_APP_KEY}"  ) > events_${start}_${end} 


