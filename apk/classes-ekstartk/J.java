import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.PowerManager.WakeLock;
import android.util.DisplayMetrics;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.common.g.o;
import com.nianticproject.ingress.common.inventory.i;
import com.nianticproject.ingress.common.missions.cc;
import com.nianticproject.ingress.common.playerprofile.ak;
import com.nianticproject.ingress.common.ui.elements.PortalInfoDialog;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.common.v.j;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.shared.af;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class J
{
  public static int a;
  public static S a;
  public static U a;
  public static Application a;
  public static PowerManager.WakeLock a;
  public static DisplayMetrics a;
  public static Skin a;
  public static NemesisActivity a;
  public static com.nianticproject.ingress.common.b.p a;
  public static o a;
  public static com.nianticproject.ingress.common.g.p a;
  public static i a;
  public static PortalInfoDialog a;
  public static boolean a;
  public static int b;
  public static U b;
  public static boolean b;
  public static boolean c;
  public static boolean d;
  public static boolean e;
  public static boolean f;
  public static boolean g;
  public static boolean h;
  public static boolean i;
  public static boolean j;
  public static boolean k;
  public static boolean l;
  public static boolean m;
  public static boolean n;
  public static boolean o;
  public static boolean p;
  public static boolean q;
  public static boolean r;
  public static boolean s;
  public static boolean t;
  public static boolean u;
  public static boolean v;
  public static boolean w;
  public static boolean x;
  public static boolean y;
  public static boolean z;

  public static int a(Portal paramPortal)
  {
    String str = paramPortal.getEntityGuid();
    Iterator localIterator = jdField_a_of_type_ComNianticprojectIngressCommonGO.e().iterator();
    int i1 = 0;
    while (localIterator.hasNext())
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator.next();
      Resource localResource = (Resource)localf.getComponent(Resource.class);
      if ((localResource != null) && (localResource.getResourceType() == af.i))
      {
        PortalCoupler localPortalCoupler = (PortalCoupler)localf.getComponent(PortalCoupler.class);
        if (localPortalCoupler != null)
          if (!str.equals(localPortalCoupler.getPortalGuid()))
            break label119;
      }
    }
    label119: for (int i2 = i1 + 1; ; i2 = i1)
    {
      i1 = i2;
      break;
      return i1;
    }
  }

  public static Class a(ag paramag)
  {
    switch (T.a[paramag.ordinal()])
    {
    default:
      throw new RuntimeException();
    case 1:
      return N.class;
    case 2:
      return com.nianticproject.ingress.common.inventory.a.class;
    case 3:
      return ak.class;
    case 4:
      return cc.class;
    case 5:
      return com.nianticproject.ingress.common.l.a.class;
    case 6:
      return com.nianticproject.ingress.common.m.f.class;
    case 7:
      return com.nianticproject.ingress.common.r.a.class;
    case 8:
      return j.class;
    case 9:
    }
    return b.class;
  }

  public static String a()
  {
    try
    {
      String str = "v" + jdField_a_of_type_AndroidAppApplication.getPackageManager().getPackageInfo(jdField_a_of_type_AndroidAppApplication.getPackageName(), 0).versionName + "-broot-1.0.2.13";
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException(localNameNotFoundException);
    }
  }

  public static void a()
  {
    jdField_a_of_type_ComNianticprojectIngressNemesisActivity.runOnUiThread(new K());
  }

  public static ag[] a()
  {
    ArrayList localArrayList = new ArrayList();
    if (jdField_a_of_type_S == S.b)
      localArrayList.add(ag.MOD_ITEMS);
    if (jdField_b_of_type_Boolean)
      localArrayList.add(ag.a);
    if (c)
      localArrayList.add(ag.b);
    if (e)
      localArrayList.add(ag.c);
    if (d)
      localArrayList.add(ag.d);
    if (f)
      localArrayList.add(ag.e);
    if (g)
      localArrayList.add(ag.f);
    if (h)
      localArrayList.add(ag.g);
    if (jdField_a_of_type_S == S.jdField_a_of_type_S)
      localArrayList.add(ag.MOD_ITEMS);
    localArrayList.add(ag.MOD_ABOUT);
    return (ag[])localArrayList.toArray(new ag[localArrayList.size()]);
  }

  public static void b()
  {
    jdField_a_of_type_ComNianticprojectIngressNemesisActivity.runOnUiThread(new L());
  }

  public static void c()
  {
    U localU1 = jdField_b_of_type_U;
    jdField_a_of_type_U = localU1;
    if (localU1 != U.jdField_a_of_type_U)
    {
      jdField_a_of_type_U = jdField_b_of_type_U;
      return;
    }
    ArrayList localArrayList = new ArrayList();
    switch (M.a[jdField_a_of_type_ComNianticprojectIngressCommonBP.a.ordinal()])
    {
    case 3:
    default:
    case 1:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      localArrayList.add("data");
      Iterator localIterator = localArrayList.iterator();
      U localU2;
      do
      {
        if (!localIterator.hasNext())
          break;
        String str = (String)localIterator.next();
        localU2 = (U)U.jdField_a_of_type_JavaUtilMap.get(str);
        jdField_a_of_type_U = localU2;
      }
      while (localU2 == null);
      return;
      localArrayList.add("data-xxhdpi");
      localArrayList.add("data-xhdpi");
      continue;
      int i1 = jdField_a_of_type_AndroidUtilDisplayMetrics.widthPixels;
      if (i1 < 320)
      {
        localArrayList.add("data-qvga");
        localArrayList.add("data-ingressopt-qvga");
      }
      else if (i1 < 480)
      {
        localArrayList.add("data-hvga");
        localArrayList.add("data-ingressopt-hvga");
      }
    }
    jdField_a_of_type_U = (U)U.jdField_a_of_type_JavaUtilList.get(1);
  }

  public static void d()
  {
    SharedPreferences.Editor localEditor = jdField_a_of_type_AndroidAppApplication.getSharedPreferences("mod", 0).edit();
    localEditor.putBoolean("swapTouchMenuButtons", jdField_a_of_type_Boolean);
    localEditor.putString("itemsTab", jdField_a_of_type_S.toString());
    localEditor.putBoolean("showOrigItemsTab", jdField_b_of_type_Boolean);
    localEditor.putBoolean("showAgentTab", c);
    localEditor.putBoolean("showIntelTab", d);
    localEditor.putBoolean("showMissionTab", e);
    localEditor.putBoolean("showRecruitTab", f);
    localEditor.putBoolean("showPasscodeTab", g);
    localEditor.putBoolean("showDeviceTab", h);
    localEditor.putBoolean("skipIntro", i);
    localEditor.putBoolean("hackAnimEnabled", k);
    localEditor.putBoolean("scannerZoomInAnimEnabled", j);
    localEditor.putBoolean("rotateInventoryItemsEnabled", l);
    localEditor.putBoolean("recycleAnimationsEnabled", m);
    localEditor.putBoolean("xmFlowEnabled", n);
    localEditor.putBoolean("shieldAnimEnabled", o);
    localEditor.putBoolean("fullscreen", p);
    localEditor.putBoolean("showPortalVectors", q);
    localEditor.putBoolean("portalParticlesEnabled", r);
    localEditor.putBoolean("xmGlobsEnabled", s);
    localEditor.putBoolean("scannerObjectsEnabled", t);
    localEditor.putBoolean("simplifyInventoryItems", u);
    localEditor.putInt("gpsLockTime", jdField_b_of_type_Int);
    localEditor.putInt("chatTimeFormat", jdField_a_of_type_Int);
    localEditor.putBoolean("vibration", v);
    localEditor.putBoolean("keepScreenOn", w);
    localEditor.putBoolean("changePortalInfoDialog", x);
    localEditor.putBoolean("enablePowerCubesRecycle", y);
    localEditor.putBoolean("isPrivacyOn", z);
    localEditor.putString("uiVariant", jdField_b_of_type_U.jdField_a_of_type_JavaLangString);
    localEditor.commit();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     J
 * JD-Core Version:    0.6.2
 */