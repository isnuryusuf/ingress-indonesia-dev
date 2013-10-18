package com.nianticproject.ingress.shared.handshake;

import com.google.a.c.dh;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.KnobBundleUpdate;
import com.nianticproject.ingress.shared.PregameStatus;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ServerHandshake
{

  @JsonProperty
  private final KnobBundleUpdate initialKnobs = null;

  @JsonProperty
  private final String nickname = null;

  @JsonProperty
  private final f playerEntity = null;

  @JsonProperty
  private final PregameStatus pregameStatus = null;

  @JsonProperty
  private final String serverVersion = null;

  @JsonProperty
  private final Map<String, String> storage = null;

  @JsonProperty
  private final String xsrfToken = null;

  public final PregameStatus a()
  {
    return this.pregameStatus;
  }

  public final f b()
  {
    return this.playerEntity;
  }

  public final String c()
  {
    return this.nickname;
  }

  public final String d()
  {
    return this.xsrfToken;
  }

  public final Map<String, String> e()
  {
    if (this.storage == null)
      return null;
    return dh.a(this.storage);
  }

  public final KnobBundleUpdate f()
  {
    return this.initialKnobs;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.serverVersion;
    arrayOfObject[1] = this.pregameStatus;
    arrayOfObject[2] = this.xsrfToken;
    if (this.playerEntity == null);
    for (String str = null; ; str = this.playerEntity.getGuid())
    {
      arrayOfObject[3] = str;
      arrayOfObject[4] = this.nickname;
      arrayOfObject[5] = this.storage;
      return String.format("serverVersion: %s, pregameStatus: %s, xsrfToken: %s, playerGuid: %s, nickname: %s, storage: %s", arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.handshake.ServerHandshake
 * JD-Core Version:    0.6.2
 */