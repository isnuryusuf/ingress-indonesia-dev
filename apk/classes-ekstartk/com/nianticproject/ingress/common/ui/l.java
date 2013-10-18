package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.shared.ai;

public final class l
{
  public static Color a(Skin paramSkin, int paramInt)
  {
    String str = "level_" + paramInt;
    if (paramSkin.has(str, Color.class))
      return paramSkin.getColor(str);
    return Color.BLACK;
  }

  public static Color a(Skin paramSkin, com.nianticproject.ingress.gameentity.components.l paraml)
  {
    String str = "rarity_" + paraml.ordinal();
    if (paramSkin.has(str, Color.class))
      return paramSkin.getColor(str);
    return Color.BLACK;
  }

  public static Button.ButtonStyle a(Skin paramSkin, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "owned-item-outline"; ; str = "item-outline")
      return (Button.ButtonStyle)paramSkin.get(str, Button.ButtonStyle.class);
  }

  public static Label.LabelStyle a(Label.LabelStyle paramLabelStyle, ai paramai)
  {
    return new Label.LabelStyle(paramLabelStyle.font, ea.a(paramai));
  }

  public static Label.LabelStyle a(Skin paramSkin, Label.LabelStyle paramLabelStyle, int paramInt)
  {
    return new Label.LabelStyle(paramLabelStyle.font, a(paramSkin, paramInt));
  }

  public static Label.LabelStyle a(Skin paramSkin, Label.LabelStyle paramLabelStyle, com.nianticproject.ingress.gameentity.components.l paraml)
  {
    return new Label.LabelStyle(paramLabelStyle.font, a(paramSkin, paraml));
  }

  public static String a(float paramFloat)
  {
    if (paramFloat <= 1.0F)
    {
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf((int)(100.0F * paramFloat));
      return String.format("%dcm", arrayOfObject5);
    }
    if (paramFloat < 10.0F)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Float.valueOf(paramFloat);
      return String.format("%1.1fm", arrayOfObject4);
    }
    if (paramFloat < 1000.0F)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf((int)paramFloat);
      return String.format("%dm", arrayOfObject3);
    }
    if (paramFloat < 10000.0F)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(paramFloat / 1000.0F);
      return String.format("%2.1fkm", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf((int)(paramFloat / 1000.0F));
    return String.format("%dkm", arrayOfObject1);
  }

  public static String a(long paramLong)
  {
    if (paramLong < 1000L)
      return Long.toString(paramLong);
    if (paramLong < 10000L)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Float.valueOf((float)paramLong / 1000.0F);
      return String.format("%.1fk", arrayOfObject4);
    }
    if (paramLong < 1000000L)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Float.valueOf((float)paramLong / 1000.0F);
      return String.format("%.0fk", arrayOfObject3);
    }
    if (paramLong < 10000000L)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf((float)paramLong / 1000000.0F);
      return String.format("%.1fM", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Float.valueOf((float)paramLong / 1000000.0F);
    return String.format("%.0fM", arrayOfObject1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.l
 * JD-Core Version:    0.6.2
 */