package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;
import com.google.a.c.eq;
import java.util.List;

public final class ar extends WidgetCarousel
{
  private final List<Actor> a = eq.a();
  private final bb b = new aq(this.a);

  public ar(int paramInt1, int paramInt2, WidgetCarousel.WidgetCarouselStyle paramWidgetCarouselStyle)
  {
    this(paramInt1, paramInt2, paramWidgetCarouselStyle, (byte)0);
  }

  private ar(int paramInt1, int paramInt2, WidgetCarousel.WidgetCarouselStyle paramWidgetCarouselStyle, byte paramByte)
  {
    super(paramInt1, paramInt2, paramWidgetCarouselStyle, null, (byte)0);
    a(this.b);
    c();
  }

  public final List<Actor> a()
  {
    return this.a;
  }

  protected final void b()
  {
    for (int i = 0; i < this.a.size(); i++)
    {
      Actor localActor = (Actor)this.a.get(i);
      localActor.setX(0.0F);
      localActor.setY(0.0F);
      localActor.setVisible(false);
    }
    super.b();
  }

  protected final void childrenChanged()
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = 0;
    int j = 0;
    int m;
    while (true)
    {
      int k = localSnapshotArray.size;
      m = 0;
      if (i >= k)
        break;
      Actor localActor = (Actor)localSnapshotArray.get(i);
      if (!this.a.contains(localActor))
      {
        this.a.add(localActor);
        j = 1;
      }
      i++;
    }
    while (m < this.a.size())
    {
      if (!localSnapshotArray.contains((Actor)this.a.get(m), true))
      {
        this.a.remove(m);
        m--;
        j = 1;
      }
      m++;
    }
    if (j != 0)
      e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ar
 * JD-Core Version:    0.6.2
 */