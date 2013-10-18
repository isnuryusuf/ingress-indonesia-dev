package com.nianticproject.ingress.common.ui.elements;

import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.f;
import java.util.Set;

public abstract interface av
{
  public abstract void a(ej paramej, Portal paramPortal, ab paramab, Set<Resonator> paramSet, f paramf);

  public abstract void a(Portal paramPortal);

  public abstract void a(f paramf, GameState paramGameState);

  public abstract void b(Portal paramPortal);

  public abstract void c(ej paramej);

  public abstract void c(Portal paramPortal);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.av
 * JD-Core Version:    0.6.2
 */