package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.model.ApGain;
import java.util.Iterator;
import java.util.List;

final class f extends n
{
  f(c paramc)
  {
  }

  public final String a()
  {
    return "AvatarPlayerStatusBar:playerChangeListener";
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    c.h(this.a).setText("L" + paramInt);
    c.a(this.a, c.i(this.a).d(), c.i(this.a).c());
    c.j(this.a);
  }

  public final void a(long paramLong1, long paramLong2, long paramLong3, z paramz)
  {
    this.a.a(paramLong1, paramLong2, paramLong3, paramz);
  }

  public final void a(long paramLong, List<ApGain> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      for (l = 0L; localIterator.hasNext(); l += ((ApGain)localIterator.next()).b());
    }
    long l = 0L;
    this.a.a(l);
  }

  public final void a(ai paramai1, ai paramai2)
  {
    if (paramai1 != paramai2)
    {
      c.b(this.a).setColor(ea.a(paramai2));
      c.a(this.a, c.c(this.a));
      c.e(this.a).a(c.d(this.a));
      HighLowWatermarkBar localHighLowWatermarkBar = c.a(this.a, paramai2, c.f(this.a).a().a(), c.f(this.a).a().a());
      c.a(c.g(this.a), c.f(this.a), localHighLowWatermarkBar);
      c.a(this.a, localHighLowWatermarkBar);
    }
  }

  public final void a(com.nianticproject.ingress.shared.f paramf1, com.nianticproject.ingress.shared.f paramf2)
  {
  }

  public final void a(String paramString)
  {
    c.b(this.a).setText(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.f
 * JD-Core Version:    0.6.2
 */