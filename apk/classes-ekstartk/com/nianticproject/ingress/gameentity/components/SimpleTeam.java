package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.ai;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleTeam
  implements ControllingTeam
{

  @JsonProperty
  private final ai team;

  private SimpleTeam()
  {
    this.team = null;
  }

  public SimpleTeam(ai paramai)
  {
    this.team = ((ai)an.a(paramai));
  }

  public ai getTeam()
  {
    return this.team;
  }

  public String toString()
  {
    return this.team.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleTeam
 * JD-Core Version:    0.6.2
 */