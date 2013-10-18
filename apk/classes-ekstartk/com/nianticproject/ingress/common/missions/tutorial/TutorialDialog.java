package com.nianticproject.ingress.common.missions.tutorial;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.ImageButton;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.d;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class TutorialDialog extends ModalDialog
{
  protected final TutorialDialog.Style b;

  public TutorialDialog()
  {
    this(new TutorialDialog.Style());
  }

  public TutorialDialog(TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
    this.b = paramStyle;
    a(new v(this, paramStyle));
  }

  private static c<?> a(Table paramTable, Actor paramActor, float paramFloat)
  {
    return paramTable.add(paramActor).k(paramFloat).i(paramFloat).j(paramFloat);
  }

  private static c<?> a(Table paramTable, Actor paramActor, float paramFloat1, float paramFloat2)
  {
    return a(paramTable, paramActor, paramFloat2).h(paramFloat1).n().f();
  }

  protected static Actor a(Skin paramSkin, int paramInt, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    char c1 = d.e.g;
    int i = paramArrayOfString.length;
    char c2 = c1;
    int j = 0;
    if (j < i)
    {
      String str = paramArrayOfString[j];
      localStringBuilder.append(c2);
      localStringBuilder.append(str);
      if (c2 == d.e.g);
      for (c2 = d.f.g; ; c2 = d.e.g)
      {
        j++;
        break;
      }
    }
    Label localLabel = new Label(localStringBuilder, paramSkin, "small");
    localLabel.setWidth(paramInt);
    localLabel.setWrap(true);
    return localLabel;
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    List localList = a(paramSkin, paramInt);
    Table localTable = new Table();
    float f1 = 0.04F * paramStage.getWidth();
    float f2 = f1 * 0.5F;
    Iterator localIterator = localList.iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      Actor localActor2 = (Actor)localIterator.next();
      if (i != 0);
      for (float f3 = f1; ; f3 = f2)
      {
        a(localTable, localActor2, f3, f1).b(Integer.valueOf(2));
        localTable.row();
        i = 0;
        break;
      }
    }
    if (this.b.showArrowLine)
    {
      ImageButton localImageButton = new ImageButton(paramSkin, "tutorial-next");
      localImageButton.addListener(new w(this));
      int j = (int)(paramInt - localImageButton.getWidth());
      localImageButton.getHeight();
      Actor localActor1 = b(paramSkin, j);
      if (localList.isEmpty())
        f2 = f1;
      a(localTable, localActor1, f2, f1);
      a(localTable, localImageButton, f1).m().l();
    }
    return localTable;
  }

  protected List<Actor> a(Skin paramSkin, int paramInt)
  {
    return Collections.emptyList();
  }

  protected final void a(Table paramTable, Skin paramSkin)
  {
    paramTable.setBackground(paramSkin.getDrawable("dialogue-grad"));
  }

  protected Actor b(Skin paramSkin, int paramInt)
  {
    return new Actor();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.TutorialDialog
 * JD-Core Version:    0.6.2
 */