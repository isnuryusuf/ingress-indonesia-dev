package com.nianticproject.ingress.common.playerprofile;

import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.inventory.i;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.t;

public class ak extends ao
{
  public ak(k paramk, av paramav, ax paramax, i parami)
  {
    super(paramk.j(), paramav, paramax, parami, true);
  }

  public static void j()
  {
    ak localak = (ak)p.a().n().a(ak.class);
    if (localak != null)
      localak.n();
  }

  protected final String d()
  {
    return "MyProfileActivity";
  }

  protected final boolean k()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.ak
 * JD-Core Version:    0.6.2
 */