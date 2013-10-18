package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleInInventory
  implements InInventory, s
{

  @JsonProperty
  private long acquisitionTimestampMs;
  private transient boolean dirty;

  @JsonProperty
  private String playerId;

  private SimpleInInventory()
  {
  }

  public SimpleInInventory(String paramString, long paramLong)
  {
    this.acquisitionTimestampMs = paramLong;
    setPlayerId(paramString);
    this.dirty = false;
  }

  public long getAcquisitionTimestampMs()
  {
    return this.acquisitionTimestampMs;
  }

  public String getPlayerId()
  {
    return this.playerId;
  }

  public boolean isDirty()
  {
    return this.dirty;
  }

  public void setClean()
  {
    this.dirty = false;
  }

  public void setPlayerId(String paramString)
  {
    this.playerId = paramString;
    this.dirty = true;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.playerId;
    arrayOfObject[1] = Long.valueOf(this.acquisitionTimestampMs);
    if (this.dirty);
    for (String str = " [dirty]"; ; str = "")
    {
      arrayOfObject[2] = str;
      return String.format("%s, timestamp: %s%s", arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleInInventory
 * JD-Core Version:    0.6.2
 */