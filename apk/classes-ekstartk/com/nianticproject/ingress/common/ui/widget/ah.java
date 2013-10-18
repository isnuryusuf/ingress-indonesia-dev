package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.playerprofile.ao;
import com.nianticproject.ingress.shared.ai;
import java.util.Collections;

public final class ah extends g
{
  private String b;
  private final String c;
  private final com.nianticproject.ingress.common.h.l d;
  private String e = null;
  private boolean f = false;
  private long g = -1L;

  public ah(com.nianticproject.ingress.common.h.l paraml, Label.LabelStyle paramLabelStyle)
  {
    this(paraml, paramLabelStyle, "%s", null);
  }

  public ah(com.nianticproject.ingress.common.h.l paraml, Label.LabelStyle paramLabelStyle, String paramString, ai paramai)
  {
    this(paraml, paramLabelStyle, "%s", paramString, paramai);
  }

  private ah(com.nianticproject.ingress.common.h.l paraml, Label.LabelStyle paramLabelStyle, String paramString1, String paramString2)
  {
    super("", paramLabelStyle, 0);
    this.c = paramString1;
    this.d = paraml;
    a(paramString2);
  }

  private ah(com.nianticproject.ingress.common.h.l paraml, Label.LabelStyle paramLabelStyle, String paramString1, String paramString2, ai paramai)
  {
    this(paraml, com.nianticproject.ingress.common.ui.l.a(paramLabelStyle, paramai), paramString1, paramString2);
  }

  public final void a(String paramString)
  {
    if ((paramString == null) || (paramString.equals(this.e)))
      return;
    this.e = paramString;
    setText("...");
    this.d.a(Collections.singletonList(paramString), new aj(this, "NicknameScrollLabel.updateLabel"));
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    if (!ao.l());
    long l;
    ac localac;
    do
    {
      do
        return;
      while ((!ao.m()) || (this.g == -1L));
      l = System.currentTimeMillis();
      localac = p.a().F();
    }
    while (l - this.g <= localac.e());
    o.a().a(bs.aO);
    localac.a(this.b);
    this.f = false;
    this.g = -1L;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ah
 * JD-Core Version:    0.6.2
 */