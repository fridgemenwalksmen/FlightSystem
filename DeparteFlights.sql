SELECT
    f.FlightNumber AS [Flight Number],
    a.AirportName AS [Departure Airport],
    a.City AS [Departure City],
    f.DepartureDateTime AS [Departure Time],
    f.ArrivalDateTime AS [Arrival Time],
    f.Capacity AS [Capacity]
FROM Flights f
INNER JOIN Airports a
    ON f.AirportID = a.AirportID
WHERE a.City = 'Johannesburg'
ORDER BY f.DepartureDateTime ASC;
GO