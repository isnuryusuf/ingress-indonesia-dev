package com.nianticproject.ingress.common.inventory.ui;

import com.google.a.a.an;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.gameentity.components.StoryItem;
import com.nianticproject.ingress.gameentity.f;

public final class be extends p
{
  private StoryItem c;

  public be(f paramf, k paramk)
  {
    super(paramf, paramk);
    this.c = ((StoryItem)an.a(paramf.getComponent(StoryItem.class)));
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.c.hasBeenViewed());
    for (String str = ""; ; str = "[NEW] ")
      return str + this.c.getShortDescription();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.be
 * JD-Core Version:    0.6.2
 */