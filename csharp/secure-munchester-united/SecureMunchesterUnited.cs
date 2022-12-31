public class SecurityPassMaker
{
    public string GetDisplayName(TeamSupport support) => support switch
    {
        Security when support.GetType() == typeof(Security) => $"{support.Title} Priority Personnel",
        Staff => support.Title,
        _ => "Too Important for a Security Pass"
    };
}
public interface TeamSupport { string Title { get; } }
public abstract class Staff : TeamSupport { public abstract string Title { get; } }
public class Manager : TeamSupport { public string Title => "The Manager";
}
public class Chairman : TeamSupport { public string Title => "The Manager";
}
public class Physio : Staff { public override string Title => "The Physio";
}
public class OffensiveCoach : Staff { public override string Title => "Offensive Coach";
}
public class GoalKeepingCoach : Staff { public override string Title => "Goal Keeping Coach";
}
public class Security : Staff { public override string Title => "Security Team Member";
}
public class SecurityJunior : Security { public override string Title => "Security Junior";
}
public class SecurityIntern : Security { public override string Title => "Security Intern";
}
public class PoliceLiaison : Security { public override string Title => "Police Liaison Officer";
}
