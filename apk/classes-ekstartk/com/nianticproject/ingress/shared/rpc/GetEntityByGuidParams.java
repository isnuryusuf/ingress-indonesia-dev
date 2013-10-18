package com.nianticproject.ingress.shared.rpc;

import com.google.a.c.jc;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class GetEntityByGuidParams
{

  @JsonProperty
  private final Set<String> entityGuids = jc.a();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.GetEntityByGuidParams
 * JD-Core Version:    0.6.2
 */