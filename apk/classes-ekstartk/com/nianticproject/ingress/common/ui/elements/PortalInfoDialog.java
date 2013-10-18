package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasRegion;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment.SelectableHudStyle;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel.ScrollLabelStyle;
import com.nianticproject.ingress.common.ui.widget.ah;
import com.nianticproject.ingress.common.ui.widget.bd;
import com.nianticproject.ingress.common.ui.widget.g;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.w;
import com.nianticproject.ingress.gameentity.components.Captured;
import com.nianticproject.ingress.gameentity.components.Energy;
import com.nianticproject.ingress.gameentity.components.ImageByBytes;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.components.i;
import com.nianticproject.ingress.shared.r;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class PortalInfoDialog extends ModalDialog
{
  private static final aa a = new aa(PortalInfoDialog.class);
  private static final com.a.a.e af = com.a.a.e.a(0.02F);
  private static final com.a.a.e ag = com.a.a.e.a(0.04F);
  private static final w b = new w();
  private static TextureAtlas d;
  private Image A;
  private ScrollLabel B;
  private d C;
  private Image D;
  private Image E;
  private Table F;
  private Image G;
  private aw[] H;
  private ax[] I;
  private aw[] J;
  private ah K;
  private Label L;
  private Label M;
  private Label N;
  private Stack O;
  private Table P;
  private ActionButton Q;
  private ActionButton R;
  private ActionButton S;
  private ActionButton T;
  private ActionButton U;
  private ActionButton V;
  private Image W;
  private com.nianticproject.ingress.shared.ai X;
  private String Y;
  private boolean Z;
  private final String aA = "resonator-NW";
  private final String aB = "resonator-S";
  private final String aC = "resonator-SE";
  private final String aD = "resonator-SW";
  private final String aE = "resonator-W";
  private boolean aF;
  private boolean aG = true;
  private boolean aa;
  private boolean ab;
  private Image ac;
  private Label ad;
  private Stack ae;
  private final String ah = "energy-E";
  private final String ai = "energy-N";
  private final String aj = "energy-NE";
  private final String ak = "energy-NW";
  private final String al = "energy-S";
  private final String am = "energy-SE";
  private final String an = "energy-SW";
  private final String ao = "energy-W";
  private final String ap = "level-E";
  private final String aq = "level-N";
  private final String ar = "level-NE";
  private final String as = "level-NW";
  private final String at = "level-S";
  private final String au = "level-SE";
  private final String av = "level-SW";
  private final String aw = "level-W";
  private final String ax = "resonator-E";
  private final String ay = "resonator-N";
  private final String az = "resonator-NE";
  private final com.nianticproject.ingress.common.j.av e;
  private final com.nianticproject.ingress.common.g.e f;
  private final com.nianticproject.ingress.common.scanner.k g;
  private final h h;
  private final com.nianticproject.ingress.common.h.l i;
  private final ej j;
  private final com.nianticproject.ingress.common.model.k k;
  private final ed l;
  private final av m;
  private final AtomicBoolean n = new AtomicBoolean();
  private final float o;
  private final com.nianticproject.ingress.common.model.l p = new ai(this);
  private SelectableHudFragment q;
  public Portal r;
  private com.nianticproject.ingress.gameentity.f s;
  private ab t = ab.a;
  private GameState u;
  private final Map<r, com.nianticproject.ingress.gameentity.f> v = hc.b();
  private Skin w;
  private Label.LabelStyle x;
  private Image y;
  private Stack z;

  public PortalInfoDialog(com.nianticproject.ingress.common.scanner.k paramk, h paramh, com.nianticproject.ingress.common.j.av paramav, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.model.k paramk1, ej paramej, GameState paramGameState, com.nianticproject.ingress.common.h.l paraml, ed paramed, av paramav1, float paramFloat)
  {
    super(new PortalInfoDialog.Style());
    this.g = ((com.nianticproject.ingress.common.scanner.k)an.a(paramk));
    this.h = ((h)an.a(paramh));
    this.e = ((com.nianticproject.ingress.common.j.av)an.a(paramav));
    this.f = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.j = ((ej)an.a(paramej));
    this.k = ((com.nianticproject.ingress.common.model.k)an.a(paramk1));
    this.i = ((com.nianticproject.ingress.common.h.l)an.a(paraml));
    this.l = ((ed)an.a(paramed));
    this.m = ((av)an.a(paramav1));
    this.o = paramFloat;
    a(paramGameState);
    e();
  }

  private void a(Group paramGroup, int paramInt, Drawable paramDrawable, r paramr, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    TextureRegionDrawable localTextureRegionDrawable = new TextureRegionDrawable(this.w.getRegion(paramString1));
    TextureAtlas.AtlasRegion localAtlasRegion1 = d.findRegion(paramString2);
    TextureAtlas.AtlasRegion localAtlasRegion2 = d.findRegion(paramString3);
    TextureAtlas.AtlasRegion localAtlasRegion3 = d.findRegion(paramString4);
    aw localaw1 = new aw(this, localTextureRegionDrawable, localAtlasRegion1, paramInt);
    paramGroup.addActor(localaw1);
    ax localax = new ax(this, localAtlasRegion2, paramInt, (Label.LabelStyle)this.w.get("small-white", Label.LabelStyle.class));
    paramGroup.addActor(localax);
    aw localaw2 = new aw(this, paramDrawable, localAtlasRegion3, paramInt);
    paramGroup.addActor(localaw2);
    this.H[paramr.ordinal()] = localaw1;
    this.I[paramr.ordinal()] = localax;
    this.J[paramr.ordinal()] = localaw2;
  }

  public static void a(SelectableHudFragment.SelectableHudStyle paramSelectableHudStyle)
  {
    paramSelectableHudStyle.markerSlices = 0;
    paramSelectableHudStyle.selectedCaliperRadius = ((float)(0.55D * paramSelectableHudStyle.selectedCaliperRadius));
    paramSelectableHudStyle.selectionSpeed = ((float)(2.5D * paramSelectableHudStyle.selectionSpeed));
  }

  private void a(com.nianticproject.ingress.gameentity.f paramf)
  {
    boolean bool1 = true;
    this.s = paramf;
    this.t = ab.a;
    Image localImage1 = this.D;
    boolean bool2;
    Image localImage2;
    if (paramf != null)
    {
      bool2 = bool1;
      localImage1.setVisible(bool2);
      localImage2 = this.E;
      if (paramf != null)
        break label55;
    }
    while (true)
    {
      localImage2.setVisible(bool1);
      return;
      bool2 = false;
      break;
      label55: bool1 = false;
    }
  }

  private void a(com.nianticproject.ingress.shared.ai paramai, Captured paramCaptured)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("refreshPortalOwnerInfo");
      this.K.setColor(ea.a(paramai));
      if (paramCaptured == null)
      {
        this.K.setText("uncaptured");
        this.K.setStyle(this.x);
      }
      while (true)
      {
        return;
        this.K.a(paramCaptured.getCapturingPlayerId());
        this.K.setStyle(com.nianticproject.ingress.common.ui.l.a(this.x, paramai));
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private void a(r paramr)
  {
    this.I[paramr.ordinal()].a();
    this.J[paramr.ordinal()].a();
  }

  public static void a(boolean paramBoolean)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PortalInfoDialog.createResources");
      boolean bool = b.a(paramBoolean);
      if (!bool)
        return;
      com.nianticproject.ingress.common.b.c.a("CreatePortalInfoUiTextureAtlas", com.nianticproject.ingress.common.b.c.c("{data:portal_info/data/portal_ui.atlas,data-xhdpi:portal_info/data-xhdpi/portal_ui.atlas,data-xxhdpi:portal_info/data-xxhdpi/portal_ui.atlas}"), new am());
      b.c();
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static void b()
  {
    if (!b.d())
      return;
    ac.a(d);
    d = null;
    b.e();
  }

  private void b(float paramFloat)
  {
    com.nianticproject.ingress.shared.ai localai = b.a(this.r.getEntity());
    if (this.r.getResonatorCount() >= 8);
    for (int i1 = 1; (i1 != 0) && (localai == this.k.h()); i1 = 0)
    {
      this.V.addAction(Actions.fadeIn(paramFloat));
      return;
    }
    this.V.addAction(Actions.fadeOut(paramFloat));
  }

  private boolean b(com.nianticproject.ingress.shared.ai paramai, Captured paramCaptured)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("portalOwnershipChanged");
      if (paramCaptured == null)
      {
        if (this.Y != null)
        {
          this.Y = null;
          this.X = null;
          return true;
        }
        return false;
      }
      if ((this.X != null) && (this.X.equals(paramai)) && (this.Y != null))
      {
        boolean bool = this.Y.contentEquals(paramCaptured.getCapturingPlayerId());
        if (bool)
          return false;
      }
      this.X = paramai;
      this.Y = paramCaptured.getCapturingPlayerId();
      return true;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private Actor d()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("createImageTable");
      this.y = new Image();
      this.y.getColor().a = 0.0F;
      this.y.setAlign(1);
      this.y.setScaling(Scaling.fit);
      this.A = new Image(this.w.getDrawable("add-photo"));
      this.A.setVisible(false);
      Table localTable1 = new Table();
      localTable1.add(this.A).m().n();
      this.z = new Stack();
      Actor[] arrayOfActor1 = new Actor[2];
      arrayOfActor1[0] = this.y;
      arrayOfActor1[1] = localTable1;
      this.z = bd.a(arrayOfActor1);
      this.B = new ScrollLabel("loading...", (Label.LabelStyle)this.w.get("default-button", Label.LabelStyle.class), 16.0F);
      this.B.addAction(com.nianticproject.ingress.common.ui.a.a.a(this.B, 3.0F));
      this.B.setAlignment(1);
      Table localTable2 = new Table();
      this.ae = new Stack();
      this.ad = new Label(null, (Label.LabelStyle)this.w.get("portal-attribution", Label.LabelStyle.class));
      this.ac = new Image();
      this.ac.setDrawable(this.w.getDrawable("text-bg-fade"));
      Actor[] arrayOfActor2 = new Actor[2];
      arrayOfActor2[0] = this.ac;
      arrayOfActor2[1] = this.ad;
      this.ae = bd.a(arrayOfActor2);
      localTable2.add(new Image(this.w.getDrawable("info-icon"))).k().l().n();
      localTable2.add(this.ae).m().l().n().g(ag);
      Actor[] arrayOfActor3 = new Actor[3];
      arrayOfActor3[0] = this.B;
      arrayOfActor3[1] = this.z;
      arrayOfActor3[2] = localTable2;
      Stack localStack = bd.a(arrayOfActor3);
      Table localTable3 = new Table();
      localTable3.setBackground(this.w.getDrawable("gradient-bg"));
      localTable3.add(localStack).n().f().d(af);
      localTable3.addListener(new ar(this, localTable3));
      return localTable3;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private Actor i()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("createInfoTable");
      Table localTable1 = new Table();
      localTable1.defaults().i(10.0F);
      Table localTable2 = new Table();
      Actor[] arrayOfActor = new Actor[2];
      arrayOfActor[0] = this.D;
      arrayOfActor[1] = this.E;
      localTable2.add(bd.a(arrayOfActor)).l().m().n();
      this.N = new Label("", this.x);
      localTable1.add(new Label("Energy: ", this.x)).k();
      localTable1.add(this.N).k().o();
      localTable1.add(localTable2).m().l();
      localTable1.row();
      localTable1.add(new Label("Owner: ", this.x)).k().o().b(Integer.valueOf(2));
      localTable1.row();
      localTable1.add(j()).i().o().g().b(Integer.valueOf(2));
      com.nianticproject.ingress.shared.aj.b();
      a.ag(this, localTable1);
      return localTable1;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private Actor j()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("setupPortalOwnerInfo");
      Captured localCaptured = (Captured)this.r.getEntity().getComponent(Captured.class);
      if (localCaptured != null);
      com.nianticproject.ingress.shared.ai localai;
      for (Object localObject2 = b.a(this.r.getEntity()); ; localObject2 = localai)
      {
        Label.LabelStyle localLabelStyle = (Label.LabelStyle)this.w.get("portal-stats", Label.LabelStyle.class);
        this.K = new ah(this.i, localLabelStyle);
        this.K.setAlignment(8);
        this.K.setColor(ea.a((com.nianticproject.ingress.shared.ai)localObject2));
        a((com.nianticproject.ingress.shared.ai)localObject2, localCaptured);
        ah localah = this.K;
        return localah;
        localai = com.nianticproject.ingress.shared.ai.c;
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private int k()
  {
    Iterator localIterator = this.v.values().iterator();
    int i1 = 0;
    Energy localEnergy;
    if (localIterator.hasNext())
    {
      localEnergy = (Energy)((com.nianticproject.ingress.gameentity.f)localIterator.next()).getComponent(Energy.class);
      if (localEnergy == null)
        break label69;
    }
    label69: for (int i2 = i1 + localEnergy.getTotal(); ; i2 = i1)
    {
      i1 = i2;
      break;
      return i1;
    }
  }

  private void l()
  {
    a.e();
    int i2;
    r localr;
    String str;
    boolean bool;
    try
    {
      com.nianticproject.ingress.shared.aj.a("updateSchematic");
      dh localdh = this.r.getLinkedResonatorGuids();
      r[] arrayOfr = r.values();
      int i1 = arrayOfr.length;
      i2 = 0;
      if (i2 >= i1)
        break label361;
      localr = arrayOfr[i2];
      str = (String)localdh.get(localr);
      if (str == null)
      {
        this.H[localr.ordinal()].a();
        a(localr);
      }
      else
      {
        bool = com.nianticproject.ingress.common.h.c.a(str);
        this.H[localr.ordinal()].a(bool);
        if (bool)
          a(localr);
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
    com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.v.get(localr);
    Resonator localResonator;
    Energy localEnergy;
    if (localf != null)
    {
      localResonator = (Resonator)localf.getComponent(Resonator.class);
      if (localResonator != null)
      {
        int i3 = localResonator.getLevel();
        this.I[localr.ordinal()].a(i3);
        this.I[localr.ordinal()].a(bool);
        localEnergy = (Energy)localf.getComponent(Energy.class);
        if (localEnergy == null)
          break label371;
      }
    }
    label361: label365: label371: for (int i4 = localEnergy.getTotal(); ; i4 = 0)
    {
      aw localaw = this.J[localr.ordinal()];
      localaw.a(i4 / localResonator.getEnergyCapacity());
      localaw.a(bool);
      break label365;
      aa localaa1 = a;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = str;
      arrayOfObject1[1] = localr.name();
      localaa1.b("GameState problem: Portal (%s) has a Resonator (%s) that's invalid", arrayOfObject1);
      a(localr);
      break label365;
      aa localaa2 = a;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = str;
      arrayOfObject2[1] = localr.name();
      localaa2.b("GameState problem: Portal (%s) thinks it has a Resonator (%s) that doesn't exist", arrayOfObject2);
      a(localr);
      break label365;
      com.nianticproject.ingress.shared.aj.b();
      return;
      i2++;
      break;
    }
  }

  private Actor m()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("createActionButtonTable");
      this.O = new Stack();
      n();
      Stack localStack = this.O;
      return localStack;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private void n()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("maybeRebuildActionTable");
      Table localTable = this.P;
      if (localTable != null)
        return;
      if (this.P != null)
      {
        this.P.setTouchable(Touchable.disabled);
        this.P.addAction(Actions.sequence(Actions.fadeOut(1.0F), Actions.removeActor()));
      }
      this.P = new Table();
      this.P.defaults().j().a(com.a.a.e.a(0.88F), com.a.a.e.a(0.35F));
      try
      {
        com.nianticproject.ingress.shared.aj.a("createActionButtons");
        this.Q = new ActionButton("TARGET", "portal", this.w);
        this.Q.a(new at(this));
        this.R = new ActionButton("DEPLOY", "resonator", this.w);
        this.R.a(new au(this));
        this.S = new ActionButton("HACK", "portal", this.w);
        this.S.a(new aj(this));
        this.T = new ActionButton("UPGRADE", "portal", this.w);
        this.T.a(new ak(this));
        this.U = new ActionButton("RECHARGE", "resonators", this.w);
        this.U.a(new al(this));
        com.nianticproject.ingress.shared.aj.b();
        this.P.add(this.S).n().g();
        this.P.row();
        this.P.add(this.R).n().g();
        this.P.row();
        this.P.add(this.U).n().g();
        this.P.row();
        this.P.add(this.T).n().g();
        this.P.row();
        this.P.add(this.Q).n().g();
        this.P.row();
        this.P.getColor().a = 0.0F;
        this.P.addAction(Actions.fadeIn(1.0F));
        this.O.addActor(this.P);
        return;
      }
      finally
      {
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private void o()
  {
    HashSet localHashSet;
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("updateButtonStates");
        this.aF = this.i.d();
        com.nianticproject.ingress.common.itemupgrade.a.a(this.Q.b(), this.r.getEntity(), this.l);
        com.nianticproject.ingress.common.itemupgrade.a.b(this.V.b(), this.r.getEntity(), this.k, this.i);
        com.nianticproject.ingress.common.itemupgrade.a.a(this.S.b(), this.r.getEntity(), this.k, this.i);
        com.nianticproject.ingress.common.itemupgrade.a.a(this.T.b(), this.r.getEntity(), this.k, this.i, true);
        com.nianticproject.ingress.common.itemupgrade.a.b(this.R.b(), this.r.getEntity(), this.k, this.i, true);
        b(1.0F);
        if (this.V.a())
        {
          this.W.addAction(Actions.fadeIn(1.0F));
          localHashSet = jc.a();
          Iterator localIterator = this.v.values().iterator();
          if (!localIterator.hasNext())
            break;
          com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator.next();
          if (localf == null)
            continue;
          Resonator localResonator = (Resonator)localf.getComponent(Resonator.class);
          if (localResonator == null)
            continue;
          localHashSet.add(localResonator);
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      this.W.addAction(Actions.fadeOut(1.0F));
    }
    this.t = com.nianticproject.ingress.common.itemupgrade.a.a(this.U.b(), this.r.getEntity(), localHashSet, this.k, this.s);
    com.nianticproject.ingress.shared.aj.b();
  }

  private void p()
  {
    boolean bool1 = true;
    try
    {
      com.nianticproject.ingress.shared.aj.a("updatePlayerStatusWithPortal");
      boolean bool2;
      if (this.k.g() == null)
      {
        bool2 = false;
        this.aa = bool2;
        if (this.S == null)
          break label141;
      }
      label141: for (boolean bool3 = this.S.b().a(); ; bool3 = bool1)
      {
        this.Z = bool3;
        if (this.V != null)
          bool1 = this.V.b().a();
        this.ab = bool1;
        return;
        com.nianticproject.ingress.gameentity.f localf = this.r.getEntity();
        if (this.k.g() != null);
        for (u localu = this.k.g().a(); ; localu = null)
        {
          boolean bool4 = i.a(localf, localu);
          bool2 = bool4;
          break;
        }
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    this.w = paramSkin;
    this.x = ((Label.LabelStyle)paramSkin.get("portal-stats", Label.LabelStyle.class));
    this.D = new Image(paramSkin.getRegion("portal_key"));
    this.E = new Image(paramSkin.getRegion("portal_key_ghosted"));
    a(null);
    ScrollLabel.ScrollLabelStyle localScrollLabelStyle = new ScrollLabel.ScrollLabelStyle(paramSkin.getFont("default-font"), Color.WHITE, 20.0F, 28, true);
    Table localTable1 = new Table();
    localTable1.defaults().f(ag).h(af);
    localTable1.add(d()).n().f().i().j();
    localTable1.row();
    this.F = new Table();
    this.F.setBackground(this.w.getDrawable("default-window-no-outline"));
    this.V = new ActionButton("LINK", null, (ActionButton.ActionButtonStyle)this.w.get("default-slim", ActionButton.ActionButtonStyle.class));
    this.V.a(new as(this));
    b(0.0F);
    this.W = new Image();
    this.W.addAction(Actions.alpha(0.0F));
    localTable1.add(this.F).g().l().e(ag);
    Table localTable2 = new Table();
    localTable2.defaults().d(af);
    localTable2.add(i()).k().n().g().j();
    localTable2.row();
    localTable2.add(m()).n().f().e(ag).b(com.a.a.e.b(0.7F)).g(ag).l();
    Table localTable3 = new Table();
    Table localTable4 = new Table();
    this.L = new g(null, localScrollLabelStyle, 8);
    this.M = new Label("", (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class));
    localTable4.add(this.L).o().g().k();
    localTable4.add(this.M).m().f(af);
    localTable4.setBackground(paramSkin.getDrawable("portal-info-dialog-title-bg"));
    localTable3.add(localTable4).o().g().f(af).k().b(Integer.valueOf(2)).f((int)(paramStage.getWidth() - 40.0F));
    localTable3.row();
    localTable3.add(localTable1).n().f().a(com.a.a.e.a(0.57F));
    localTable3.add(localTable2).n().f().a(com.a.a.e.a(0.43F));
    localTable3.top();
    this.q = new SelectableHudFragment(this.h);
    a(this.q.b());
    this.g.a(this.j, this.q);
    float f1 = this.o;
    Group localGroup = new Group();
    localGroup.addAction(Actions.delay(f1, Actions.run(new ap(this, localGroup))));
    paramStage.addActor(localGroup);
    a(this.u);
    this.aG = false;
    this.k.a(this.p);
    p();
    com.nianticproject.ingress.gameentity.f localf = this.r.getEntity();
    ImageByBytes localImageByBytes = (ImageByBytes)localf.getComponent(ImageByBytes.class);
    if (localImageByBytes != null)
    {
      byte[] arrayOfByte = localImageByBytes.getImageBytes();
      Pixmap localPixmap = new Pixmap(arrayOfByte, 0, arrayOfByte.length);
      TextureRegion localTextureRegion = new TextureRegion(new Texture(localPixmap));
      localPixmap.dispose();
      this.C = new aq(this, localTextureRegion);
      return localTable3;
    }
    String str = com.nianticproject.ingress.gameentity.components.f.a(localf, "");
    this.C = this.e.a(str, (int)Math.max(localTable3.getPrefWidth(), localTable3.getPrefHeight()));
    if ("".equals(str))
    {
      this.A.setVisible(true);
      return localTable3;
    }
    this.A.setVisible(false);
    return localTable3;
  }

  // ERROR //
  public final void a(GameState paramGameState)
  {
    // Byte code:
    //   0: ldc_w 1207
    //   3: invokestatic 468	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   6: ldc_w 1209
    //   9: invokestatic 468	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: aload_1
    //   14: putfield 833	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:u	Lcom/nianticproject/ingress/common/model/GameState;
    //   17: aload_0
    //   18: getfield 183	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:v	Ljava/util/Map;
    //   21: invokeinterface 1212 1 0
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 306	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:j	Lcom/nianticproject/ingress/common/scanner/ej;
    //   31: invokeinterface 1214 1 0
    //   36: ldc_w 550
    //   39: invokeinterface 793 2 0
    //   44: invokestatic 286	com/google/a/a/an:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   47: checkcast 550	com/nianticproject/ingress/gameentity/components/Portal
    //   50: putfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   53: aload_0
    //   54: getfield 183	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:v	Ljava/util/Map;
    //   57: new 1216	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog$15
    //   60: dup
    //   61: aload_0
    //   62: aload_1
    //   63: invokespecial 1219	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog$15:<init>	(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;Lcom/nianticproject/ingress/common/model/GameState;)V
    //   66: aload_0
    //   67: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   70: invokestatic 1224	com/nianticproject/ingress/gameentity/components/k:a	(Lcom/nianticproject/ingress/gameentity/g;Lcom/nianticproject/ingress/gameentity/components/Portal;)Ljava/util/Map;
    //   73: invokeinterface 1228 2 0
    //   78: invokestatic 495	com/nianticproject/ingress/shared/aj:b	()V
    //   81: aload_0
    //   82: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   85: invokeinterface 554 1 0
    //   90: ldc_w 497
    //   93: invokeinterface 793 2 0
    //   98: checkcast 497	com/nianticproject/ingress/gameentity/components/Captured
    //   101: astore 4
    //   103: aload 4
    //   105: ifnull +1150 -> 1255
    //   108: aload_0
    //   109: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   112: invokeinterface 554 1 0
    //   117: invokestatic 559	com/nianticproject/ingress/gameentity/components/b:a	(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;
    //   120: astore 5
    //   122: aload_0
    //   123: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   126: ifnull +1113 -> 1239
    //   129: aload_0
    //   130: aload 5
    //   132: aload 4
    //   134: invokespecial 1230	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:b	(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/components/Captured;)Z
    //   137: istore 6
    //   139: iload 6
    //   141: ifeq +11 -> 152
    //   144: aload_0
    //   145: aload 5
    //   147: aload 4
    //   149: invokespecial 801	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/components/Captured;)V
    //   152: aload_0
    //   153: getfield 281	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:aG	Z
    //   156: ifne +8 -> 164
    //   159: iload 6
    //   161: ifeq +577 -> 738
    //   164: aload_0
    //   165: getfield 1066	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:F	Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    //   168: invokevirtual 1231	com/badlogic/gdx/scenes/scene2d/ui/Table:clear	()V
    //   171: aload_0
    //   172: getfield 1066	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:F	Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    //   175: astore 28
    //   177: iconst_2
    //   178: anewarray 655	com/badlogic/gdx/scenes/scene2d/Actor
    //   181: astore 29
    //   183: aload_0
    //   184: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   187: ldc_w 1233
    //   190: invokevirtual 343	com/badlogic/gdx/scenes/scene2d/ui/Skin:getRegion	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    //   193: astore 30
    //   195: aload 30
    //   197: invokevirtual 1236	com/badlogic/gdx/graphics/g2d/TextureRegion:getRegionHeight	()I
    //   200: istore 31
    //   202: aload 30
    //   204: invokevirtual 1239	com/badlogic/gdx/graphics/g2d/TextureRegion:getRegionWidth	()I
    //   207: istore 32
    //   209: aload_0
    //   210: new 454	com/badlogic/gdx/scenes/scene2d/ui/Image
    //   213: dup
    //   214: aload 30
    //   216: invokespecial 1038	com/badlogic/gdx/scenes/scene2d/ui/Image:<init>	(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    //   219: putfield 1241	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:G	Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    //   222: aload_0
    //   223: getfield 1241	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:G	Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    //   226: getstatic 1244	com/badlogic/gdx/utils/Scaling:none	Lcom/badlogic/gdx/utils/Scaling;
    //   229: invokevirtual 623	com/badlogic/gdx/scenes/scene2d/ui/Image:setScaling	(Lcom/badlogic/gdx/utils/Scaling;)V
    //   232: aload_0
    //   233: invokestatic 844	com/nianticproject/ingress/shared/r:values	()[Lcom/nianticproject/ingress/shared/r;
    //   236: arraylength
    //   237: anewarray 354	com/nianticproject/ingress/common/ui/elements/aw
    //   240: putfield 378	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:H	[Lcom/nianticproject/ingress/common/ui/elements/aw;
    //   243: aload_0
    //   244: invokestatic 844	com/nianticproject/ingress/shared/r:values	()[Lcom/nianticproject/ingress/shared/r;
    //   247: arraylength
    //   248: anewarray 365	com/nianticproject/ingress/common/ui/elements/ax
    //   251: putfield 386	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:I	[Lcom/nianticproject/ingress/common/ui/elements/ax;
    //   254: aload_0
    //   255: invokestatic 844	com/nianticproject/ingress/shared/r:values	()[Lcom/nianticproject/ingress/shared/r;
    //   258: arraylength
    //   259: anewarray 354	com/nianticproject/ingress/common/ui/elements/aw
    //   262: putfield 388	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:J	[Lcom/nianticproject/ingress/common/ui/elements/aw;
    //   265: new 359	com/badlogic/gdx/scenes/scene2d/Group
    //   268: dup
    //   269: invokespecial 1137	com/badlogic/gdx/scenes/scene2d/Group:<init>	()V
    //   272: astore 33
    //   274: aload_0
    //   275: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   278: invokeinterface 554 1 0
    //   283: invokestatic 559	com/nianticproject/ingress/gameentity/components/b:a	(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;
    //   286: astore 34
    //   288: new 335	com/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable
    //   291: dup
    //   292: aload_0
    //   293: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   296: ldc_w 1246
    //   299: invokevirtual 343	com/badlogic/gdx/scenes/scene2d/ui/Skin:getRegion	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    //   302: invokespecial 346	com/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable:<init>	(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    //   305: aload 34
    //   307: invokestatic 475	com/nianticproject/ingress/common/scanner/ea:a	(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;
    //   310: invokestatic 1249	com/nianticproject/ingress/common/b/c:a	(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    //   313: astore 35
    //   315: aload_0
    //   316: aload 33
    //   318: iload 31
    //   320: aload 35
    //   322: getstatic 1252	com/nianticproject/ingress/shared/r:a	Lcom/nianticproject/ingress/shared/r;
    //   325: ldc_w 1254
    //   328: ldc 249
    //   330: ldc 217
    //   332: ldc 185
    //   334: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   337: aload_0
    //   338: aload 33
    //   340: iload 31
    //   342: aload 35
    //   344: getstatic 1258	com/nianticproject/ingress/shared/r:c	Lcom/nianticproject/ingress/shared/r;
    //   347: ldc_w 1260
    //   350: ldc 253
    //   352: ldc 221
    //   354: ldc 189
    //   356: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   359: aload_0
    //   360: aload 33
    //   362: iload 31
    //   364: aload 35
    //   366: getstatic 1262	com/nianticproject/ingress/shared/r:b	Lcom/nianticproject/ingress/shared/r;
    //   369: ldc_w 1264
    //   372: ldc_w 257
    //   375: ldc 225
    //   377: ldc 193
    //   379: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   382: aload_0
    //   383: aload 33
    //   385: iload 31
    //   387: aload 35
    //   389: getstatic 1266	com/nianticproject/ingress/shared/r:d	Lcom/nianticproject/ingress/shared/r;
    //   392: ldc_w 1268
    //   395: ldc_w 261
    //   398: ldc 229
    //   400: ldc 197
    //   402: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   405: aload_0
    //   406: aload 33
    //   408: iload 31
    //   410: aload 35
    //   412: getstatic 1270	com/nianticproject/ingress/shared/r:g	Lcom/nianticproject/ingress/shared/r;
    //   415: ldc_w 1272
    //   418: ldc_w 265
    //   421: ldc 233
    //   423: ldc 201
    //   425: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   428: aload_0
    //   429: aload 33
    //   431: iload 31
    //   433: aload 35
    //   435: getstatic 1274	com/nianticproject/ingress/shared/r:h	Lcom/nianticproject/ingress/shared/r;
    //   438: ldc_w 1276
    //   441: ldc_w 269
    //   444: ldc 237
    //   446: ldc 205
    //   448: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   451: aload_0
    //   452: aload 33
    //   454: iload 31
    //   456: aload 35
    //   458: getstatic 1278	com/nianticproject/ingress/shared/r:f	Lcom/nianticproject/ingress/shared/r;
    //   461: ldc_w 1280
    //   464: ldc_w 273
    //   467: ldc 241
    //   469: ldc 209
    //   471: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   474: aload_0
    //   475: aload 33
    //   477: iload 31
    //   479: aload 35
    //   481: getstatic 1282	com/nianticproject/ingress/shared/r:e	Lcom/nianticproject/ingress/shared/r;
    //   484: ldc_w 1284
    //   487: ldc_w 277
    //   490: ldc 245
    //   492: ldc 213
    //   494: invokespecial 1256	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/badlogic/gdx/scenes/scene2d/Group;ILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   497: new 636	com/badlogic/gdx/scenes/scene2d/ui/Table
    //   500: dup
    //   501: invokespecial 637	com/badlogic/gdx/scenes/scene2d/ui/Table:<init>	()V
    //   504: astore 36
    //   506: iconst_2
    //   507: anewarray 655	com/badlogic/gdx/scenes/scene2d/Actor
    //   510: astore 37
    //   512: aload 37
    //   514: iconst_0
    //   515: aload_0
    //   516: getfield 1241	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:G	Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    //   519: aastore
    //   520: aload 37
    //   522: iconst_1
    //   523: aload 33
    //   525: aastore
    //   526: aload 36
    //   528: aload 37
    //   530: invokestatic 660	com/nianticproject/ingress/common/ui/widget/bd:a	([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    //   533: invokevirtual 641	com/badlogic/gdx/scenes/scene2d/ui/Table:add	(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    //   536: iload 32
    //   538: i2f
    //   539: invokevirtual 1286	com/a/a/c:b	(F)Lcom/a/a/c;
    //   542: iload 31
    //   544: i2f
    //   545: invokevirtual 1288	com/a/a/c:c	(F)Lcom/a/a/c;
    //   548: invokevirtual 779	com/a/a/c:i	()Lcom/a/a/c;
    //   551: pop
    //   552: aload 29
    //   554: iconst_0
    //   555: aload 36
    //   557: aastore
    //   558: aload_0
    //   559: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   562: invokeinterface 554 1 0
    //   567: invokestatic 559	com/nianticproject/ingress/gameentity/components/b:a	(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;
    //   570: astore 39
    //   572: new 1290	com/nianticproject/ingress/common/ui/widget/az
    //   575: dup
    //   576: aload_0
    //   577: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   580: ldc_w 1292
    //   583: invokevirtual 629	com/badlogic/gdx/scenes/scene2d/ui/Skin:getDrawable	(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    //   586: aload 39
    //   588: invokestatic 475	com/nianticproject/ingress/common/scanner/ea:a	(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;
    //   591: invokespecial 1295	com/nianticproject/ingress/common/ui/widget/az:<init>	(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V
    //   594: astore 40
    //   596: aload_0
    //   597: getfield 997	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:W	Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    //   600: aload 40
    //   602: invokevirtual 698	com/badlogic/gdx/scenes/scene2d/ui/Image:setDrawable	(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    //   605: new 636	com/badlogic/gdx/scenes/scene2d/ui/Table
    //   608: dup
    //   609: invokespecial 637	com/badlogic/gdx/scenes/scene2d/ui/Table:<init>	()V
    //   612: astore 41
    //   614: aload 41
    //   616: aload_0
    //   617: getfield 567	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:V	Lcom/nianticproject/ingress/common/ui/widget/ActionButton;
    //   620: invokevirtual 641	com/badlogic/gdx/scenes/scene2d/ui/Table:add	(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    //   623: invokevirtual 648	com/a/a/c:n	()Lcom/a/a/c;
    //   626: ldc_w 425
    //   629: invokestatic 1300	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   632: ldc_w 1301
    //   635: invokestatic 1300	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   638: invokevirtual 1304	com/a/a/c:a	(Ljava/lang/Float;Ljava/lang/Float;)Lcom/a/a/c;
    //   641: pop
    //   642: new 636	com/badlogic/gdx/scenes/scene2d/ui/Table
    //   645: dup
    //   646: invokespecial 637	com/badlogic/gdx/scenes/scene2d/ui/Table:<init>	()V
    //   649: astore 43
    //   651: aload 43
    //   653: aload_0
    //   654: getfield 997	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:W	Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    //   657: invokevirtual 641	com/badlogic/gdx/scenes/scene2d/ui/Table:add	(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    //   660: invokevirtual 648	com/a/a/c:n	()Lcom/a/a/c;
    //   663: fconst_1
    //   664: invokestatic 1300	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   667: ldc_w 1305
    //   670: invokestatic 1300	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   673: invokevirtual 1304	com/a/a/c:a	(Ljava/lang/Float;Ljava/lang/Float;)Lcom/a/a/c;
    //   676: pop
    //   677: new 636	com/badlogic/gdx/scenes/scene2d/ui/Table
    //   680: dup
    //   681: invokespecial 637	com/badlogic/gdx/scenes/scene2d/ui/Table:<init>	()V
    //   684: astore 45
    //   686: aload 45
    //   688: invokevirtual 764	com/badlogic/gdx/scenes/scene2d/ui/Table:row	()Lcom/a/a/c;
    //   691: pop
    //   692: aload 45
    //   694: iconst_2
    //   695: anewarray 655	com/badlogic/gdx/scenes/scene2d/Actor
    //   698: dup
    //   699: iconst_0
    //   700: aload 43
    //   702: aastore
    //   703: dup
    //   704: iconst_1
    //   705: aload 41
    //   707: aastore
    //   708: invokevirtual 1309	com/badlogic/gdx/scenes/scene2d/ui/Table:stack	([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    //   711: invokevirtual 648	com/a/a/c:n	()Lcom/a/a/c;
    //   714: invokevirtual 714	com/a/a/c:f	()Lcom/a/a/c;
    //   717: pop
    //   718: aload 29
    //   720: iconst_1
    //   721: aload 45
    //   723: aastore
    //   724: aload 28
    //   726: aload 29
    //   728: invokevirtual 1309	com/badlogic/gdx/scenes/scene2d/ui/Table:stack	([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    //   731: invokevirtual 648	com/a/a/c:n	()Lcom/a/a/c;
    //   734: invokevirtual 714	com/a/a/c:f	()Lcom/a/a/c;
    //   737: pop
    //   738: aload_0
    //   739: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   742: invokeinterface 736 1 0
    //   747: astore 7
    //   749: aload 7
    //   751: invokestatic 1313	com/google/a/a/br:b	(Ljava/lang/String;)Z
    //   754: ifne +784 -> 1538
    //   757: iconst_1
    //   758: istore 8
    //   760: iload 8
    //   762: ldc_w 1315
    //   765: invokestatic 1318	com/google/a/a/an:a	(ZLjava/lang/Object;)V
    //   768: aload_0
    //   769: getfield 310	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:k	Lcom/nianticproject/ingress/common/model/k;
    //   772: aload 7
    //   774: invokestatic 1323	com/nianticproject/ingress/common/gameentity/a:a	(Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;)Lcom/nianticproject/ingress/common/inventory/ui/q;
    //   777: astore 9
    //   779: aload_0
    //   780: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   783: ifnull +480 -> 1263
    //   786: aload_0
    //   787: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   790: invokeinterface 736 1 0
    //   795: invokestatic 1313	com/google/a/a/br:b	(Ljava/lang/String;)Z
    //   798: ifne +465 -> 1263
    //   801: aload 9
    //   803: ifnull +460 -> 1263
    //   806: aload_0
    //   807: aload 9
    //   809: invokevirtual 1327	com/nianticproject/ingress/common/inventory/ui/q:h	()Lcom/nianticproject/ingress/gameentity/f;
    //   812: invokespecial 1042	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/nianticproject/ingress/gameentity/f;)V
    //   815: aload_0
    //   816: invokespecial 889	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:n	()V
    //   819: ldc_w 1329
    //   822: invokestatic 468	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   825: aload_0
    //   826: getfield 1100	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:L	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   829: ifnull +46 -> 875
    //   832: aload_0
    //   833: getfield 1100	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:L	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   836: invokevirtual 1333	com/badlogic/gdx/scenes/scene2d/ui/Label:getText	()Ljava/lang/CharSequence;
    //   839: invokestatic 1338	com/nianticproject/ingress/common/w/am:a	(Ljava/lang/CharSequence;)Ljava/lang/String;
    //   842: astore 26
    //   844: aload_0
    //   845: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   848: getstatic 1343	com/nianticproject/ingress/shared/m:a	Lcom/nianticproject/ingress/shared/m;
    //   851: invokeinterface 1347 2 0
    //   856: astore 27
    //   858: aload 27
    //   860: invokestatic 1313	com/google/a/a/br:b	(Ljava/lang/String;)Z
    //   863: ifne +408 -> 1271
    //   866: aload_0
    //   867: getfield 1100	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:L	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   870: aload 27
    //   872: invokevirtual 1348	com/badlogic/gdx/scenes/scene2d/ui/Label:setText	(Ljava/lang/CharSequence;)V
    //   875: aload_0
    //   876: getfield 691	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ad	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   879: ifnull +233 -> 1112
    //   882: aload_0
    //   883: getfield 691	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ad	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   886: invokevirtual 1333	com/badlogic/gdx/scenes/scene2d/ui/Label:getText	()Ljava/lang/CharSequence;
    //   889: invokestatic 1338	com/nianticproject/ingress/common/w/am:a	(Ljava/lang/CharSequence;)Ljava/lang/String;
    //   892: astore 17
    //   894: aload_0
    //   895: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   898: invokeinterface 554 1 0
    //   903: astore 18
    //   905: aload 18
    //   907: ifnull +622 -> 1529
    //   910: aload 18
    //   912: ldc_w 1350
    //   915: invokeinterface 793 2 0
    //   920: checkcast 1350	com/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo
    //   923: astore 19
    //   925: aload 19
    //   927: ifnull +602 -> 1529
    //   930: aload 19
    //   932: invokeinterface 1354 1 0
    //   937: astore 20
    //   939: aload 20
    //   941: ifnull +588 -> 1529
    //   944: aload 20
    //   946: invokevirtual 1359	com/nianticproject/ingress/shared/portal/PortalImage:a	()Lcom/nianticproject/ingress/shared/plext/c;
    //   949: astore 21
    //   951: aload 21
    //   953: ifnull +576 -> 1529
    //   956: aload 21
    //   958: invokevirtual 1364	com/nianticproject/ingress/shared/plext/c:c	()Lcom/nianticproject/ingress/shared/plext/a;
    //   961: astore 22
    //   963: getstatic 1369	com/nianticproject/ingress/common/ui/elements/an:a	[I
    //   966: aload 21
    //   968: invokevirtual 1372	com/nianticproject/ingress/shared/plext/c:a	()Lcom/nianticproject/ingress/shared/plext/d;
    //   971: invokevirtual 1375	com/nianticproject/ingress/shared/plext/d:ordinal	()I
    //   974: iaload
    //   975: tableswitch	default:+554 -> 1529, 1:+325->1300, 2:+340->1315
    //   997: aload 199
    //   999: nop
    //   1000: sipush 10932
    //   1003: iconst_m1
    //   1004: fload_2
    //   1005: getstatic 1377	com/nianticproject/ingress/shared/m:e	Lcom/nianticproject/ingress/shared/m;
    //   1008: invokeinterface 1347 2 0
    //   1013: astore 25
    //   1015: aload 25
    //   1017: invokestatic 1313	com/google/a/a/br:b	(Ljava/lang/String;)Z
    //   1020: ifne +361 -> 1381
    //   1023: aload 25
    //   1025: invokevirtual 1380	java/lang/String:length	()I
    //   1028: bipush 20
    //   1030: if_icmple +13 -> 1043
    //   1033: aload 25
    //   1035: iconst_0
    //   1036: bipush 20
    //   1038: invokevirtual 1384	java/lang/String:substring	(II)Ljava/lang/String;
    //   1041: astore 25
    //   1043: aload_0
    //   1044: getfield 691	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ad	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1047: new 1386	java/lang/StringBuilder
    //   1050: dup
    //   1051: ldc_w 1388
    //   1054: invokespecial 1390	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1057: aload 25
    //   1059: invokevirtual 1394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1062: invokevirtual 1397	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1065: invokevirtual 1348	com/badlogic/gdx/scenes/scene2d/ui/Label:setText	(Ljava/lang/CharSequence;)V
    //   1068: aload 24
    //   1070: ifnull +34 -> 1104
    //   1073: getstatic 1399	com/nianticproject/ingress/common/ui/elements/an:b	[I
    //   1076: aload 24
    //   1078: invokevirtual 1400	com/nianticproject/ingress/shared/ai:ordinal	()I
    //   1081: iaload
    //   1082: tableswitch	default:+22 -> 1104, 1:+259->1341, 2:+279->1361
    //   1105: getfield 682	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ae	Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    //   1108: iconst_1
    //   1109: invokevirtual 1401	com/badlogic/gdx/scenes/scene2d/ui/Stack:setVisible	(Z)V
    //   1112: aload_0
    //   1113: getfield 1104	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:M	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1116: ifnull +71 -> 1187
    //   1119: aload_0
    //   1120: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   1123: invokeinterface 1404 1 0
    //   1128: aload_0
    //   1129: getfield 1104	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:M	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1132: invokevirtual 1333	com/badlogic/gdx/scenes/scene2d/ui/Label:getText	()Ljava/lang/CharSequence;
    //   1135: invokevirtual 1205	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1138: ifne +49 -> 1187
    //   1141: aload_0
    //   1142: getfield 1104	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:M	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1145: aload_0
    //   1146: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   1149: invokeinterface 1404 1 0
    //   1154: invokevirtual 1348	com/badlogic/gdx/scenes/scene2d/ui/Label:setText	(Ljava/lang/CharSequence;)V
    //   1157: aload_0
    //   1158: getfield 1104	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:M	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1161: aload_0
    //   1162: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   1165: aload_0
    //   1166: getfield 1104	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:M	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1169: invokevirtual 1408	com/badlogic/gdx/scenes/scene2d/ui/Label:getStyle	()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    //   1172: aload_0
    //   1173: getfield 548	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:r	Lcom/nianticproject/ingress/gameentity/components/Portal;
    //   1176: invokeinterface 1409 1 0
    //   1181: invokestatic 1412	com/nianticproject/ingress/common/ui/l:a	(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    //   1184: invokevirtual 1413	com/badlogic/gdx/scenes/scene2d/ui/Label:setStyle	(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    //   1187: aload_0
    //   1188: getfield 757	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:N	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1191: ifnull +37 -> 1228
    //   1194: aload_0
    //   1195: getfield 757	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:N	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1198: astore 11
    //   1200: aload_0
    //   1201: invokespecial 1415	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:k	()I
    //   1204: istore 12
    //   1206: iload 12
    //   1208: sipush 1000
    //   1211: if_icmpge +189 -> 1400
    //   1214: iload 12
    //   1216: invokestatic 1418	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1219: astore 13
    //   1221: aload 11
    //   1223: aload 13
    //   1225: invokevirtual 1348	com/badlogic/gdx/scenes/scene2d/ui/Label:setText	(Ljava/lang/CharSequence;)V
    //   1228: invokestatic 495	com/nianticproject/ingress/shared/aj:b	()V
    //   1231: aload_0
    //   1232: invokespecial 431	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:o	()V
    //   1235: aload_0
    //   1236: invokespecial 1420	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:l	()V
    //   1239: invokestatic 495	com/nianticproject/ingress/shared/aj:b	()V
    //   1242: return
    //   1243: astore_3
    //   1244: invokestatic 495	com/nianticproject/ingress/shared/aj:b	()V
    //   1247: aload_3
    //   1248: athrow
    //   1249: astore_2
    //   1250: invokestatic 495	com/nianticproject/ingress/shared/aj:b	()V
    //   1253: aload_2
    //   1254: athrow
    //   1255: getstatic 803	com/nianticproject/ingress/shared/ai:c	Lcom/nianticproject/ingress/shared/ai;
    //   1258: astore 5
    //   1260: goto -1138 -> 122
    //   1263: aload_0
    //   1264: aconst_null
    //   1265: invokespecial 1042	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:a	(Lcom/nianticproject/ingress/gameentity/f;)V
    //   1268: goto -453 -> 815
    //   1271: aload 26
    //   1273: invokestatic 1313	com/google/a/a/br:b	(Ljava/lang/String;)Z
    //   1276: ifeq -401 -> 875
    //   1279: aload_0
    //   1280: getfield 1100	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:L	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1283: ldc_w 1422
    //   1286: invokevirtual 1348	com/badlogic/gdx/scenes/scene2d/ui/Label:setText	(Ljava/lang/CharSequence;)V
    //   1289: goto -414 -> 875
    //   1292: astore 10
    //   1294: invokestatic 495	com/nianticproject/ingress/shared/aj:b	()V
    //   1297: aload 10
    //   1299: athrow
    //   1300: aload 22
    //   1302: invokeinterface 1426 1 0
    //   1307: astore 25
    //   1309: aconst_null
    //   1310: astore 24
    //   1312: goto -316 -> 996
    //   1315: aload 22
    //   1317: invokeinterface 1426 1 0
    //   1322: astore 23
    //   1324: aload 22
    //   1326: checkcast 1428	com/nianticproject/ingress/shared/plext/PlayerMarkupArgSet
    //   1329: invokevirtual 1430	com/nianticproject/ingress/shared/plext/PlayerMarkupArgSet:a	()Lcom/nianticproject/ingress/shared/ai;
    //   1332: astore 24
    //   1334: aload 23
    //   1336: astore 25
    //   1338: goto -342 -> 996
    //   1341: aload_0
    //   1342: getfield 691	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ad	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1345: aload_0
    //   1346: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   1349: ldc_w 1432
    //   1352: invokevirtual 1435	com/badlogic/gdx/scenes/scene2d/ui/Skin:getColor	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    //   1355: invokevirtual 1436	com/badlogic/gdx/scenes/scene2d/ui/Label:setColor	(Lcom/badlogic/gdx/graphics/Color;)V
    //   1358: goto -254 -> 1104
    //   1361: aload_0
    //   1362: getfield 691	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ad	Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    //   1365: aload_0
    //   1366: getfield 337	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:w	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   1369: ldc_w 1438
    //   1372: invokevirtual 1435	com/badlogic/gdx/scenes/scene2d/ui/Skin:getColor	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    //   1375: invokevirtual 1436	com/badlogic/gdx/scenes/scene2d/ui/Label:setColor	(Lcom/badlogic/gdx/graphics/Color;)V
    //   1378: goto -274 -> 1104
    //   1381: aload 17
    //   1383: invokestatic 1313	com/google/a/a/br:b	(Ljava/lang/String;)Z
    //   1386: ifeq -274 -> 1112
    //   1389: aload_0
    //   1390: getfield 682	com/nianticproject/ingress/common/ui/elements/PortalInfoDialog:ae	Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    //   1393: iconst_0
    //   1394: invokevirtual 1401	com/badlogic/gdx/scenes/scene2d/ui/Stack:setVisible	(Z)V
    //   1397: goto -285 -> 1112
    //   1400: iload 12
    //   1402: sipush 10000
    //   1405: if_icmpge +87 -> 1492
    //   1408: iload 12
    //   1410: i2f
    //   1411: ldc_w 1439
    //   1414: fdiv
    //   1415: fstore 14
    //   1417: fload 14
    //   1419: fload 14
    //   1421: f2i
    //   1422: i2f
    //   1423: fsub
    //   1424: ldc_w 406
    //   1427: fcmpl
    //   1428: iflt +31 -> 1459
    //   1431: iconst_1
    //   1432: anewarray 873	java/lang/Object
    //   1435: astore 15
    //   1437: aload 15
    //   1439: iconst_0
    //   1440: fload 14
    //   1442: invokestatic 1300	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   1445: aastore
    //   1446: ldc_w 1441
    //   1449: aload 15
    //   1451: invokestatic 1445	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1454: astore 13
    //   1456: goto -235 -> 1221
    //   1459: new 1386	java/lang/StringBuilder
    //   1462: dup
    //   1463: invokespecial 1446	java/lang/StringBuilder:<init>	()V
    //   1466: iload 12
    //   1468: sipush 1000
    //   1471: idiv
    //   1472: invokestatic 1418	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1475: invokevirtual 1394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1478: ldc_w 1447
    //   1481: invokevirtual 1394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1484: invokevirtual 1397	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1487: astore 13
    //   1489: goto -268 -> 1221
    //   1492: new 1386	java/lang/StringBuilder
    //   1495: dup
    //   1496: invokespecial 1446	java/lang/StringBuilder:<init>	()V
    //   1499: iload 12
    //   1501: sipush 1000
    //   1504: idiv
    //   1505: invokestatic 1418	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1508: invokevirtual 1394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1511: ldc_w 1447
    //   1514: invokevirtual 1394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1517: invokevirtual 1397	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1520: astore 16
    //   1522: aload 16
    //   1524: astore 13
    //   1526: goto -305 -> 1221
    //   1529: aconst_null
    //   1530: astore 25
    //   1532: aconst_null
    //   1533: astore 24
    //   1535: goto -539 -> 996
    //   1538: iconst_0
    //   1539: istore 8
    //   1541: goto -781 -> 760
    //
    // Exception table:
    //   from	to	target	type
    //   6	78	1243	finally
    //   0	6	1249	finally
    //   78	103	1249	finally
    //   108	122	1249	finally
    //   122	139	1249	finally
    //   144	152	1249	finally
    //   152	159	1249	finally
    //   164	738	1249	finally
    //   738	757	1249	finally
    //   760	801	1249	finally
    //   806	815	1249	finally
    //   815	819	1249	finally
    //   1228	1239	1249	finally
    //   1244	1249	1249	finally
    //   1255	1260	1249	finally
    //   1263	1268	1249	finally
    //   1294	1300	1249	finally
    //   819	875	1292	finally
    //   875	905	1292	finally
    //   910	925	1292	finally
    //   930	939	1292	finally
    //   944	951	1292	finally
    //   956	996	1292	finally
    //   1001	1015	1292	finally
    //   1015	1043	1292	finally
    //   1043	1068	1292	finally
    //   1073	1104	1292	finally
    //   1104	1112	1292	finally
    //   1112	1187	1292	finally
    //   1187	1206	1292	finally
    //   1214	1221	1292	finally
    //   1221	1228	1292	finally
    //   1271	1289	1292	finally
    //   1300	1309	1292	finally
    //   1315	1334	1292	finally
    //   1341	1358	1292	finally
    //   1361	1378	1292	finally
    //   1381	1397	1292	finally
    //   1408	1417	1292	finally
    //   1431	1456	1292	finally
    //   1459	1489	1292	finally
    //   1492	1522	1292	finally
  }

  public final boolean a(float paramFloat)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PortalInfoDialog.update");
      TextureRegion localTextureRegion = this.C.b();
      if ((localTextureRegion != null) && (this.y.getDrawable() == null))
      {
        this.y.setDrawable(new TextureRegionDrawable(localTextureRegion));
        this.y.addAction(Actions.sequence(Actions.delay(0.1F, Actions.fadeIn(1.0F)), Actions.run(new ao(this))));
      }
      while (true)
      {
        boolean bool1 = this.Z;
        boolean bool2 = this.aa;
        boolean bool3 = this.ab;
        p();
        if ((this.Z) && (!bool1))
          o.a().a(bs.t);
        if ((this.aa) && (!bool2))
          o.a().a(bs.aw);
        if ((this.ab) && (!bool3))
          o.a().a(bs.D);
        if (this.aF != this.i.d())
        {
          this.aF = this.i.d();
          com.nianticproject.ingress.common.itemupgrade.a.a(this.S.b(), this.r.getEntity(), this.k, this.i);
        }
        boolean bool4 = super.a(paramFloat);
        return bool4;
        if ((localTextureRegion == null) && (this.C.a()))
        {
          this.B.clearActions();
          this.B.setText("Error");
        }
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public void dispose()
  {
    if (this.C != null)
    {
      this.C.d();
      this.C = null;
    }
    if (this.q != null)
    {
      this.q.a();
      this.q = null;
    }
    this.k.b(this.p);
    super.dispose();
  }

  public final void g()
  {
    if (this.q != null)
    {
      this.q.a();
      this.q = null;
    }
    super.g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.PortalInfoDialog
 * JD-Core Version:    0.6.2
 */