package com.nianticproject.ingress.common.factionchoice;

import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressBar;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

final class c
  implements ac
{
  private final az a;
  private Table b;
  private ProgressBar c;
  private Skin d;
  private ScrollLabel e;
  private ScrollLabel f;
  private Label g;
  private float h = 0.0F;

  c(az paramaz)
  {
    this.a = paramaz;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = new Table();
    this.b.setX(0.0F);
    this.b.setY(0.0F);
    this.b.setWidth(paramStage.getWidth());
    this.b.setHeight(paramStage.getHeight());
    this.b.pad(15.0F);
    this.b.add(new Label("Authenticating operative code", (Label.LabelStyle)paramSkin.get("fc-message", Label.LabelStyle.class))).o().g().k();
    this.b.row();
    this.c = new ProgressBar(paramSkin);
    this.b.add(this.c).o().g().i().g(50.0F);
    paramStage.addActor(this.b);
    this.d = paramSkin;
  }

  public final boolean a(float paramFloat)
  {
    if ((this.g != null) && (!this.g.isVisible()) && (this.e.b()))
    {
      this.g.setVisible(true);
      this.b.layout();
    }
    if ((this.g != null) && (this.g.isVisible()))
      this.h = (paramFloat + this.h);
    if ((this.h > 3.0F) && (this.f == null))
    {
      this.b.clear();
      this.f = new ScrollLabel("*\n*\n*\nJMP  0x1F\nPOPL %ESI\nMOVL %ESI,0x8(%ESI)\nXORL %EAX,%EAX\nMOVB %EAX,0x7(%ESI)\nMOVL %EAX,0xC(%ESI)\nMOVB $0xB,%AL\nMOVL %ESI,%EBX\nLEAL 0x8(%ESI),%ECX\nLEAL 0xC(%ESI),%EDX\nINT  $0x80\nXORL %EBX,%EBX\nMOVL %EBX,%EAX\nINC  %EAX\nINT  $0x80\nCALL -0x24", (Label.LabelStyle)this.d.get("jarvis-terminal", Label.LabelStyle.class), 60.0F);
      this.f.setWrap(true);
      this.b.add(this.f).j().k().f().n().g(15.0F);
    }
    if ((this.f != null) && (this.f.b()))
      this.a.c();
    return true;
  }

  public final void dispose()
  {
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.c
 * JD-Core Version:    0.6.2
 */