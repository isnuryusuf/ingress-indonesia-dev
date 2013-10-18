package com.nianticproject.ingress.shared;

import com.google.a.c.jc;
import com.nianticproject.ingress.shared.model.DamageDetail;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class FireEmpResult
{

  @JsonProperty
  public final Set<DamageDetail> damages;

  private FireEmpResult()
  {
    this.damages = jc.a();
  }

  public FireEmpResult(Set<DamageDetail> paramSet)
  {
    this.damages = paramSet;
  }

  public String toString()
  {
    return this.damages.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.FireEmpResult
 * JD-Core Version:    0.6.2
 */