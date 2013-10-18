package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.google.a.a.ba;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.u.g;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.h;
import com.nianticproject.ingress.common.x.o;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import com.nianticproject.ingress.gameentity.components.InInventory;
import com.nianticproject.ingress.gameentity.components.Weapon;
import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;

public class i extends j<FireEmpResult, com.nianticproject.ingress.shared.e>
{
  private static final aa a = new aa(i.class);
  private final com.nianticproject.ingress.gameentity.f b;
  private final com.nianticproject.ingress.common.g.e c;
  private final k d;
  private final ba<RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e>> e;
  private r f;

  public i(com.nianticproject.ingress.gameentity.f paramf, q paramq, com.nianticproject.ingress.common.g.e parame, k paramk, ba<RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e>> paramba, r paramr)
  {
    super(paramq);
    this.f = paramr;
    this.b = ((com.nianticproject.ingress.gameentity.f)an.a(paramf));
    this.c = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.d = ((k)an.a(paramk));
    this.e = paramba;
    an.a(paramf.getComponent(Weapon.class), "Entity is missing a Weapon");
    an.a(paramf.getComponent(InInventory.class), "Entity is not InInventory");
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e> paramRpcResult)
  {
    if (this.f == null)
      return new aj(this.c, this.b.getGuid());
    com.nianticproject.ingress.common.x.f[] arrayOff = new com.nianticproject.ingress.common.x.f[2];
    arrayOff[0] = new ab(this.f);
    arrayOff[1] = new aj(this.c, this.b.getGuid());
    return new h("FireWeapon", arrayOff);
  }

  protected final com.nianticproject.ingress.common.x.f b(RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e> paramRpcResult)
  {
    return new o("FireWeaponTask.resultPreprocessor", this.e, paramRpcResult);
  }

  protected final Result<t<FireEmpResult, com.nianticproject.ingress.shared.e>, com.nianticproject.ingress.shared.e> c()
  {
    if (!this.c.a(Collections.singleton(this.b.getGuid())))
    {
      a.b("Item " + this.b.getGuid() + " is already being used or does not exist (can be caused if the user selects items faster than we can mark them used).");
      return Result.b(com.nianticproject.ingress.shared.e.f);
    }
    int i = com.nianticproject.ingress.common.gameentity.i.a((EmpWeapon)this.b.getComponent(EmpWeapon.class));
    if (this.d.d() <= i)
      return Result.b(com.nianticproject.ingress.shared.e.j);
    return Result.a(g.a(this.b.getGuid(), i));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.i
 * JD-Core Version:    0.6.2
 */