package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.a.c;
import com.nianticproject.ingress.common.ui.ac;

public abstract class a
  implements ac
{
  private Actor a;
  private boolean b = true;

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.a = b(paramSkin, paramStage);
    paramStage.addActor(this.a);
  }

  public boolean a(float paramFloat)
  {
    return this.b;
  }

  protected abstract Actor b(Skin paramSkin, Stage paramStage);

  public void dispose()
  {
    if (this.a != null)
    {
      this.a.remove();
      this.a = null;
    }
  }

  public void e()
  {
    if (this.a != null)
    {
      c.a(this.a).b(false);
      this.a.addAction(Actions.after(Actions.run(new b(this))));
      return;
    }
    this.b = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.a
 * JD-Core Version:    0.6.2
 */