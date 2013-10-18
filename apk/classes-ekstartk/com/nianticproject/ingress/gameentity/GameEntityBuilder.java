package com.nianticproject.ingress.gameentity;

import com.google.a.a.an;
import com.google.a.c.id;

public final class GameEntityBuilder
{
  private static final b a = new b();
  private boolean b;
  private final GameEntityBuilder.MapGameEntity c;

  public GameEntityBuilder(String paramString)
  {
    this(paramString, 0L);
  }

  public GameEntityBuilder(String paramString, long paramLong)
  {
    an.a(paramString);
    this.c = new GameEntityBuilder.MapGameEntity(paramString, paramLong, id.b());
    this.b = false;
  }

  private void c()
  {
    if (!this.b);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "An instance of the entity has already been built");
      return;
    }
  }

  public final GameEntityBuilder a(a parama)
  {
    c();
    an.a(parama);
    GameEntityBuilder.MapGameEntity.access$100(this.c, parama);
    return this;
  }

  public final PersistentGameEntity a()
  {
    c();
    this.b = true;
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.GameEntityBuilder
 * JD-Core Version:    0.6.2
 */