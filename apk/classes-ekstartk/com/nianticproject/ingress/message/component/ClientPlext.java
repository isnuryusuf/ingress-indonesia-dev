package com.nianticproject.ingress.message.component;

import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.plext.c;
import com.nianticproject.ingress.shared.plext.f;
import java.util.List;

public abstract interface ClientPlext extends a
{
  public static final int MAX_PLEXT_LENGTH = 256;

  public abstract int getCategories();

  public abstract List<c> getPlext();

  public abstract f getPlextType();

  public abstract ai getTeam();

  public abstract String getText();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.message.component.ClientPlext
 * JD-Core Version:    0.6.2
 */
