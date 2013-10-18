package com.nianticproject.ingress.server.pushnotification;

import com.nianticproject.ingress.knobs.g;
import org.codehaus.jackson.annotate.JsonProperty;

public class EmailKnobBundle
  implements g
{

  @JsonProperty
  private a delivery = a.b;

  @JsonProperty
  private final String redirectAllEmailTo = "";
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.server.pushnotification.EmailKnobBundle
 * JD-Core Version:    0.6.2
 */