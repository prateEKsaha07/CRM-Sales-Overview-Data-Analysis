SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as ProductName
      ,psc.EnglishProductSubcategoryName as subCategory
      ,pc.EnglishProductCategoryName as Category
      --,[SpanishProductName]
      --,[FrenchProductName]
      ,p.[StandardCost] as Cost
      --,[FinishedGoodsFlag]
      ,p.[Color] as Color
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as size
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] as ModelName
      --,[LargePhoto]
      ,p.[EnglishDescription] as ProductDescription
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
      ,ISNULL ( Status ,'Outdated') as [Product status]
  FROM dbo.DimProduct as p 
    LEFT JOIN dbo.DimProductSubcategory as psc on psc.ProductSubcategoryKey = p.ProductSubcategoryKey
    LEFT JOIN dbo.DimProductCategory as pc on pc.ProductCategoryKey = psc.ProductCategoryKey

