package com.nianticproject.ingress.common.v;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.nianticproject.ingress.common.c.g;
import com.nianticproject.ingress.common.ui.widget.f;

public final class ak extends aj
{
  private f a;
  private f b;
  private f c;

  public ak(Skin paramSkin)
  {
    super(paramSkin, "Sound");
  }

  public final TextButton a()
  {
    throw new UnsupportedOperationException();
  }

  public final TextButton a(g paramg)
  {
    switch (al.a[paramg.ordinal()])
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return this.a;
    case 2:
      return this.b;
    case 3:
    }
    return this.c;
  }

  protected final void a(Skin paramSkin, String paramString)
  {
    b(paramSkin, paramString);
    row();
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("small-white", Label.LabelStyle.class);
    add(new Label("Background", localLabelStyle)).o().m().k(12.0F);
    this.a = new f(paramSkin);
    add(this.a).a(e.a(0.5F)).m().k(6.0F);
    row();
    add(new Label("Effects", localLabelStyle)).o().m().k(12.0F);
    this.b = new f(paramSkin);
    add(this.b).a(e.a(0.5F)).m().k(6.0F);
    row();
    add(new Label("Speech", localLabelStyle)).o().m().k(12.0F).j(6.0F);
    this.c = new f(paramSkin);
    add(this.c).a(e.a(0.5F)).m().k(6.0F).j(6.0F);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.ak
 * JD-Core Version:    0.6.2
 */