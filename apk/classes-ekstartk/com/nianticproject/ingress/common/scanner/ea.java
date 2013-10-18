package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.ai;
import java.util.ArrayList;
import java.util.Iterator;

public final class ea
{
  public static final Color A;
  public static final Color B;
  public static final Color C;
  public static final Color D;
  public static final Color E;
  public static final Color F;
  public static final Color G;
  public static final Color[] H;
  public static final Color I;
  public static final Color J;
  public static final Color K;
  public static final Color L;
  public static final Color M;
  public static final Color N;
  public static final Color[] O = arrayOfColor3;
  public static final Color P = new ec("insufficientAccessTint", 0.5F, 0.5F, 0.5F, 1.0F);
  private static final aa Q = new aa(ea.class);
  private static final ArrayList<ec> R = eq.a();
  public static final Color a = new ec("background", 0.0F, 0.0F, 0.0F);
  public static final Color b = new Color(0.0F, 0.0F, 0.0F, 0.5F);
  public static final Color c = new ec("neutral", 0.5F, 0.5F, 0.5F);
  public static final Color d = new ec("neutral-edges", 0.0F, 0.0F, 0.0F);
  public static final Color e = new ec("neutral-xm", 1.0F, 0.7F, 0.7F, 1.0F);
  public static final Color f = new ec("aliens", 0.5F, 0.5F, 0.5F);
  public static final Color g = new ec("aliens-edges", 0.0F, 0.2F, 0.0F);
  public static final Color h = new ec("resistance", 0.5F, 0.5F, 0.5F);
  public static final Color i = new ec("resistance-edges", 0.0F, 0.0F, 0.2F);
  public static final Color j = new ec("activeGrid", 0.412F, 0.906F, 0.984F);
  public static final Color k = new ec("inactiveGrid", 0.412F, 0.906F, 0.984F);
  public static final Color l = new ec("activeGridEdge", 0.412F, 0.906F, 0.984F);
  public static final Color m = new ec("activePulseTint", 1.0F, 1.0F, 1.0F);
  public static final Color n = new ec("inactivePulseTint", 0.5F, 0.5F, 0.5F);
  public static final Color o = new ec("portalLink", 0.8F, 0.6F, 0.8F);
  public static final Color p = new ec("portalLinkPulse", 1.0F, 0.9F, 0.9F);
  public static final Color q = new ec("aliens-face", 0.3F, 0.6F, 0.3F);
  public static final Color r = new ec("resistance-face", 0.0F, 0.74F, 0.9F);
  public static final Color s = new ec("neutral-face", 0.5F, 0.5F, 0.5F);
  public static final Color t = new ec("powerup-player", 1.0F, 1.0F, 0.0F);
  public static final Color u = new ec("compass-bearing", 1.0F, 1.0F, 1.0F);
  public static final Color v = new ec("outOfRange", 0.8F, 0.1F, 0.1F);
  public static final Color w = new ec("inRange", 0.9F, 0.9F, 0.9F);
  public static final Color x = new ec("full", 0.5F, 0.5F, 0.5F);
  public static final Color[] y;
  public static final Color z;

  static
  {
    Color[] arrayOfColor1 = new Color[5];
    arrayOfColor1[0] = new ec("xm-lowest", 0.059F, 0.59F, 0.95F, 0.5F);
    arrayOfColor1[1] = new ec("xm-low", 0.059F, 0.59F, 0.95F, 0.5F);
    arrayOfColor1[2] = new ec("xm-medium", 0.059F, 0.59F, 0.95F, 0.5F);
    arrayOfColor1[3] = new ec("xm-high", 0.059F, 0.59F, 0.95F, 0.5F);
    arrayOfColor1[4] = new ec("xm-highest", 0.059F, 0.59F, 0.95F, 0.5F);
    y = arrayOfColor1;
    z = new ec("level_1", 0.0F, 0.0F, 0.0F, 1.0F);
    A = new ec("level_2", 0.0F, 0.0F, 0.0F, 1.0F);
    B = new ec("level_3", 0.0F, 0.0F, 0.0F, 1.0F);
    C = new ec("level_4", 0.0F, 0.0F, 0.0F, 1.0F);
    D = new ec("level_5", 0.0F, 0.0F, 0.0F, 1.0F);
    E = new ec("level_6", 0.0F, 0.0F, 0.0F, 1.0F);
    F = new ec("level_7", 0.0F, 0.0F, 0.0F, 1.0F);
    G = new ec("level_8", 0.0F, 0.0F, 0.0F, 1.0F);
    Color[] arrayOfColor2 = new Color[9];
    arrayOfColor2[0] = Color.BLACK;
    arrayOfColor2[1] = z;
    arrayOfColor2[2] = A;
    arrayOfColor2[3] = B;
    arrayOfColor2[4] = C;
    arrayOfColor2[5] = D;
    arrayOfColor2[6] = E;
    arrayOfColor2[7] = F;
    arrayOfColor2[8] = G;
    H = arrayOfColor2;
    I = new ec("rarity_0", 0.0F, 0.0F, 0.0F, 1.0F);
    J = new ec("rarity_1", 0.0F, 0.0F, 0.0F, 1.0F);
    K = new ec("rarity_2", 0.0F, 0.0F, 0.0F, 1.0F);
    L = new ec("rarity_3", 0.0F, 0.0F, 0.0F, 1.0F);
    M = new ec("rarity_4", 0.0F, 0.0F, 0.0F, 1.0F);
    N = new ec("rarity_5", 0.0F, 0.0F, 0.0F, 1.0F);
    Color[] arrayOfColor3 = new Color[6];
    arrayOfColor3[0] = I;
    arrayOfColor3[1] = J;
    arrayOfColor3[2] = K;
    arrayOfColor3[3] = L;
    arrayOfColor3[4] = M;
    arrayOfColor3[5] = N;
  }

  public static Color a(ai paramai)
  {
    if (paramai != null);
    switch (eb.a[paramai.ordinal()])
    {
    default:
      return c;
    case 1:
      return f;
    case 2:
    }
    return h;
  }

  public static void a(Skin paramSkin)
  {
    Iterator localIterator = R.iterator();
    while (localIterator.hasNext())
      ((ec)localIterator.next()).a(paramSkin);
  }

  public static Color b(ai paramai)
  {
    switch (eb.a[paramai.ordinal()])
    {
    default:
      return e;
    case 1:
    case 2:
    }
    return a(paramai);
  }

  public static Color c(ai paramai)
  {
    if (paramai != null);
    switch (eb.a[paramai.ordinal()])
    {
    default:
      return s;
    case 1:
      return q;
    case 2:
    }
    return r;
  }

  public static Color d(ai paramai)
  {
    if (paramai != null);
    switch (eb.a[paramai.ordinal()])
    {
    default:
      return d;
    case 1:
      return g;
    case 2:
    }
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ea
 * JD-Core Version:    0.6.2
 */