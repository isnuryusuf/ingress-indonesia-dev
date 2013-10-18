package com.nianticproject.ingress.common.missions.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.ac;
import java.util.Iterator;
import java.util.PriorityQueue;

public final class j
  implements ac
{
  private boolean a = true;
  private PriorityQueue<k> b = new PriorityQueue();
  private float c;
  private float d;
  private float e = 1.0F;
  private final float f;
  private final float g;
  private float h;
  private float i;
  private Color j;

  public j()
  {
    this.f = 0.0F;
    this.g = 1.0F;
  }

  public j(float paramFloat1, float paramFloat2)
  {
    this.f = paramFloat1;
    this.g = paramFloat2;
  }

  private void a(k paramk)
  {
    float f1 = this.g;
    if (this.i >= 0.0F)
      f1 = (this.g - this.f) * (1.0F - this.i / this.h) + this.f;
    paramk.c = ((float)(0.33D * (Math.random() * this.c)));
    paramk.d = (0.025F * this.d);
    paramk.a = ((float)(Math.random() * this.c) - paramk.c / 2.0F);
    paramk.b = ((float)Math.pow(Math.random(), this.e) * this.d * (f1 - this.f - 0.025F) + this.f * this.d);
    paramk.e = ((float)(5.0D * Math.random()));
    paramk.f = paramk.e;
    paramk.g.setX(paramk.a);
    paramk.g.setY(paramk.b);
    paramk.g.setWidth(paramk.c);
    paramk.g.setHeight(paramk.d);
  }

  public final void a()
  {
    this.h = 7.0F;
    this.i = 7.0F;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.j = paramSkin.getColor("jarvisCorruption");
    NinePatch localNinePatch = paramSkin.getPatch("white");
    this.c = paramStage.getWidth();
    this.d = paramStage.getHeight();
    while (this.b.size() < 300)
    {
      k localk = new k((byte)0);
      localk.g = new Image(localNinePatch);
      paramStage.addActor(localk.g);
      a(localk);
      this.b.add(localk);
    }
  }

  public final boolean a(float paramFloat)
  {
    if (((k)this.b.peek()).g.isVisible() != this.a)
    {
      Iterator localIterator3 = this.b.iterator();
      while (localIterator3.hasNext())
        ((k)localIterator3.next()).g.setVisible(this.a);
    }
    if (!this.a);
    while (true)
    {
      return true;
      if (this.i >= 0.0F)
        this.i -= paramFloat;
      Iterator localIterator1 = this.b.iterator();
      while (localIterator1.hasNext())
      {
        k localk3 = (k)localIterator1.next();
        localk3.e -= paramFloat;
      }
      while (((k)this.b.peek()).e <= 0.0F)
      {
        k localk2 = (k)this.b.poll();
        a(localk2);
        this.b.add(localk2);
      }
      Iterator localIterator2 = this.b.iterator();
      while (localIterator2.hasNext())
      {
        k localk1 = (k)localIterator2.next();
        localk1.g.setColor(this.j.r, this.j.g, this.j.b, this.j.a * localk1.e / localk1.f);
      }
    }
  }

  public final void b(float paramFloat)
  {
    this.e = paramFloat;
  }

  public final void dispose()
  {
    for (k localk = (k)this.b.poll(); localk != null; localk = (k)this.b.poll())
      localk.g.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.j
 * JD-Core Version:    0.6.2
 */