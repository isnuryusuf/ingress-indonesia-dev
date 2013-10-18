package com.nianticproject.ingress.shared;

import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public class PregameStatus$UserAction
{

  @JsonProperty
  private final z actionType;

  @JsonProperty
  private final String buttonText;

  @JsonProperty
  private final Map<String, String> parms;

  private PregameStatus$UserAction()
  {
    this.buttonText = null;
    this.actionType = null;
    this.parms = null;
  }

  public PregameStatus$UserAction(String paramString, z paramz, Map<String, String> paramMap)
  {
    this.buttonText = paramString;
    this.actionType = paramz;
    this.parms = paramMap;
  }

  public final String a()
  {
    return this.buttonText;
  }

  public final z b()
  {
    return this.actionType;
  }

  public final Map<String, String> c()
  {
    return this.parms;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.PregameStatus.UserAction
 * JD-Core Version:    0.6.2
 */