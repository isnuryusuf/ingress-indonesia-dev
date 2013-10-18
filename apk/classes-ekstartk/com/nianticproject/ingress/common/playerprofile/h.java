package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.widget.bb;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class h
  implements bb
{
  private final Skin a;
  private final av b;
  private final ArrayList<g> c = eq.a();

  public h(Skin paramSkin, av paramav)
  {
    this.a = ((Skin)an.a(paramSkin));
    this.b = ((av)an.a(paramav));
  }

  public final int a(Actor paramActor)
  {
    return this.c.indexOf(paramActor);
  }

  public final Actor a(int paramInt)
  {
    return (Actor)this.c.get(paramInt);
  }

  public final Actor a(AvatarLayerOption paramAvatarLayerOption)
  {
    if (paramAvatarLayerOption == null)
      return null;
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (ag.a(paramAvatarLayerOption, localg.a()))
        return localg;
    }
    return null;
  }

  public final void a(List<AvatarLayerOption> paramList)
  {
    this.c.clear();
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        AvatarLayerOption localAvatarLayerOption = (AvatarLayerOption)localIterator.next();
        g localg = new g(this.a, this.b, localAvatarLayerOption);
        this.c.add(localg);
      }
    }
  }

  public final int b()
  {
    return this.c.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.h
 * JD-Core Version:    0.6.2
 */