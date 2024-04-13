using System;

public class Orm(Database database) : IDisposable
{
    public void Begin() => database.BeginTransaction();
    public void Write(string data) => Execute(() => database.Write(data));
    public void Commit() => Execute(() => database.EndTransaction());

    private void Execute(Action operation)
    {
        try
        {
            operation();
        }
        catch (Exception e)
        {
            CleanUp();
        }
    }

    private void CleanUp() => database.Dispose();
    public void Dispose() => CleanUp();
}
