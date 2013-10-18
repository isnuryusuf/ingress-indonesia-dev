package com.nianticproject.ingress.common.playerprofile;

import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.rpc.q;
import java.util.List;

public abstract interface ba
{
  public abstract void a(q paramq);

  public abstract void a(q paramq, int paramInt);

  public abstract void a(String paramString, PlayerProfile paramPlayerProfile, j paramj);

  public abstract void a(String paramString, List<DisplayedAchievement> paramList, int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.ba
 * JD-Core Version:    0.6.2
 */