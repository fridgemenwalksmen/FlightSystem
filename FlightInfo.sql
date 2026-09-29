SELECT
    f.FlightID AS [Flight ID],
    f.FlightNumber AS [Flight Number],
    a.AirportCode AS [Airport Code],
    a.AirportName AS [Airport Name],
    f.DepartureDateTime AS [Departure Time],
    f.ArrivalDateTime AS [Arrival Time],
    f.Capacity AS [Flight Capacity]
FROM Flights f
INNER JOIN Airports a
    ON f.AirportID = a.AirportID
ORDER BY f.DepartureDateTime ASC;
GO