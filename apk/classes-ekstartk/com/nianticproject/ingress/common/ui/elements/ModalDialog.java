package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.RunnableAction;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.ImageButton;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.List;

public abstract class ModalDialog
  implements ac
{
  private boolean a = true;
  private final List<aa> b = eq.b(2);
  protected final ModalDialog.Style c;
  private Stage d;
  private Table e;
  private boolean f;
  private boolean g;
  private Button h = null;
  private EventListener i;

  public ModalDialog(ModalDialog.Style paramStyle)
  {
    this.c = paramStyle;
  }

  protected abstract Table a(Skin paramSkin, Stage paramStage, int paramInt);

  public void a()
  {
    if (this.e == null)
    {
      this.a = true;
      return;
    }
    if (!this.f);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.e.getColor().a = 0.0F;
      this.d.addActor(this.e);
      this.e.addAction(Actions.fadeIn(0.25F));
      this.f = true;
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((aa)localIterator.next()).a();
      break;
    }
  }

  protected void a(com.a.a.c<?> paramc)
  {
    paramc.i().n().f();
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    try
    {
      aj.a("ModalDialog.createUI");
      this.d = paramStage;
      this.e = new Table();
      this.e.setWidth(paramStage.getWidth());
      this.e.setHeight(paramStage.getHeight());
      a(this.e, paramSkin);
      if (this.c.fullModal)
        this.e.setTouchable(Touchable.enabled);
      Window localWindow = new Window("", paramSkin, this.c.windowStyleName);
      localWindow.setMovable(false);
      a(localWindow, paramSkin);
      if (this.c.close == ModalDialog.CloseStyle.X)
      {
        this.h = new ImageButton(paramSkin.getDrawable("dialogue-close-default"), paramSkin.getDrawable("dialogue-close-down"));
        localWindow.add(this.h).j().m().d(com.a.a.e.b(0.04F));
        localWindow.row();
      }
      int j = -4 + (int)(this.e.getWidth() * this.c.windowWidthPercent);
      aj.a(getClass().getSimpleName(), ".createContents");
      Table localTable1 = a(paramSkin, paramStage, j - this.c.padLeft - this.c.padRight);
      aj.b();
      a(localWindow.add(localTable1));
      if (this.c.close == ModalDialog.CloseStyle.OK)
      {
        float f1 = 0.04F * paramStage.getWidth();
        TextButton.TextButtonStyle localTextButtonStyle = (TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class);
        Table localTable2 = new Table();
        f localf = new f("OK", localTextButtonStyle);
        localf.addListener(new z(this));
        localTable2.add(localf).a(com.a.a.e.a(0.3F)).n().m().k(f1).i(f1).j(f1);
        localWindow.row();
        localWindow.add(localTable2).o().g();
      }
      com.a.a.c localc = this.e.add(localWindow).n().b(j);
      if (!this.c.shrinkHeightToFit)
        localc.c(-4 + (int)(this.e.getHeight() * this.c.windowHeightPercent));
      localc.a(Integer.valueOf(this.c.windowAlignment)).i(this.c.padLeft).k(this.c.padRight).h(this.c.padTop).j(this.c.padBottom);
      this.i = new x(this, localWindow);
      this.d.addListener(this.i);
      if (this.a)
        a();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  protected void a(Table paramTable, Skin paramSkin)
  {
    if (this.c.fullModal)
      paramTable.setBackground(com.nianticproject.ingress.common.b.c.a(paramSkin, new Color(0.0F, 0.0F, 0.0F, 0.7F)));
  }

  protected void a(Window paramWindow, Skin paramSkin)
  {
  }

  public final void a(aa paramaa)
  {
    this.b.add(paramaa);
  }

  public boolean a(float paramFloat)
  {
    return !this.g;
  }

  protected void c()
  {
  }

  public void dispose()
  {
    g();
    if (this.i != null)
      this.d.removeListener(this.i);
  }

  public final void e()
  {
    if (this.e == null)
      this.a = false;
    while (true)
    {
      return;
      an.b(this.f);
      Table localTable = this.e;
      RunnableAction localRunnableAction = new RunnableAction();
      localRunnableAction.setRunnable(new y(this, localTable));
      localTable.addAction(Actions.sequence(Actions.fadeOut(0.25F), localRunnableAction));
      this.f = false;
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((aa)localIterator.next()).b();
    }
  }

  public final void f()
  {
    o.a().a(bs.aO);
    g();
  }

  public void g()
  {
    if (this.e != null)
    {
      if (this.f)
      {
        e();
        c();
      }
      this.e = null;
    }
  }

  public final boolean h()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ModalDialog
 * JD-Core Version:    0.6.2
 */