package com.nianticproject.ingress.common.v;

import com.badlogic.gdx.scenes.scene2d.ui.CheckBox;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.google.a.a.an;
import java.util.HashMap;
import java.util.List;

public final class a extends aj
{
  private final HashMap<Integer, CheckBox> a = new HashMap();
  private d b;

  public a(Skin paramSkin, String paramString, c[] paramArrayOfc)
  {
    super(paramSkin, paramString);
    if ((paramArrayOfc != null) && (paramArrayOfc.length > 0));
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      a(paramSkin, paramArrayOfc);
      return;
    }
  }

  private void a(Skin paramSkin, c[] paramArrayOfc)
  {
    int i = paramArrayOfc.length;
    for (int j = 0; j < i; j++)
    {
      c localc = paramArrayOfc[j];
      CheckBox localCheckBox = new CheckBox(localc.c, paramSkin);
      localCheckBox.setChecked(localc.d);
      localCheckBox.addListener(new b(this, localc, localCheckBox));
      localCheckBox.left();
      ((com.a.a.c)localCheckBox.getCells().get(0)).j();
      add(localCheckBox).a(Float.valueOf(0.85F), Float.valueOf(0.0F)).o().m().j(8.0F);
      this.a.put(Integer.valueOf(localc.a), localCheckBox);
      row();
    }
  }

  public final TextButton a()
  {
    throw new UnsupportedOperationException();
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    CheckBox localCheckBox = (CheckBox)this.a.get(Integer.valueOf(paramInt));
    if (localCheckBox == null)
      return;
    localCheckBox.setChecked(paramBoolean);
  }

  protected final void a(Skin paramSkin, String paramString)
  {
    b(paramSkin, paramString);
    row();
  }

  public final void a(d paramd)
  {
    this.b = paramd;
  }

  public final void a(String paramString)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.a
 * JD-Core Version:    0.6.2
 */