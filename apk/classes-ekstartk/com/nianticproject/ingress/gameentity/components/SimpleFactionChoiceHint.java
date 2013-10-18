package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.ai;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleFactionChoiceHint
  implements FactionChoiceHint
{

  @JsonProperty
  private final ai factionHint;

  @JsonProperty
  private final String inviterGuid;

  private SimpleFactionChoiceHint()
  {
    this.inviterGuid = null;
    this.factionHint = null;
  }

  public SimpleFactionChoiceHint(ai paramai, String paramString)
  {
    this.factionHint = ((ai)an.a(paramai));
    this.inviterGuid = paramString;
  }

  public String getInviterGuid()
  {
    return this.inviterGuid;
  }

  public ai getTeamHint()
  {
    return this.factionHint;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleFactionChoiceHint
 * JD-Core Version:    0.6.2
 */