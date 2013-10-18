import android.app.Application;
import android.content.SharedPreferences;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.o;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.elements.PortalInfoDialog;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ah;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class a
{
  private static Label jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel;
  private static SimpleDateFormat jdField_a_of_type_JavaTextSimpleDateFormat = new SimpleDateFormat("h:mma");
  private static SimpleDateFormat b = new SimpleDateFormat("HH:mm:ss");
  private static SimpleDateFormat c = new SimpleDateFormat("HH:mm");

  public static Class a()
  {
    return J.a(J.a()[0]);
  }

  public static boolean ac()
  {
    return J.jdField_a_of_type_Boolean;
  }

  public static boolean ad()
  {
    return J.q;
  }

  public static void ae(NemesisActivity paramNemesisActivity)
  {
    J.jdField_a_of_type_ComNianticprojectIngressNemesisActivity = paramNemesisActivity;
    J.a();
    J.jdField_a_of_type_AndroidOsPowerManager$WakeLock = ((PowerManager)paramNemesisActivity.getSystemService("power")).newWakeLock(10, "Ingress - Keep Screen ON");
    J.b();
  }

  public static ah af()
  {
    return ah.a;
  }

  public static void ag(PortalInfoDialog paramPortalInfoDialog, Table paramTable)
  {
    J.jdField_a_of_type_ComNianticprojectIngressCommonUiElementsPortalInfoDialog = paramPortalInfoDialog;
    if (!J.x)
      return;
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)J.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiSkin.get("portal-stats", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)J.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiSkin.get("ops-title", Label.LabelStyle.class);
    ArrayList localArrayList = new ArrayList(paramTable.getCells());
    paramTable.clear();
    paramTable.add((Actor)((c)localArrayList.get(0)).a()).k();
    paramTable.add((Actor)((c)localArrayList.get(1)).a()).k().o();
    paramTable.row();
    paramTable.add((Actor)((c)localArrayList.get(3)).a()).k();
    paramTable.add((Actor)((c)localArrayList.get(4)).a()).k().o();
    paramTable.row();
    int i = J.a(paramPortalInfoDialog.r);
    Label.LabelStyle localLabelStyle3;
    String str;
    if (i > 0)
    {
      localLabelStyle3 = localLabelStyle2;
      paramTable.add(new Label("Keys:", localLabelStyle3)).k();
      str = String.valueOf(i);
      if (i <= 0)
        break label301;
    }
    while (true)
    {
      paramTable.add(new Label(str, localLabelStyle2)).k().o();
      paramTable.row();
      paramTable.add(new Label("Dist.:", localLabelStyle1)).k();
      Label localLabel = new Label("", localLabelStyle1);
      jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel = localLabel;
      paramTable.add(localLabel).k().o();
      return;
      localLabelStyle3 = localLabelStyle1;
      break;
      label301: localLabelStyle2 = localLabelStyle1;
    }
  }

  public static void ai(List paramList)
  {
    paramList.add(new b());
    paramList.add(new N());
  }

  public static boolean aj()
  {
    return J.i;
  }

  public static float ak(float paramFloat)
  {
    if (J.n)
      return paramFloat;
    return 0.0F;
  }

  public static boolean al()
  {
    return J.l;
  }

  public static void am(Table paramTable)
  {
    if (J.y)
      return;
    ArrayList localArrayList = new ArrayList(paramTable.getCells());
    paramTable.clear();
    paramTable.add((Actor)((c)localArrayList.get(0)).a()).k().a(e.a(0.29F), e.a(0.12F));
    paramTable.add((Actor)((c)localArrayList.get(1)).a()).k().a(e.a(0.29F), e.a(0.12F));
    paramTable.row();
  }

  public static boolean an()
  {
    return J.j;
  }

  public static void ao(NemesisActivity paramNemesisActivity)
  {
    if ((J.w) && (!J.jdField_a_of_type_AndroidOsPowerManager$WakeLock.isHeld()))
      J.jdField_a_of_type_AndroidOsPowerManager$WakeLock.acquire();
  }

  public static ah ap()
  {
    return ah.c;
  }

  public static void aq(com.nianticproject.ingress.common.b.p paramp)
  {
    J.jdField_a_of_type_ComNianticprojectIngressCommonBP = paramp;
    J.c();
  }

  public static SimpleDateFormat ar()
  {
    switch (J.jdField_a_of_type_Int)
    {
    default:
      return c;
    case 0:
      return jdField_a_of_type_JavaTextSimpleDateFormat;
    case 1:
    }
    return b;
  }

  public static float at(float paramFloat)
  {
    if (J.o)
      return paramFloat;
    return 1.0F;
  }

  public static float au(float paramFloat)
  {
    if (J.o)
      return paramFloat;
    return 0.0F;
  }

  public static boolean b()
  {
    return J.t;
  }

  public static ag[] d()
  {
    return J.a();
  }

  public static void e()
  {
    if (!J.x)
      return;
    double d = com.nianticproject.ingress.shared.b.a.a(J.jdField_a_of_type_ComNianticprojectIngressCommonGP.b().g().a(), ((LocationE6)J.jdField_a_of_type_ComNianticprojectIngressCommonUiElementsPortalInfoDialog.r.getEntity().getComponent(LocationE6.class)).getLatLng());
    jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel.setText(l.a((float)d));
  }

  public static ShaderProgram g(String paramString1, String paramString2, String paramString3)
  {
    return new ShaderProgram(paramString1, paramString2);
  }

  public static boolean i()
  {
    return J.c;
  }

  public static String j(ag paramag)
  {
    switch (I.a[paramag.ordinal()])
    {
    default:
      return null;
    case 1:
      return "[MOD]";
    case 2:
    }
    return "[ITEMS]";
  }

  public static void k(com.nianticproject.ingress.common.inventory.i parami)
  {
    J.jdField_a_of_type_ComNianticprojectIngressCommonInventoryI = parami;
  }

  public static void l()
  {
    J.jdField_a_of_type_ComNianticprojectIngressCommonGO = (o)com.nianticproject.ingress.common.g.i.a();
    J.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiSkin = J.jdField_a_of_type_ComNianticprojectIngressCommonGP.n().i;
  }

  public static boolean n()
  {
    return J.v;
  }

  public static void o(NemesisActivity paramNemesisActivity)
  {
    if ((J.w) && (J.jdField_a_of_type_AndroidOsPowerManager$WakeLock.isHeld()))
      J.jdField_a_of_type_AndroidOsPowerManager$WakeLock.release();
  }

  public static void p(Application paramApplication)
  {
    J.jdField_a_of_type_AndroidAppApplication = paramApplication;
    SharedPreferences localSharedPreferences = paramApplication.getSharedPreferences("mod", 0);
    J.jdField_a_of_type_Boolean = localSharedPreferences.getBoolean("swapTouchMenuButtons", false);
    J.jdField_a_of_type_S = S.valueOf(localSharedPreferences.getString("itemsTab", "HIDDEN"));
    J.jdField_b_of_type_Boolean = localSharedPreferences.getBoolean("showOrigItemsTab", true);
    J.c = localSharedPreferences.getBoolean("showAgentTab", true);
    J.d = localSharedPreferences.getBoolean("showIntelTab", true);
    J.e = localSharedPreferences.getBoolean("showMissionTab", true);
    J.f = localSharedPreferences.getBoolean("showRecruitTab", true);
    J.g = localSharedPreferences.getBoolean("showPasscodeTab", true);
    J.h = localSharedPreferences.getBoolean("showDeviceTab", true);
    J.i = localSharedPreferences.getBoolean("skipIntro", false);
    J.j = localSharedPreferences.getBoolean("scannerZoomInAnimEnabled", true);
    J.k = localSharedPreferences.getBoolean("hackAnimEnabled", true);
    J.l = localSharedPreferences.getBoolean("rotateInventoryItemsEnabled", true);
    J.m = localSharedPreferences.getBoolean("recycleAnimationsEnabled", true);
    J.n = localSharedPreferences.getBoolean("xmFlowEnabled", true);
    J.o = localSharedPreferences.getBoolean("shieldAnimEnabled", true);
    J.p = localSharedPreferences.getBoolean("fullscreen", false);
    J.q = localSharedPreferences.getBoolean("showPortalVectors", true);
    J.r = localSharedPreferences.getBoolean("portalParticlesEnabled", true);
    J.s = localSharedPreferences.getBoolean("xmGlobsEnabled", true);
    J.t = localSharedPreferences.getBoolean("scannerObjectsEnabled", true);
    J.u = localSharedPreferences.getBoolean("simplifyInventoryItems", false);
    J.jdField_b_of_type_Int = localSharedPreferences.getInt("gpsLockTime", 120000);
    J.jdField_a_of_type_Int = localSharedPreferences.getInt("chatTimeFormat", 0);
    J.v = localSharedPreferences.getBoolean("vibration", true);
    J.w = localSharedPreferences.getBoolean("keepScreenOn", false);
    J.x = localSharedPreferences.getBoolean("changePortalInfoDialog", true);
    J.y = localSharedPreferences.getBoolean("enablePowerCubesRecycle", true);
    J.z = localSharedPreferences.getBoolean("isPrivacyOn", false);
    U localU = (U)U.jdField_a_of_type_JavaUtilMap.get(localSharedPreferences.getString("uiVariant", "auto"));
    J.jdField_b_of_type_U = localU;
    if (localU == null)
      J.jdField_b_of_type_U = U.jdField_a_of_type_U;
    com.nianticproject.ingress.common.scanner.visuals.bj.jdField_a_of_type_Boolean = J.r;
    J.jdField_a_of_type_AndroidUtilDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramApplication.getSystemService("window")).getDefaultDisplay().getMetrics(J.jdField_a_of_type_AndroidUtilDisplayMetrics);
  }

  public static boolean q()
  {
    return J.z;
  }

  public static void r(com.nianticproject.ingress.common.g.p paramp)
  {
    J.jdField_a_of_type_ComNianticprojectIngressCommonGP = paramp;
  }

  public static void s(ag paramag)
  {
    J.jdField_a_of_type_ComNianticprojectIngressCommonGP.n().d(J.a(paramag));
  }

  public static boolean t()
  {
    return J.m;
  }

  public static long u()
  {
    return J.jdField_b_of_type_Int;
  }

  public static boolean v()
  {
    return J.u;
  }

  public static boolean w()
  {
    return J.k;
  }

  public static float x(float paramFloat)
  {
    if (J.k)
      return paramFloat;
    return 0.0F;
  }

  public static FileHandle y(String paramString)
  {
    FileHandle localFileHandle;
    if (!paramString.startsWith("{data:"))
    {
      localFileHandle = null;
      return localFileHandle;
    }
    int i = paramString.indexOf("/data/", 6);
    int j = paramString.indexOf(",", i + 6);
    String str1 = paramString.substring(6, i) + "/";
    String str2 = "/" + paramString.substring(i + 6, j);
    for (U localU = J.jdField_a_of_type_U; ; localU = (U)U.jdField_a_of_type_JavaUtilMap.get(localU.c))
    {
      if (localU == null)
        break label168;
      localFileHandle = Gdx.files.internal(str1 + localU.jdField_a_of_type_JavaLangString + str2);
      if (localFileHandle.exists())
        break;
    }
    label168: return null;
  }

  public static float z(float paramFloat)
  {
    if (J.j)
      return paramFloat;
    return 0.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a
 * JD-Core Version:    0.6.2
 */