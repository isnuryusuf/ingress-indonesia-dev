package com.nianticproject.ingress.common.model;

import com.google.a.c.dh;
import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.gameentity.g;

public final class GameState
  implements g
{
  public final du<f> changedEntities;
  public final du<String> disappeared;
  public final dh<String, f> gameEntities;
  public final long timestamp;

  public GameState(long paramLong, du<String> paramdu, du<f> paramdu1, dh<String, f> paramdh)
  {
    this.timestamp = paramLong;
    this.disappeared = paramdu;
    this.changedEntities = paramdu1;
    this.gameEntities = paramdh;
  }

  public final f getGameEntity(String paramString)
  {
    return (f)this.gameEntities.get(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.GameState
 * JD-Core Version:    0.6.2
 */