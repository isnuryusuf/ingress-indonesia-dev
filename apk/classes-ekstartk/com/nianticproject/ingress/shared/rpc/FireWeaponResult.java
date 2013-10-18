package com.nianticproject.ingress.shared.rpc;

import com.google.a.c.jc;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class FireWeaponResult
{

  @JsonProperty
  public final Set<DamageDetailV2> damages = jc.a();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.FireWeaponResult
 * JD-Core Version:    0.6.2
 */