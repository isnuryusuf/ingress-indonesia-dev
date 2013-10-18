package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Array;
import java.util.Iterator;

public abstract class a
  implements b
{
  private static String a = "hudGroup";
  private Stage b;
  private Group c;
  private Actor d;
  private boolean e = true;

  protected abstract Actor a(Skin paramSkin);

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = paramStage;
    Iterator localIterator = paramStage.getActors().iterator();
    while (localIterator.hasNext())
    {
      Actor localActor = (Actor)localIterator.next();
      if (a.equals(localActor.name))
        this.c = ((Group)localActor);
    }
    if (this.c == null)
    {
      this.c = new Group(a);
      paramStage.getRoot().addActorAt(0, this.c);
    }
    this.d = a(paramSkin);
    this.d.setVisible(false);
    this.c.addActor(this.d);
  }

  public final void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public boolean a(float paramFloat)
  {
    this.d.setVisible(false);
    Group localGroup = this.d.getParent();
    boolean bool = false;
    if (localGroup != null)
      bool = true;
    return bool;
  }

  public final boolean a(Rectangle paramRectangle)
  {
    if (!this.e);
    do
    {
      return true;
      this.d.setVisible(true);
      b(d.a(this.b, paramRectangle));
    }
    while (this.d.getParent() != null);
    return false;
  }

  protected abstract void b(Rectangle paramRectangle);

  public void dispose()
  {
    this.c.removeActor(this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.a
 * JD-Core Version:    0.6.2
 */