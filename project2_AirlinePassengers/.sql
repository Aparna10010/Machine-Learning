CREATE DATABASE AIRLINE_DB ;

USE AIRLINE_DB ;

SELECT TOP 5 * FROM airlinepassengers;


-- Check the dataset size

Select 
    Count(*) As
	Total_rows
From  
    airlinepassengers;


--Checking Satisfaction 

SELECT 
     satisfaction 
	 ,COUNT(*) AS 'Total'
	 ,CAST(COUNT(*) * 100.0 / 
	       (
		    SELECT 
			   COUNT(*) 
		    FROM
	           airlinepassengers) 
	           AS DECIMAL(5,2)
		   ) AS percentage
FROM 
    airlinepassengers
GROUP BY 
    satisfaction;


--Statistics Summary 

SELECT 
     AVG(Age) AS avg_age
    ,MAX(Departure_Delay_in_Minutes)
	 AS max_departure_delay
    ,MAX(Arrival_Delay_in_Minutes)
	 AS max_arrival_delay
    ,AVG(Flight_Distance)
	AS avg_distance
FROM 
    airlinepassengers;


--Statisfaction by Class

SELECT 
    Class
   ,satisfaction
   ,COUNT(*) AS 'COUNT'
FROM 
   airlinepassengers
GROUP BY 
    Class
   ,satisfaction
ORDER BY 
    Class
   ,satisfaction
;

select * from airlinepassengers;

--Average Rating of various serivics by Satisfaction

SELECT 
    satisfaction
    ,AVG(Inflight_wifi_service) AS avg_wifi
    ,AVG(Departure_Arrival_time_convenient) AS avg_time_convenience
    ,AVG(Ease_of_Online_booking) AS avg_online_booking
    ,AVG(Gate_location) AS avg_gate
    ,AVG(Food_and_drink)AS avg_food
    ,AVG(Online_boarding)AS avg_boarding
    ,AVG(Seat_comfort) AS avg_seat
    ,AVG(Inflight_entertainment) AS avg_entertainment
    ,AVG(On_board_service) AS avg_onboard
    ,AVG(Leg_room_service) AS avg_legroom
    ,AVG(Baggage_handling) AS avg_baggage
    ,AVG(Checkin_service) AS avg_checkin
    ,AVG(Inflight_service) AS avg_inflight
    ,AVG(Cleanliness) AS avg_cleanliness
FROM 
    airlinepassengers
GROUP BY 
    satisfaction
	;


--Checking is any missing values are there.

SELECT 
    SUM(CASE WHEN Departure_Delay_in_Minutes IS NULL THEN 1 ELSE 0 END) 
	AS missing_departure_delay
    ,SUM(CASE WHEN Arrival_Delay_in_Minutes IS NULL THEN 1 ELSE 0 END) 
	AS missing_arrival_delay
    ,SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END)
	AS missing_age
    ,SUM(CASE WHEN Flight_Distance IS NULL THEN 1 ELSE 0 END) 
	AS missing_distance
    ,SUM(CASE WHEN satisfaction IS NULL THEN 1 ELSE 0 END) 
	AS missing_satisfaction
    ,SUM(CASE WHEN Inflight_wifi_service IS NULL THEN 1 ELSE 0 END)
	AS missing_wifi
FROM 
     airlinepassengers;


--Checking the spread of Delays :

SELECT 
    CASE 
        WHEN Departure_Delay_in_Minutes = 0 THEN 'No Delay'
        WHEN Departure_Delay_in_Minutes BETWEEN 1 AND 15 THEN '1-15 mins'
        WHEN Departure_Delay_in_Minutes BETWEEN 16 AND 30 THEN '16-30 mins'
        WHEN Departure_Delay_in_Minutes > 30 THEN '>30 mins'
        ELSE 'Missing'
    END AS delay_bucket
    ,COUNT(*) AS count
FROM 
    airlinepassengers
GROUP BY 
    CASE 
        WHEN Departure_Delay_in_Minutes = 0 THEN 'No Delay'
        WHEN Departure_Delay_in_Minutes BETWEEN 1 AND 15 THEN '1-15 mins'
        WHEN Departure_Delay_in_Minutes BETWEEN 16 AND 30 THEN '16-30 mins'
        WHEN Departure_Delay_in_Minutes > 30 THEN '>30 mins'
        ELSE 'Missing'
    END
;
--Checking how delays relate to satisfaction.

SELECT 
    satisfaction
   ,AVG(Departure_Delay_in_Minutes)
   AS avg_departure_delay
   ,AVG(Arrival_Delay_in_Minutes)
   AS avg_arrival_delay
   ,COUNT(*) AS 'COUNT'
FROM
   airlinepassengers
GROUP BY
   satisfaction
   ;

--Checking the Maximum delay in departure and in Arrival :

SELECT 
    MAX(Departure_Delay_in_Minutes)
	AS max_departure_delay,
    MAX(Arrival_Delay_in_Minutes)
	AS max_arrival_delay
FROM
    airlinepassengers
	;
