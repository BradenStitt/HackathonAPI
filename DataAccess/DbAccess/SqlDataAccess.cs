using System.Data;
using System.Data.SqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;

namespace DataAccess.DbAccess;

public class SqlDataAccess : ISqlDataAccess
{
    private readonly IConfiguration _config;

    public SqlDataAccess(IConfiguration config)
    {
        _config = config;
    }

    public async Task<IEnumerable<T>> LoadData<T, U>(string storedProcedure, U parameters,
        string connectionId = "Default")
    {
        // Create a new IDbConnection object from the connection string stored in appsettings.json
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionId));

        // Execute the stored procedure with the given parameters and return the results as a collection of T
        return await connection.QueryAsync<T>(storedProcedure, parameters,
            commandType: CommandType.StoredProcedure);
    }

    public async Task SaveData<T>(string storedProcedure, T parameters,
        string connectionId = "Default")
    {
        // Create a new IDbConnection object from the connection string stored in appsettings.json
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionId));

        // Execute the stored procedure with the given parameters
        await connection.ExecuteAsync(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
    }
}