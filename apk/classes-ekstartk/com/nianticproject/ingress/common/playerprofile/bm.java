package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.google.a.a.bw;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.playerprofile.PaginatedDisplayedAchievementList;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;

public class bm
  implements ax
{
  private static final aa a = new aa(bm.class);
  private final av b;
  private final ah c;

  public bm(ah paramah)
  {
    this.c = ((ah)an.a(paramah));
    this.b = new av(q.f().k(), bw.b());
  }

  public final void a()
  {
    this.b.a();
  }

  public final void a(az paramaz)
  {
    new br(this.c, paramaz).e();
  }

  public final void a(ProfileSettings paramProfileSettings, bb parambb)
  {
    new bv(this.c, paramProfileSettings, parambb).e();
  }

  public final void a(String paramString, int paramInt, ba paramba)
  {
    PaginatedDisplayedAchievementList localPaginatedDisplayedAchievementList = this.b.b(paramString);
    if (localPaginatedDisplayedAchievementList != null)
    {
      int i = localPaginatedDisplayedAchievementList.b();
      if ((i == -1) || (i > paramInt))
      {
        paramba.a(paramString, localPaginatedDisplayedAchievementList.a(), i);
        return;
      }
    }
    new bp(this.c, paramba, paramString, paramInt, this.b).e();
  }

  public final void a(String paramString, ba paramba)
  {
    PlayerProfile localPlayerProfile = this.b.c(paramString);
    j localj = this.b.a(paramString);
    if (localPlayerProfile != null)
    {
      paramba.a(paramString, localPlayerProfile, localj);
      return;
    }
    new bt(this.c, paramba, paramString, this.b).e();
  }

  public final void a(String paramString, j paramj, ay paramay)
  {
    new bn(paramString, this.b, this.c, paramay, paramj).e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bm
 * JD-Core Version:    0.6.2
 */