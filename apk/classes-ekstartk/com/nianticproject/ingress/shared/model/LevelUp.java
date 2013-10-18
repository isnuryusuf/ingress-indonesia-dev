package com.nianticproject.ingress.shared.model;

import org.codehaus.jackson.annotate.JsonProperty;

public class LevelUp
{

  @JsonProperty
  private final int newLevelUpMsgId = 0;

  public final int a()
  {
    return this.newLevelUpMsgId;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.newLevelUpMsgId);
    return String.format("newLevelUpMsgId: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.model.LevelUp
 * JD-Core Version:    0.6.2
 */