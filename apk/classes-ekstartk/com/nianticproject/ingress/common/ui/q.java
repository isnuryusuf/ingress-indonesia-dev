package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.b.r;
import com.nianticproject.ingress.common.x.a;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;
import com.nianticproject.ingress.shared.aj;

final class q extends a
{
  q(String paramString)
  {
    super(paramString);
  }

  public final f a(p paramp)
  {
    an.a(o.d());
    aj.a("LoadMainUiSkin");
    o.a(new Skin(c.a("{data:common/data/nemesis.json,data-xhdpi:common/data-xhdpi/nemesis.json,data-xxhdpi:common/data-xxhdpi/nemesis.json}"), o.d(), r.a()));
    BitmapFontCache.enableMulticolor(d.a());
    an.a(o.e());
    aj.b();
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.q
 * JD-Core Version:    0.6.2
 */