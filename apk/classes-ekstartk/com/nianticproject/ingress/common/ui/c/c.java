package com.nianticproject.ingress.common.ui.c;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import com.google.a.a.ba;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.ft;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.scanner.visuals.z;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Set;

public class c
{
  private static final aa a = new aa(c.class);
  private static float b = 2.0F;
  private static float c = 3.0F;
  private final Matrix4 d = new Matrix4();
  private final com.nianticproject.ingress.common.scanner.k e;
  private final com.nianticproject.ingress.common.model.k f;
  private final l g;
  private final com.nianticproject.ingress.common.j.h h;
  private final com.nianticproject.ingress.common.c.e i;
  private final h j;
  private int k = 0;
  private int l = 0;
  private Set<q> m;
  private final Set<String> n = jc.a();
  private com.nianticproject.ingress.common.scanner.visuals.bs o;
  private z p;
  private i q = i.a;
  private j r = j.a;
  private eo s;
  private float t;
  private final ba<RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e>> u = new d(this);
  private com.nianticproject.ingress.common.x.g<RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e>> v = new e(this, "FireWeapon");

  public c(com.nianticproject.ingress.common.model.k paramk, f paramf, com.nianticproject.ingress.common.scanner.k paramk1, l paraml, bt parambt, ft paramft, com.nianticproject.ingress.common.j.h paramh, eo parameo, h paramh1)
  {
    this.f = ((com.nianticproject.ingress.common.model.k)an.a(paramk));
    an.a(paramf);
    this.e = ((com.nianticproject.ingress.common.scanner.k)an.a(paramk1));
    this.g = ((l)an.a(paraml));
    this.h = ((com.nianticproject.ingress.common.j.h)an.a(paramh));
    this.i = ((com.nianticproject.ingress.common.c.e)an.a(o.a()));
    this.s = parameo;
    this.t = parambt.c();
    this.j = paramh1;
    EmpWeapon localEmpWeapon = (EmpWeapon)paramf.getComponent(EmpWeapon.class);
    an.a(localEmpWeapon, "Weapon must be EmpWeapon");
    Resource localResource = (Resource)paramf.getComponent(Resource.class);
    an.a(localResource, "Weapon must be a Resource");
    af localaf = localResource.getResourceType();
    int i1 = localEmpWeapon.getMaxRange(com.nianticproject.ingress.common.q.g()).intValue();
    float f1 = localEmpWeapon.getAverageRange(com.nianticproject.ingress.common.q.g()).floatValue();
    paramk.a(true);
    paraml.a(paramf, this.u, this.v);
    this.i.a(com.nianticproject.ingress.common.c.bs.g);
    this.o = new com.nianticproject.ingress.common.scanner.visuals.bs(b);
    this.p = z.a(localaf, c, i1, f1);
    g localg = new g(this, (byte)0);
    localg.b(this.o);
    paramft.b(localg);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.c
 * JD-Core Version:    0.6.2
 */