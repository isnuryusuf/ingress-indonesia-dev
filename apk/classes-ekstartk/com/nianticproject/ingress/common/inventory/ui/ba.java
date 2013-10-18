package com.nianticproject.ingress.common.inventory.ui;

import com.nianticproject.ingress.common.itemupgrade.a;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.common.ui.widget.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import com.nianticproject.ingress.gameentity.f;

public class ba extends p
{
  private static final aa c = new aa(ba.class);

  public ba(f paramf, k paramk)
  {
    super(paramf, paramk);
    if (paramf.getComponent(EmpWeapon.class) == null)
    {
      String str = "Resource EMP_BURSTER guid " + paramf.getGuid() + " missing EmpWeapon component after addition to inventory model";
      c.c(str);
      throw new IllegalArgumentException(str);
    }
  }

  static String g()
  {
    return "FIRE";
  }

  final void a(c paramc)
  {
    a.b(paramc, this.a, this.b);
  }

  final String f()
  {
    return l.a(((EmpWeapon)this.a.getComponent(EmpWeapon.class)).getMaxRange(q.g()).intValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.ba
 * JD-Core Version:    0.6.2
 */