package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleCaptured
  implements Captured
{

  @JsonProperty
  private final Long capturedTime;

  @JsonProperty
  private final String capturingPlayerId;

  private SimpleCaptured()
  {
    this.capturedTime = Long.valueOf(0L);
    this.capturingPlayerId = null;
  }

  public SimpleCaptured(long paramLong, String paramString)
  {
    this.capturedTime = Long.valueOf(paramLong);
    this.capturingPlayerId = ((String)an.a(paramString));
  }

  public long getCapturedTime()
  {
    return this.capturedTime.longValue();
  }

  public String getCapturingPlayerId()
  {
    return this.capturingPlayerId;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.capturedTime;
    arrayOfObject[1] = this.capturingPlayerId;
    return String.format("time: '%s', playerId: '%s'", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleCaptured
 * JD-Core Version:    0.6.2
 */