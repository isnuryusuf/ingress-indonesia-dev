package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.ui.widget.ap;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.f;
import com.nianticproject.ingress.shared.model.ApGain;
import java.util.Iterator;
import java.util.List;

final class ad extends n
{
  ad(ab paramab)
  {
  }

  public final String a()
  {
    return "OldPlayerStatusBar:playerChangeListener";
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    ab.c(this.a).setText(paramInt);
    ab.a(this.a, ab.h(this.a).d(), ab.h(this.a).c());
    ab.a(this.a, ab.h(this.a).e());
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
    this.a.a(paramLong, l);
  }

  public final void a(ai paramai1, ai paramai2)
  {
    if (paramai1 != paramai2)
    {
      ab.b(this.a).setColor(ea.a(paramai2));
      ap localap = ab.a(this.a, paramai2, ab.c(this.a).getText().toString());
      ab.a(ab.d(this.a), ab.e(this.a), localap);
      ab.a(this.a, localap);
      ab.b(this.a, ab.e(this.a).getLabel());
      HighLowWatermarkBar localHighLowWatermarkBar = ab.a(this.a, paramai2, ab.f(this.a).a().a(), ab.f(this.a).a().a());
      ab.a(ab.g(this.a), ab.f(this.a), localHighLowWatermarkBar);
      ab.a(this.a, localHighLowWatermarkBar);
    }
  }

  public final void a(f paramf1, f paramf2)
  {
  }

  public final void a(String paramString)
  {
    ab.b(this.a).setText(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ad
 * JD-Core Version:    0.6.2
 */