package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.codehaus.jackson.annotate.JsonProperty;

public final class RechargeResonatorsV2Params
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u location;

  @JsonProperty
  public String portalGuid;

  @JsonProperty
  public String portalKeyGuid;

  @JsonProperty
  public Set<Integer> resonatorSlots;

  private RechargeResonatorsV2Params()
  {
    this.location = null;
    this.portalKeyGuid = null;
    this.portalGuid = null;
    this.resonatorSlots = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public RechargeResonatorsV2Params(String paramString1, String paramString2, Set<Integer> paramSet)
  {
    TreeSet localTreeSet = jc.b(paramSet);
    boolean bool2;
    if ((localTreeSet.size() == 0) || ((((Integer)localTreeSet.first()).intValue() >= 0) && (((Integer)localTreeSet.last()).intValue() <= 7)))
    {
      bool2 = bool1;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(0);
      arrayOfObject[bool1] = Integer.valueOf(7);
      arrayOfObject[2] = localTreeSet;
      an.a(bool2, "Should be empty, or between '%s' and '%s': %s", arrayOfObject);
      this.portalGuid = paramString2;
      this.resonatorSlots = paramSet;
      this.portalKeyGuid = paramString1;
      if (paramString2 != null)
        break label155;
      if (paramString1.isEmpty())
        break label149;
    }
    while (true)
    {
      an.a(bool1);
      return;
      bool2 = false;
      break;
      label149: bool1 = false;
    }
    label155: boolean bool3;
    if (paramString1 == null)
    {
      bool3 = bool1;
      an.a(bool3);
      if (paramString2.isEmpty())
        break label187;
    }
    while (true)
    {
      an.a(bool1);
      return;
      bool3 = false;
      break;
      label187: bool1 = false;
    }
  }

  public final GameplayRpcParams.ClientBasket a()
  {
    return this.clientBasket;
  }

  public final void a(long paramLong)
  {
    this.knobSyncTimestamp = Long.valueOf(paramLong);
  }

  public final void a(u paramu)
  {
    this.location = paramu;
  }

  public final void a(Set<String> paramSet)
  {
    this.energyGlobGuids = paramSet;
  }

  public final int b()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(a.c(this.location));
    arrayOfObject[1] = this.portalKeyGuid;
    arrayOfObject[2] = this.portalGuid;
    arrayOfObject[3] = this.resonatorSlots;
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.RechargeResonatorsV2Params
 * JD-Core Version:    0.6.2
 */