package com.nianticproject.ingress.common.missions;

import com.google.a.c.cr;
import com.google.a.c.du;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.g;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.DefaultActionRange;
import com.nianticproject.ingress.gameentity.components.ImageByUrl;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.SimplePortal;
import com.nianticproject.ingress.gameentity.components.SimpleTeam;
import com.nianticproject.ingress.gameentity.components.portal.SimplePhotoStreamInfo;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.m;
import java.util.concurrent.TimeUnit;

final class ba extends g
{
  ba(aw paramaw, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    f localf = this.a.c;
    GameEntityBuilder localGameEntityBuilder = new GameEntityBuilder(this.a.c.getGuid()).a(a.b(this.a.b.a)).a(new SimpleTeam(ai.c)).a(new SimplePortal()).a(new DefaultActionRange()).a(new SimplePhotoStreamInfo(null, 0));
    ImageByUrl localImageByUrl = (ImageByUrl)this.a.c.getComponent(ImageByUrl.class);
    if (localImageByUrl != null)
      localGameEntityBuilder.a(localImageByUrl);
    this.a.c = localGameEntityBuilder.a();
    String str = ((Portal)localf.getComponent(Portal.class)).getDescriptiveText(m.a);
    if (str != null)
      ((Portal)this.a.c.getComponent(Portal.class)).addOrUpdateDescriptiveText(m.a, str);
    if (this.a.c.getComponentsAsMap().size() != localf.getComponentsAsMap().size())
      aw.w().c("Unexpected variance in neutralized portal. currentComponentMapSize(" + this.a.c.getComponentsAsMap().size() + ") oldComponentMapSize(" + localf.getComponentsAsMap().size() + ")");
    this.a.j.d(du.b(this.a.c));
    this.a.j.c(du.b(aw.f(this.a)));
    this.a.a(aw.g(this.a), 5, TimeUnit.SECONDS);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ba
 * JD-Core Version:    0.6.2
 */