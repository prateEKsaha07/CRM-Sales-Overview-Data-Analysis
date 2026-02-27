SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      --,[DayNumberOfWeek] 
      ,[EnglishDayNameOfWeek] as Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as WeekNr
      ,[EnglishMonthName] as Month
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      --,[MonthNumberOfYear] as Month
      ,LEFT([EnglishMonthName],3) as MonthShort
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE [CalendarYear] >= 2023
  ORDER BY [CalendarYear] ASC
