package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;

public abstract interface g
{
  public abstract void a();

  public abstract void a(ej paramej);

  public abstract void a(f paramf, GameState paramGameState);

  public abstract void b();

  public abstract void b(ej paramej);

  public abstract void b(Portal paramPortal);

  public abstract void c(ej paramej);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.g
 * JD-Core Version:    0.6.2
 */