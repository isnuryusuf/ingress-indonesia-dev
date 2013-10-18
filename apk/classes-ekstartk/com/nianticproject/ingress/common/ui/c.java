package com.nianticproject.ingress.common.ui;

import com.nianticproject.ingress.server.flip.a;
import com.nianticproject.ingress.shared.aa;
import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.e;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.p;
import com.nianticproject.ingress.shared.rpc.m;
import com.nianticproject.ingress.shared.w;
import java.util.HashMap;
import java.util.Map;

public final class c
{
  private static c b;
  Map<Enum, String> a = new HashMap();

  private c()
  {
    this.a.put(ae.k, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 5 seconds.");
    this.a.put(ae.l, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 10 seconds.");
    this.a.put(ae.m, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 20 seconds.");
    this.a.put(ae.n, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 30 seconds.");
    this.a.put(ae.o, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 60 seconds.");
    this.a.put(ae.p, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 120 seconds.");
    this.a.put(ae.q, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 240 seconds.");
    this.a.put(ae.r, "Portal running hot! Unsafe to acquire items. Estimated time to cooldown: 300 seconds.");
    this.a.put(ae.s, "Portal burned out! It may take significant time for the Portal to reset.");
    this.a.put(ae.i, "Failed hacking enemy portal.");
    this.a.put(ae.y, "XM capacity full.");
    this.a.put(ae.v, "Agent not specified.");
    Enum[] arrayOfEnum1 = new Enum[2];
    arrayOfEnum1[0] = ae.j;
    arrayOfEnum1[1] = m.b;
    a("Server unsuccessful.", arrayOfEnum1);
    Enum[] arrayOfEnum2 = new Enum[6];
    arrayOfEnum2[0] = ae.b;
    arrayOfEnum2[1] = ae.e;
    arrayOfEnum2[2] = ad.j;
    arrayOfEnum2[3] = ad.k;
    arrayOfEnum2[4] = ad.E;
    arrayOfEnum2[5] = a.c;
    a("XM object not available.", arrayOfEnum2);
    Enum[] arrayOfEnum3 = new Enum[5];
    arrayOfEnum3[0] = ae.a;
    arrayOfEnum3[1] = ae.f;
    arrayOfEnum3[2] = ae.h;
    arrayOfEnum3[3] = ae.c;
    arrayOfEnum3[4] = ae.g;
    a("Unable to use.", arrayOfEnum3);
    this.a.put(ad.n, "Fill Resonator slots before upgrading.");
    this.a.put(ad.t, "Unable to use Resonator.");
    this.a.put(ad.u, "Portal is invalid.");
    this.a.put(ad.v, "Not an upgrade.");
    this.a.put(ad.w, "Resonator not on Portal.");
    this.a.put(ad.x, "Not Portal owner.");
    this.a.put(ad.C, "Resonators on different Portals.");
    this.a.put(ad.G, "Missing Portal Key.");
    this.a.put(ad.m, "Resonator slot not available.");
    this.a.put(ad.p, "Enemy Portal.");
    this.a.put(ad.A, "Fully charged.");
    this.a.put(ad.B, "Not rechargeable.");
    this.a.put(ad.I, "Circuit overload. Recharge failed.");
    this.a.put(ad.J, "Uncontrolled XM. Resonator failed.");
    this.a.put(ad.K, "Power overload. Upgrade failed.");
    this.a.put(ad.L, "Too busy to delete a resonator.");
    Enum[] arrayOfEnum4 = new Enum[7];
    arrayOfEnum4[0] = ad.d;
    arrayOfEnum4[1] = ad.i;
    arrayOfEnum4[2] = ad.r;
    arrayOfEnum4[3] = ad.s;
    arrayOfEnum4[4] = ad.D;
    arrayOfEnum4[5] = ad.F;
    arrayOfEnum4[6] = ad.H;
    a("Unable to deploy.", arrayOfEnum4);
    Enum[] arrayOfEnum5 = new Enum[5];
    arrayOfEnum5[0] = ad.a;
    arrayOfEnum5[1] = ad.e;
    arrayOfEnum5[2] = ad.f;
    arrayOfEnum5[3] = ad.h;
    arrayOfEnum5[4] = ad.l;
    a("Invalid Resonator.", arrayOfEnum5);
    Enum[] arrayOfEnum6 = new Enum[3];
    arrayOfEnum6[0] = ad.g;
    arrayOfEnum6[1] = ad.o;
    arrayOfEnum6[2] = p.a;
    a("Portal does not exist.", arrayOfEnum6);
    this.a.put(n.l, "Link crosses an existing link.");
    this.a.put(n.q, "Link already exists.");
    this.a.put(n.c, "Enemy Portal.");
    this.a.put(n.u, "Portal is within existing field.");
    this.a.put(n.v, "Neutral origin Portal.");
    this.a.put(n.w, "Neutral destination Portal.");
    this.a.put(n.a, "Must link to a different Portal.");
    this.a.put(n.b, "Portal controlled by other Faction.");
    this.a.put(n.f, "Portal Key missing.");
    this.a.put(n.r, "Portal can't support more Links.");
    this.a.put(n.m, "Link distance too great.");
    this.a.put(n.E, "Alignment error. Link failed.");
    Enum[] arrayOfEnum7 = new Enum[2];
    arrayOfEnum7[0] = n.o;
    arrayOfEnum7[1] = n.p;
    a("Portal missing.", arrayOfEnum7);
    Enum[] arrayOfEnum8 = new Enum[2];
    arrayOfEnum8[0] = n.d;
    arrayOfEnum8[1] = n.e;
    a("Portal missing Resonators.", arrayOfEnum8);
    Enum[] arrayOfEnum9 = new Enum[2];
    arrayOfEnum9[0] = n.t;
    arrayOfEnum9[1] = n.B;
    a("Link creation failed.", arrayOfEnum9);
    Enum[] arrayOfEnum10 = new Enum[2];
    arrayOfEnum10[0] = n.x;
    arrayOfEnum10[1] = n.y;
    a("Portal not stable.", arrayOfEnum10);
    Enum[] arrayOfEnum11 = new Enum[7];
    arrayOfEnum11[0] = n.g;
    arrayOfEnum11[1] = n.C;
    arrayOfEnum11[2] = n.j;
    arrayOfEnum11[3] = n.s;
    arrayOfEnum11[4] = n.h;
    arrayOfEnum11[5] = n.i;
    arrayOfEnum11[6] = n.k;
    a("Missing Portal Key.", arrayOfEnum11);
    this.a.put(aa.a, "Invalid passcode.");
    this.a.put(aa.b, "Passcode already redeemed.");
    this.a.put(aa.c, "Passcode fully redeemed.");
    Enum[] arrayOfEnum12 = new Enum[2];
    arrayOfEnum12[0] = aa.e;
    arrayOfEnum12[1] = ae.x;
    a("XM object capacity reached.", arrayOfEnum12);
    Enum[] arrayOfEnum13 = new Enum[2];
    arrayOfEnum13[0] = aa.d;
    arrayOfEnum13[1] = aa.f;
    a("Passcode cannot be redeemed.", arrayOfEnum13);
    Enum[] arrayOfEnum14 = new Enum[3];
    arrayOfEnum14[0] = e.d;
    arrayOfEnum14[1] = e.e;
    arrayOfEnum14[2] = e.i;
    a("Weapon not available.", arrayOfEnum14);
    Enum[] arrayOfEnum15 = new Enum[3];
    arrayOfEnum15[0] = e.a;
    arrayOfEnum15[1] = e.b;
    arrayOfEnum15[2] = e.c;
    a("Weapon does not exist.", arrayOfEnum15);
    Enum[] arrayOfEnum16 = new Enum[2];
    arrayOfEnum16[0] = e.f;
    arrayOfEnum16[1] = e.g;
    a("Unable to fire.", arrayOfEnum16);
    this.a.put(e.l, "XM phase error. XMP misfire.");
    this.a.put(com.nianticproject.ingress.shared.rpc.c.c, "Invalid Power Cube.");
    this.a.put(com.nianticproject.ingress.shared.rpc.c.d, "Not in inventory.");
    Enum[] arrayOfEnum17 = new Enum[2];
    arrayOfEnum17[0] = com.nianticproject.ingress.shared.rpc.c.b;
    arrayOfEnum17[1] = com.nianticproject.ingress.shared.rpc.c.a;
    a("Unable to discharge Power Cube.", arrayOfEnum17);
    this.a.put(a.h, "Agent not specified.");
    this.a.put(a.j, "Error identifying Agent.");
    this.a.put(a.m, "Target Portal already aligned.");
    this.a.put(a.l, "Target Portal not valid.");
    this.a.put(a.e, "Portal transformation failed.");
    this.a.put(a.n, "Compile error. ADA Redactor failed.");
    this.a.put(a.o, "Antibody intrusion. Virus error.");
    Enum[] arrayOfEnum18 = new Enum[2];
    arrayOfEnum18[0] = a.k;
    arrayOfEnum18[1] = a.d;
    a("XM object not valid.", arrayOfEnum18);
    this.a.put(p.b, "Mod does not exist.");
    this.a.put(p.c, "Wrong faction.");
    this.a.put(p.d, "No Mod to remove.");
    this.a.put(p.e, "Unable to operate on Mod.");
    this.a.put(p.f, "No empty Mod slots.");
    this.a.put(p.g, "Mod slot in use.");
    this.a.put(p.h, "Invalid Mod slot.");
    this.a.put(p.m, "Error identifying Agent.");
    this.a.put(p.n, "Mod limit reached.");
    this.a.put(p.o, "Transform error. Mod failed.");
    this.a.put(m.a, "Inventory overloaded.");
    Enum[] arrayOfEnum19 = new Enum[2];
    arrayOfEnum19[0] = a.a;
    arrayOfEnum19[1] = w.a;
    a("Portal no longer exists.", arrayOfEnum19);
    this.a.put(w.b, "Link creation failed.");
    Enum[] arrayOfEnum20 = new Enum[5];
    arrayOfEnum20[0] = ad.q;
    arrayOfEnum20[1] = ae.d;
    arrayOfEnum20[2] = n.D;
    arrayOfEnum20[3] = a.b;
    arrayOfEnum20[4] = p.l;
    a("Out of Range.", arrayOfEnum20);
    Enum[] arrayOfEnum21 = new Enum[6];
    arrayOfEnum21[0] = e.h;
    arrayOfEnum21[1] = ae.w;
    arrayOfEnum21[2] = ad.y;
    arrayOfEnum21[3] = p.k;
    arrayOfEnum21[4] = a.i;
    arrayOfEnum21[5] = com.nianticproject.ingress.shared.rpc.c.e;
    a("Access level insufficient.", arrayOfEnum21);
    Enum[] arrayOfEnum22 = new Enum[12];
    arrayOfEnum22[0] = ae.t;
    arrayOfEnum22[1] = ae.u;
    arrayOfEnum22[2] = e.j;
    arrayOfEnum22[3] = e.k;
    arrayOfEnum22[4] = ad.b;
    arrayOfEnum22[5] = ad.c;
    arrayOfEnum22[6] = n.z;
    arrayOfEnum22[7] = n.A;
    arrayOfEnum22[8] = p.i;
    arrayOfEnum22[9] = p.j;
    arrayOfEnum22[10] = a.f;
    arrayOfEnum22[11] = a.g;
    a("Need More XM.", arrayOfEnum22);
  }

  public static c a()
  {
    if (b == null)
      b = new c();
    return b;
  }

  private void a(String paramString, Enum[] paramArrayOfEnum)
  {
    int i = paramArrayOfEnum.length;
    for (int j = 0; j < i; j++)
    {
      Enum localEnum = paramArrayOfEnum[j];
      this.a.put(localEnum, paramString);
    }
  }

  public final String a(Enum paramEnum)
  {
    String str1 = (String)this.a.get(paramEnum);
    if (str1 != null)
      return str1;
    String[] arrayOfString = paramEnum.name().split("_");
    int i = arrayOfString.length;
    Object localObject = "";
    int j = 0;
    while (j < i)
    {
      String str2 = arrayOfString[j];
      String str3 = (String)localObject + str2.substring(0, 1).toUpperCase();
      String str4 = str3 + str2.substring(1).toLowerCase();
      String str5 = str4 + " ";
      j++;
      localObject = str5;
    }
    this.a.put(paramEnum, localObject);
    return localObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c
 * JD-Core Version:    0.6.2
 */