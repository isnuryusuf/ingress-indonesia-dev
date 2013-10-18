package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.f;
import java.util.Set;

public abstract interface bl extends g
{
  public abstract void a(ej paramej, Portal paramPortal, ab paramab, Set<Resonator> paramSet, f paramf);

  public abstract void c();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bl
 * JD-Core Version:    0.6.2
 */