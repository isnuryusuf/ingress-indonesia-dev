package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.google.a.a.bw;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.playerprofile.PaginatedDisplayedAchievementList;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import java.util.concurrent.TimeUnit;
import org.codehaus.jackson.map.util.LRUMap;

class av
{
  private static final aa a = new aa(av.class);
  private final LRUMap<String, aw<PlayerProfile>> b;
  private final LRUMap<String, aw<PaginatedDisplayedAchievementList>> c;
  private final LRUMap<String, aw<j>> d;
  private final long e;
  private final bw f;

  public av(long paramLong, bw parambw)
  {
    an.a(bool);
    if (paramLong > 0L);
    while (true)
    {
      an.a(bool);
      this.e = TimeUnit.NANOSECONDS.convert(paramLong, TimeUnit.SECONDS);
      this.b = new LRUMap(0, 3);
      this.c = new LRUMap(0, 3);
      this.d = new LRUMap(0, 3);
      this.f = ((bw)an.a(parambw));
      return;
      bool = false;
    }
  }

  public final j a(String paramString)
  {
    aw localaw = (aw)this.d.get(paramString);
    if ((localaw != null) && (!localaw.b()))
      return (j)localaw.a();
    return null;
  }

  public final void a()
  {
    this.b.clear();
    this.c.clear();
    this.d.clear();
  }

  public final void a(String paramString, j paramj)
  {
    an.a(paramj);
    this.d.put(paramString, new aw(this, paramj));
  }

  public final void a(String paramString, PaginatedDisplayedAchievementList paramPaginatedDisplayedAchievementList)
  {
    an.a(paramPaginatedDisplayedAchievementList);
    this.c.put(paramString, new aw(this, paramPaginatedDisplayedAchievementList));
  }

  public final void a(String paramString, PlayerProfile paramPlayerProfile)
  {
    an.a(paramPlayerProfile);
    this.b.put(paramString, new aw(this, paramPlayerProfile));
  }

  public final PaginatedDisplayedAchievementList b(String paramString)
  {
    aw localaw = (aw)this.c.get(paramString);
    if ((localaw != null) && (!localaw.b()))
      return (PaginatedDisplayedAchievementList)localaw.a();
    return null;
  }

  public final PlayerProfile c(String paramString)
  {
    aw localaw = (aw)this.b.get(paramString);
    if ((localaw != null) && (!localaw.b()))
      return (PlayerProfile)localaw.a();
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.av
 * JD-Core Version:    0.6.2
 */