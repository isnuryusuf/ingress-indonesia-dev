package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class cg extends ClickListener
{
  private final String b;

  cg(cf paramcf, String paramString)
  {
    this.b = paramString;
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    cc.a(this.a.a, new cd(cf.a(this.a), this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.cg
 * JD-Core Version:    0.6.2
 */