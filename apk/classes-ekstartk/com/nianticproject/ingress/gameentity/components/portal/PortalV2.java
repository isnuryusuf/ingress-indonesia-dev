package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.gameentity.components.DescriptiveText;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.d;
import com.nianticproject.ingress.gameentity.i;
import com.nianticproject.ingress.shared.model.b;
import com.nianticproject.ingress.shared.model.c;
import java.util.Set;

public abstract interface PortalV2 extends DynamicComponent, DescriptiveText, Modable, d, i
{
  public static final String DISPLAY_NAME = "PortalV2";
  public static final int MAX_MOD_COUNT = 4;

  public abstract void addLinkedEdgeData(String paramString1, String paramString2, c paramc);

  public abstract Set<String> getLinkedEdgeGuids();

  public abstract Set<b> getLinkedEdges();

  public abstract du<String> getOwnerIds();

  public abstract int linkedModCount();

  public abstract boolean removeLinkedEdgeData(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.PortalV2
 * JD-Core Version:    0.6.2
 */