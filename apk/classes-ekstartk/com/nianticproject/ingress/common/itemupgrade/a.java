package com.nianticproject.ingress.common.itemupgrade;

import com.google.a.c.dh;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.missions.tutorial.TutorialConstraints;
import com.nianticproject.ingress.common.missions.tutorial.t;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.gameentity.components.AccessLevel;
import com.nianticproject.ingress.gameentity.components.AccessLevel.RestrictedUsageResult;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.knobs.PortalKnobBundle;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ac;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.e;
import com.nianticproject.ingress.shared.model.d;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class a
{
  public static ab a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf1, Set<Resonator> paramSet, com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.gameentity.f paramf2)
  {
    while (true)
    {
      Result localResult1;
      try
      {
        com.nianticproject.ingress.shared.aj.a("ActionModels.updateRechargeModel");
        if (a(paramc, paramf1, t.c))
        {
          ab localab6 = ab.a;
          return localab6;
        }
        if (b.a(paramf1) == ai.c)
        {
          a(paramc, com.nianticproject.ingress.shared.ad.B);
          ab localab5 = ab.a;
          return localab5;
        }
        if (c(paramc, paramk))
        {
          ab localab4 = ab.a;
          return localab4;
        }
        if (d(paramc, paramk))
        {
          ab localab3 = ab.a;
          return localab3;
        }
        com.nianticproject.ingress.common.ad localad = paramk.g();
        if (localad != null)
        {
          localResult1 = ac.a((Portal)paramf1.getComponent(Portal.class), paramSet, localad.a(), paramk.h(), paramk.d());
          if ((localResult1.e()) || (paramf2 == null))
            break label283;
          localResult2 = ac.a((Portal)paramf1.getComponent(Portal.class), paramf2, paramSet, localad.a(), paramk.h(), paramk.d(), paramk.l());
          i = 0;
          if (!localResult2.e())
            continue;
          paramc.a(true);
          if (i != 0)
          {
            localab2 = ab.b;
            return localab2;
          }
        }
        else
        {
          localResult2 = Result.b(com.nianticproject.ingress.shared.ad.q);
          i = 1;
          continue;
        }
        ab localab2 = ab.c;
        continue;
        a(paramc, (Enum)localResult2.d());
        ab localab1 = ab.a;
        return localab1;
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      label283: Result localResult2 = localResult1;
      int i = 1;
    }
  }

  public static void a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.common.model.k paramk)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateUseFlipCardModel");
      boolean bool = a(paramc, paramk, 1000);
      if (bool)
        return;
      paramc.a(true);
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static void a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk)
  {
    int i = 0;
    while (true)
    {
      int j;
      try
      {
        com.nianticproject.ingress.shared.aj.a("ActionModels.updateAddModModel");
        if (!a(paramf, paramk))
        {
          a(paramc, ae.d);
          return;
        }
        Modable localModable = (Modable)paramf.getComponent(Modable.class);
        if (localModable != null)
        {
          String str = paramk.k();
          j = 0;
          if (j < localModable.maxModCount())
          {
            Mod localMod = localModable.getLinkedMod(j);
            if ((localMod == null) || (!str.equals(localMod.getInstallingUser())))
              break label395;
            i++;
            break label395;
          }
          if (i >= q.b().b())
          {
            a(paramc, com.nianticproject.ingress.shared.p.n);
            return;
          }
        }
        XmCostKnobs localXmCostKnobs = q.h();
        Map localMap = com.nianticproject.ingress.common.gameentity.a.b(paramk);
        Iterator localIterator = localMap.keySet().iterator();
        int k = 2147483647;
        if (localIterator.hasNext())
        {
          Integer localInteger = (Integer)localIterator.next();
          Resource localResource = (Resource)((com.nianticproject.ingress.gameentity.f)localMap.get(localInteger)).getComponent(Resource.class);
          if (localResource == null)
            continue;
          k = Math.min(k, localXmCostKnobs.a(localResource.getResourceType(), localInteger.intValue()));
          continue;
        }
        boolean bool1 = a(paramc, paramk, k);
        if (bool1)
          return;
        boolean bool2 = d(paramc, paramk);
        if (bool2)
          return;
        if (!((Portal)paramf.getComponent(Portal.class)).canTeamLinkMods(paramk.h()))
        {
          paramc.a("Enemy Portal");
          return;
        }
        if (!a(paramf, paramk))
        {
          a(paramc, ae.d);
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      com.google.a.a.aj localaj = com.nianticproject.ingress.common.gameentity.a.a(paramk, g.c());
      if (!localaj.a())
      {
        paramc.a("No Mod");
      }
      else if (((Collection)localaj.b()).isEmpty())
      {
        paramc.a("No usable Mod");
      }
      else
      {
        paramc.a(true);
        continue;
        label395: j++;
      }
    }
  }

  public static void a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateHackModel");
      boolean bool1 = a(paramc, paramf, t.a);
      if (bool1)
        return;
      Portal localPortal = (Portal)paramf.getComponent(Portal.class);
      b.a(paramf);
      boolean bool2 = a(paramc, paramk, com.nianticproject.ingress.gameentity.components.k.a(localPortal, paramk.h()));
      if (bool2)
        return;
      boolean bool3 = d(paramc, paramk);
      if (bool3)
        return;
      if (!a(paramf, paramk))
      {
        a(paramc, ae.d);
        return;
      }
      if (!paraml.d())
        paramc.b("Hacking...");
      while (true)
      {
        return;
        paramc.a(true);
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static void a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml, boolean paramBoolean)
  {
    while (true)
    {
      String str1;
      String str2;
      try
      {
        com.nianticproject.ingress.shared.aj.a("ActionModels.updateStartModModel");
        ai localai = b.a(paramf);
        boolean bool1 = b.a(paramf, paramk.h());
        int i = 0;
        if (!bool1)
          i = 1;
        if ((i == 0) || (!a(paramf, paramk)))
          break label211;
        if (paramBoolean)
        {
          str1 = "UPGRADE";
          str2 = "portal";
          paramc.a(paramc.a(), str1, str2);
          boolean bool2 = a(paramc, paramf, t.c);
          if (!bool2);
        }
        else
        {
          str1 = "UPGRADE";
          str2 = null;
          continue;
        }
        boolean bool3 = a(paramc, paramk, 0);
        if (bool3)
          return;
        boolean bool4 = d(paramc, paramk);
        if (bool4)
          return;
        paramf.getComponent(Portal.class);
        if (localai == ai.c)
        {
          paramc.a("Neutral Portal.");
          return;
        }
        if (!paraml.c())
        {
          paramc.a("Not available");
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      paramc.a(true);
      continue;
      label211: if (paramBoolean)
      {
        str1 = "UPGRADE";
        str2 = "status";
      }
      else
      {
        str1 = "MOD STATUS";
        str2 = null;
      }
    }
  }

  public static void a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, ed paramed)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateDestinationModel");
      if (!a(paramc, paramf, t.c))
      {
        if (!paramed.a())
          break label41;
        paramc.a(true, "CANCEL", "target");
      }
      while (true)
      {
        return;
        label41: paramc.a(true, "TARGET", "portal");
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private static void a(com.nianticproject.ingress.common.ui.widget.c paramc, Enum<?> paramEnum)
  {
    paramc.a(com.nianticproject.ingress.common.ui.c.a().a(paramEnum));
  }

  private static boolean a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.common.model.k paramk, int paramInt)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateXmState");
      boolean bool = c(paramc, paramk);
      if (bool)
        return true;
      if (paramk.d() <= paramInt)
      {
        a(paramc, ae.t);
        return true;
      }
      return false;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private static boolean a(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, t paramt)
  {
    TutorialConstraints localTutorialConstraints = (TutorialConstraints)paramf.getComponent(TutorialConstraints.class);
    if ((localTutorialConstraints == null) || (localTutorialConstraints.permits(paramt)))
      return false;
    paramc.a("Not available");
    return true;
  }

  private static boolean a(com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk)
  {
    return (paramk.g() != null) && (com.nianticproject.ingress.gameentity.components.i.a(paramf, paramk.g().a()));
  }

  public static void b(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.common.model.k paramk)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateDropModel");
      d(paramc, paramk);
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static void b(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk)
  {
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("ActionModels.updateFireUntargetedRadialWeaponModel");
        int i;
        EmpWeapon localEmpWeapon;
        Result localResult;
        if ((!d(paramc, paramk)) && (!a(paramc, paramk, com.nianticproject.ingress.common.gameentity.i.a((EmpWeapon)paramf.getComponent(EmpWeapon.class)))))
        {
          i = paramk.l();
          localEmpWeapon = (EmpWeapon)paramf.getComponent(EmpWeapon.class);
          if (localEmpWeapon != null)
            continue;
          localResult = Result.b(e.c);
          if (localResult.e())
            break label234;
        }
        switch (b.a[((e)localResult.d()).ordinal()])
        {
        default:
          paramc.a("Cosmic Rays");
          return;
          AccessLevel localAccessLevel = (AccessLevel)paramf.getComponent(AccessLevel.class);
          if ((localAccessLevel != null) && (!localAccessLevel.usage(i).a()))
          {
            localResult = Result.b(e.h);
            continue;
          }
          if (!localEmpWeapon.canBeFired())
          {
            localResult = Result.b(e.i);
            continue;
          }
          localResult = Result.a(null);
          break;
        case 1:
          paramc.a("Weapon not available");
          continue;
        case 2:
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      paramc.a("Access level insufficient");
      continue;
      label234: paramc.a(true);
    }
  }

  public static void b(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml)
  {
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("ActionModels.updateStartLinkModel");
        ai localai = b.a(paramf);
        boolean bool1 = a(paramc, paramf, t.c);
        if (bool1)
          return;
        boolean bool2 = a(paramc, paramk, d.h.a());
        if (bool2)
          return;
        boolean bool3 = d(paramc, paramk);
        if (bool3)
          return;
        if (localai == ai.c)
        {
          paramc.a("Wrong faction");
          return;
        }
        if (localai != paramk.h())
        {
          paramc.a("Enemy Portal");
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      if (a(paramf, paramk))
        break;
      a(paramc, ae.d);
    }
    if (((Portal)paramf.getComponent(Portal.class)).getLinkedResonatorGuids().size() < 8);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        paramc.a("Resonator slot available");
        break;
      }
      if (!paraml.a())
      {
        paramc.a("Deploying...");
        break;
      }
      af localaf = af.i;
      com.google.a.a.aj localaj = com.nianticproject.ingress.common.gameentity.a.a(paramk, localaf);
      if (!localaj.a())
      {
        paramc.a("No " + localaf.a());
        break;
      }
      if (((Collection)localaj.b()).isEmpty())
      {
        paramc.a("No usable " + localaf.a());
        break;
      }
      paramc.a(true);
      break;
    }
  }

  public static void b(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml, boolean paramBoolean)
  {
    while (true)
    {
      String str1;
      String str2;
      try
      {
        com.nianticproject.ingress.shared.aj.a("ActionModels.updateStartResonateModel");
        b.a(paramf);
        boolean bool1 = b.a(paramf, paramk.h());
        int i = 0;
        if (!bool1)
          i = 1;
        if ((i != 0) && (a(paramf, paramk)))
        {
          if (paramBoolean)
          {
            str1 = "DEPLOY";
            str2 = "resonator";
            paramc.a(paramc.a(), str1, str2);
            boolean bool2 = a(paramc, paramf, t.b);
            if (!bool2);
          }
          else
          {
            str1 = "DEPLOY";
            str2 = null;
            continue;
          }
          boolean bool3 = a(paramc, paramk, 0);
          if (bool3)
            return;
          boolean bool4 = d(paramc, paramk);
          if (bool4)
            return;
          if (!paraml.b())
          {
            paramc.a("Not available");
            return;
          }
          paramc.a(true);
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      if (paramBoolean)
      {
        str1 = "DEPLOY";
        str2 = "status";
      }
      else
      {
        str1 = "RES STATUS";
        str2 = null;
      }
    }
  }

  private static boolean c(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.common.model.k paramk)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateXmDepletedState");
      if (paramk.b().equals(com.nianticproject.ingress.shared.f.b))
      {
        paramc.a("Need more XM");
        return true;
      }
      return false;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private static boolean d(com.nianticproject.ingress.common.ui.widget.c paramc, com.nianticproject.ingress.common.model.k paramk)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("ActionModels.updateLocationState");
      com.nianticproject.ingress.common.ad localad = paramk.g();
      if ((!com.nianticproject.ingress.common.g.p.a().G()) && (localad.c() > 1000.0F))
      {
        paramc.a("Location inaccurate");
        return true;
      }
      return false;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.a
 * JD-Core Version:    0.6.2
 */