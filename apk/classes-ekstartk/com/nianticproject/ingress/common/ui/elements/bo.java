package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.f.a;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.e;

public final class bo
  implements ac
{
  private final int a = 1;
  private final int b;
  private final boolean c;
  private final k d;
  private Label e = null;
  private String f;
  private final double g = 1048576.0D;

  public bo(int paramInt, boolean paramBoolean, k paramk)
  {
    this.b = paramInt;
    this.c = paramBoolean;
    this.d = ((k)an.a(paramk));
    this.f = "";
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    if (this.c);
    for (this.e = new Label("", (Label.LabelStyle)paramSkin.get("jarvis-terminal", Label.LabelStyle.class)); ; this.e = new Label("", (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class)))
    {
      this.e.setX(this.a);
      this.e.setY(this.b - this.e.getPrefHeight());
      paramStage.addActor(this.e);
      return;
    }
  }

  public final void a(String paramString)
  {
    this.f = paramString;
  }

  public final boolean a(float paramFloat)
  {
    String str;
    Label localLabel;
    if (this.c)
      if (!p.a().u().e())
      {
        str = Gdx.graphics.getFramesPerSecond() + "fps " + this.f;
        this.e.setText(str);
        localLabel = this.e;
        if ((!this.c) && (!this.d.v()))
          break label189;
      }
    label189: for (boolean bool = true; ; bool = false)
    {
      localLabel.setVisible(bool);
      return true;
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = Integer.valueOf(Gdx.graphics.getFramesPerSecond());
      arrayOfObject[1] = this.f;
      arrayOfObject[2] = Double.valueOf(Gdx.app.getJavaHeap() / 1048576.0D);
      arrayOfObject[3] = Double.valueOf(Gdx.app.getNativeHeap() / 1048576.0D);
      arrayOfObject[4] = a.b();
      str = String.format("%2dfps %s\n%3.1fJMb %3.1fNMb %s", arrayOfObject);
      break;
      str = this.f;
      break;
    }
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.bo
 * JD-Core Version:    0.6.2
 */