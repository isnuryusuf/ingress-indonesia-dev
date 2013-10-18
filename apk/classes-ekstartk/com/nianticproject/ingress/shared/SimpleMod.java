package com.nianticproject.ingress.shared;

import com.google.a.c.hc;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.SimpleModResource;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.gameentity.components.m;
import java.util.HashMap;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleMod
  implements Mod
{

  @JsonProperty
  private final String displayName;

  @JsonProperty
  private final String installingUser;

  @JsonProperty
  private final l rarity;

  @JsonProperty
  private final HashMap<m, Long> stats;

  @JsonProperty
  private final af type;

  private SimpleMod()
  {
    this.installingUser = null;
    this.stats = hc.b();
    this.rarity = l.a;
    this.displayName = null;
    this.type = null;
  }

  public SimpleMod(ModResource paramModResource, String paramString)
  {
    this.rarity = paramModResource.getRarity();
    this.installingUser = paramString;
    this.stats = hc.a(paramModResource.getStatModifiers());
    this.displayName = paramModResource.getDisplayName();
    this.type = paramModResource.getResourceType();
  }

  public static SimpleMod of(Mod paramMod)
  {
    if (((paramMod instanceof SimpleMod)) || (paramMod == null))
      return (SimpleMod)paramMod;
    return new SimpleMod(paramMod.buildModResource(), paramMod.getInstallingUser());
  }

  public ModResource buildModResource()
  {
    return new SimpleModResource(this.displayName, this.type, this.rarity, this.stats);
  }

  public String getDisplayName()
  {
    return this.displayName;
  }

  public String getInstallingUser()
  {
    return this.installingUser;
  }

  public l getRarity()
  {
    return this.rarity;
  }

  public af getResourceType()
  {
    return this.type;
  }

  public Map<m, Long> getStatModifiers()
  {
    return hc.a(this.stats);
  }

  public String toString()
  {
    return "Mod: " + this.displayName + "(" + this.type + ", " + this.rarity + ", " + this.stats + ") by " + this.installingUser;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.SimpleMod
 * JD-Core Version:    0.6.2
 */