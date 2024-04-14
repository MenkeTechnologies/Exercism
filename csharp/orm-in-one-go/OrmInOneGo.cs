using System;

public class Orm(Database database)
{
    public void Write(string data)
    {
        try
        {
            database.BeginTransaction();
            database.Write(data);
            database.EndTransaction();
        }
        catch (Exception)
        {
            database.Dispose();
            throw;
        }
    }

    public bool WriteSafely(string data)
    {
        try
        {
            database.BeginTransaction();
            database.Write(data);
            database.EndTransaction();
        }
        catch (Exception)
        {
            database.Dispose();
            return false;
        }

        return true;
    }
}
