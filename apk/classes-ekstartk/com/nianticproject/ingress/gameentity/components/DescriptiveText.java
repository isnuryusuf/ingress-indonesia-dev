package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.shared.m;

public abstract interface DescriptiveText extends a
{
  public abstract void addOrUpdateDescriptiveText(m paramm, String paramString);

  public abstract String getDescriptiveText(m paramm);

  public abstract Iterable<m> getDescriptiveTextLabels();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.DescriptiveText
 * JD-Core Version:    0.6.2
 */