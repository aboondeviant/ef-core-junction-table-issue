Create Database using script:


Failures:



Multiple junction tables to the same Entity example:

```
dotnet ef dbcontext scaffold "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=junction_table_test" Microsoft.EntityFrameworkCore.SqlServer
```

Will throw the following error:

> System.InvalidOperationException: The property or navigation 'Products' cannot be added to the entity type 'Product (Dictionary<string, object>)' because a property or navigation with the same name already exists on entity type 'Pro
duct (Dictionary<string, object>)'.

