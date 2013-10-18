package com.nianticproject.ingress.common.ui.elements;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.ui.widget.ActionButton;

public abstract class ConfirmModalDialog extends ModalDialog
{
  private final String a;
  private final String b;
  private final String d;
  private final String e;

  public ConfirmModalDialog(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(new ConfirmModalDialog.Style());
    boolean bool2;
    boolean bool3;
    label41: boolean bool4;
    if (!br.b(paramString1))
    {
      bool2 = bool1;
      an.a(bool2);
      if (br.b(paramString2))
        break label103;
      bool3 = bool1;
      an.a(bool3);
      if (br.b(paramString3))
        break label109;
      bool4 = bool1;
      label57: an.a(bool4);
      if (br.b(paramString4))
        break label115;
    }
    while (true)
    {
      an.a(bool1);
      this.a = paramString1;
      this.b = paramString2;
      this.d = paramString3;
      this.e = paramString4;
      return;
      bool2 = false;
      break;
      label103: bool3 = false;
      break label41;
      label109: bool4 = false;
      break label57;
      label115: bool1 = false;
    }
  }

  protected static void d()
  {
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class);
    paramSkin.get("default", TextButton.TextButtonStyle.class);
    ActionButton localActionButton1 = new ActionButton(this.d, null, paramSkin);
    ActionButton localActionButton2 = new ActionButton(this.e, null, paramSkin);
    localActionButton1.a(new s(this, localActionButton1, localActionButton2));
    localActionButton2.a(new t(this, localActionButton1, localActionButton2));
    Label localLabel = new Label(this.a, localLabelStyle1);
    Table localTable = new Table();
    e locale = e.b(0.08F);
    localTable.defaults().d(locale).k();
    localTable.add(localLabel).j().n().b(Integer.valueOf(2));
    localTable.row();
    localTable.add(new Label(this.b, localLabelStyle2)).o().b(Integer.valueOf(2));
    localTable.row();
    localTable.add(localActionButton1).a(e.a(0.3F)).i().g(locale);
    localTable.add(localActionButton2).a(e.a(0.3F)).i().g(locale);
    return localTable;
  }

  protected void b()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ConfirmModalDialog
 * JD-Core Version:    0.6.2
 */