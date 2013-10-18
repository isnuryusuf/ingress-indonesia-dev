package com.nianticproject.ingress.common.itemupgrade;

import com.a.a.e;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.ah;
import com.nianticproject.ingress.common.ui.widget.w;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.UpgradedModable;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.components.m;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.ai;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class n
  implements o
{
  protected final l a;
  protected final k b;
  protected final ad c;
  protected Skin d;
  private final int e;
  private f f;
  private Texture g;
  private UpgradeProgressDialog h;
  private boolean i;
  private float j = 3.4028235E+38F;

  public n(f paramf, int paramInt, k paramk, l paraml, ad paramad)
  {
    this.a = ((l)an.a(paraml));
    this.b = ((k)an.a(paramk));
    this.c = ((ad)an.a(paramad));
    this.f = ((f)an.a(paramf));
    this.e = paramInt;
    Portal localPortal = (Portal)paramf.getComponent(Portal.class);
    an.a(localPortal);
    an.a(localPortal.getLinkedMod(paramInt));
  }

  public final Actor a(Skin paramSkin)
  {
    if (this.g == null);
    Table localTable1;
    w localw;
    Table localTable2;
    Table localTable3;
    Table localTable5;
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.d = ((Skin)an.a(paramSkin));
      this.g = g.b(((Portal)this.f.getComponent(Portal.class)).getLinkedMod(this.e).buildModResource().getResourceType());
      localTable1 = new Table();
      localw = new w(((Portal)this.f.getComponent(Portal.class)).getLinkedMod(this.e).getDisplayName().toUpperCase(), (Label.LabelStyle)paramSkin.get("details-title", Label.LabelStyle.class));
      localw.a(2);
      localw.padLeft(e.b(0.5F));
      localTable1.add(new Image(new TextureRegionDrawable(new TextureRegion(this.g)), Scaling.none, 1)).i();
      localTable2 = new Table();
      Portal localPortal = (Portal)this.f.getComponent(Portal.class);
      new UpgradedModable((Modable)this.f.getComponent(Modable.class), null, this.e);
      Mod localMod = localPortal.getLinkedMod(this.e);
      Label.LabelStyle localLabelStyle = (Label.LabelStyle)this.d.get("mod-details-stats", Label.LabelStyle.class);
      localTable3 = new Table();
      localTable3.defaults().o().k();
      Table localTable4 = new Table();
      localTable4.add(new Label("Owner: ", localLabelStyle));
      ai localai = b.a(this.f);
      localTable4.add(new ah(this.a, localLabelStyle, localMod.getInstallingUser(), localai)).o();
      localTable3.add(localTable4);
      localTable3.row();
      localTable5 = new Table();
      Iterator localIterator = localMod.getStatModifiers().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((localEntry.getValue() != null) && (((Long)localEntry.getValue()).longValue() != 0L) && (((m)localEntry.getKey()).e()))
        {
          localTable5.add(new Label(com.nianticproject.ingress.common.ui.c.a().a((Enum)localEntry.getKey()) + " ", localLabelStyle));
          localTable5.add(new Label(((m)localEntry.getKey()).b(((Long)localEntry.getValue()).longValue()), localLabelStyle)).o().k();
          localTable5.row();
        }
      }
    }
    localTable3.add(localTable5);
    localTable3.row();
    localTable2.add(localTable3).o().g().j().e(e.a(0.02F)).f(e.a(0.06F));
    Table localTable6 = new Table();
    localTable6.add(localw).b(Integer.valueOf(2)).k();
    localTable6.row();
    localTable6.add(localTable1).f(e.b(0.05F)).p().a(e.a(0.3F)).g(e.b(0.05F));
    localTable6.add(localTable2).n().g().j();
    localTable6.setBackground(this.d.getDrawable("transparent-no-outline"));
    this.i = true;
    localTable6.pack();
    return localTable6;
  }

  public final boolean a(GameState paramGameState)
  {
    boolean bool1 = true;
    this.f = ((f)paramGameState.gameEntities.get(this.f.getGuid()));
    boolean bool2 = this.i;
    boolean bool3;
    boolean bool4;
    if (this.f != null)
    {
      bool3 = bool1;
      this.i = (bool3 & bool2);
      if (this.i)
      {
        Portal localPortal = (Portal)this.f.getComponent(Portal.class);
        bool4 = this.i;
        if ((localPortal == null) || (localPortal.getLinkedMod(this.e) == null))
          break label115;
      }
    }
    while (true)
    {
      this.i = (bool4 & bool1);
      return this.i;
      bool3 = false;
      break;
      label115: bool1 = false;
    }
  }

  public final void c()
  {
    this.i = false;
    ac.a(this.h);
    this.h = null;
    ac.a(this.g);
    this.g = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.n
 * JD-Core Version:    0.6.2
 */