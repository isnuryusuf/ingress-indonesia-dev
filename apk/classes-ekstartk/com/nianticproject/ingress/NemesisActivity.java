package com.nianticproject.ingress;

import android.accounts.Account;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings.Secure;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.google.a.a.ag;
import com.google.a.a.ba;
import com.google.a.c.du;
import com.nianticproject.ingress.common.ab;
import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.playerprofile.ao;
import com.nianticproject.ingress.common.scanner.j;
import com.nianticproject.ingress.common.ui.elements.bo;
import com.nianticproject.ingress.common.ui.m;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.n.r;
import com.nianticproject.ingress.push.NemesisNotificationsService;
import com.nianticproject.ingress.service.CommService;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.ui.g;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class NemesisActivity extends AndroidApplication
  implements com.nianticproject.ingress.common.c, com.nianticproject.ingress.connectivity.b, com.nianticproject.ingress.j.c, r, com.nianticproject.ingress.ui.d
{
  private static final aa a = new aa(NemesisActivity.class);
  private static final Set<String> b = du.b("Nexus One");
  private static boolean c = true;
  private final com.nianticproject.ingress.common.ui.w A = new cc(this);
  private NemesisApplication d;
  private p e;
  private com.nianticproject.ingress.common.i.a f;
  private dj g;
  private com.nianticproject.ingress.m.a h;
  private ab i;
  private bo j;
  private AndroidComm k;
  private com.nianticproject.ingress.common.d l;
  private long m;
  private long n;
  private View o;
  private boolean p;
  private g q;
  private cq r;
  private cf s;
  private ce t = ce.a;
  private final AtomicBoolean u = new AtomicBoolean(true);
  private ba<com.google.a.a.aj<byte[]>> v = null;
  private String w = null;
  private String x = null;
  private List<com.nianticproject.ingress.ui.k> y = new ArrayList();
  private final com.nianticproject.ingress.common.g.w z = new ca(this);

  private AlertDialog a(Context paramContext, int paramInt1, int paramInt2)
  {
    return a(paramContext, paramInt1, paramInt2, 2131296317, null, 0);
  }

  private AlertDialog a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, DialogInterface.OnClickListener paramOnClickListener, int paramInt4)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(paramInt1);
    localBuilder.setMessage(paramInt2);
    bu localbu = new bu(this);
    if (paramOnClickListener != null);
    for (Object localObject = paramOnClickListener; ; localObject = localbu)
    {
      localBuilder.setPositiveButton(paramInt3, (DialogInterface.OnClickListener)localObject);
      if (paramOnClickListener != null)
        localBuilder.setNegativeButton(paramInt4, localbu);
      localBuilder.setCancelable(false);
      return localBuilder.show();
    }
  }

  private void a(Intent paramIntent)
  {
    DisplayedAchievement localDisplayedAchievement = NemesisNotificationsService.a(this, paramIntent.getData());
    if (localDisplayedAchievement != null)
      com.nianticproject.ingress.common.x.i.a().a(new au(localDisplayedAchievement));
    paramIntent.setData(null);
  }

  private void b(boolean paramBoolean)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisActivity.worldResetHelper");
      if (this.l != null)
      {
        this.l.b();
        this.l = null;
      }
      com.nianticproject.ingress.common.model.k localk = this.e.b();
      this.e.p();
      ak localak = this.d.j();
      this.l = new com.nianticproject.ingress.common.d(this.k, localk);
      if (paramBoolean);
      for (com.nianticproject.ingress.common.b localb = com.nianticproject.ingress.common.b.b; ; localb = com.nianticproject.ingress.common.b.a)
      {
        if (paramBoolean)
          new by(this, localb);
        this.handler.post(new bz(this, localb));
        ab localab = this.i;
        int i1 = 0;
        if (localab != null)
        {
          this.i.b(this.d.g());
          this.i.b(this.r);
          boolean bool = this.i.d();
          i1 = 0;
          if (bool)
          {
            this.i.c();
            i1 = 1;
          }
        }
        this.r.a(this.e.j(), localk);
        this.i = new ab();
        this.i.a(localak);
        this.i.a(this.e.q());
        this.i.a(this.e.o());
        this.i.a(this.e.h());
        this.i.a(this.h);
        this.i.a(this.l);
        if (i1 != 0)
          this.i.f_();
        this.i.a(this.d.g());
        this.i.a(this.r);
        return;
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private void f()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisActivity.onResumeWithFocus");
      this.t = ce.c;
      aa localaa = a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.s;
      localaa.a("onResumeWithFocus: state=%s", arrayOfObject);
      if ((this.s == cf.a) && (com.nianticproject.ingress.common.s.c.q()))
      {
        a.b("Forcing account selection b/c isAccountSelectionRequiredBeforeGainStart is true in prefs.");
        a(cf.a);
      }
      boolean bool = com.nianticproject.ingress.o.a.a.h.a();
      com.nianticproject.ingress.common.f.a.a(bool);
      com.nianticproject.ingress.common.x.i.a(bool);
      com.nianticproject.ingress.o.e.a();
      switch (bt.b[this.s.ordinal()])
      {
      default:
        throw new IllegalStateException("unimplemented state=" + this.s);
      case 1:
      case 2:
      case 3:
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
    startActivityForResult(new Intent(this, AccountsActivity.class), 1001);
    while (true)
    {
      NemesisNotificationsService.a(this, false);
      com.nianticproject.ingress.shared.aj.b();
      return;
      j();
      continue;
      g();
      h();
    }
  }

  private void g()
  {
    long l1 = System.currentTimeMillis();
    if (l1 - this.n < 300000L)
      return;
    this.n = l1;
    new bx(this, l1).e();
  }

  private void h()
  {
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("NemesisActivity.onGameResume");
        if (!com.nianticproject.ingress.o.a.e(this))
        {
          com.nianticproject.ingress.o.a.b(this);
          return;
        }
        NemesisNotificationsService.a(this);
        CommService.a(this);
        ContentResolver localContentResolver = getContentResolver();
        if ((Settings.Secure.isLocationProviderEnabled(localContentResolver, "network")) || (Settings.Secure.isLocationProviderEnabled(localContentResolver, "gps")))
        {
          if (Settings.Secure.getString(getContentResolver(), "mock_location").equals("0"))
            break label407;
          i1 = 1;
          if ((i1 != 0) && ((!ec.d()) || (com.nianticproject.ingress.o.a.a.a.a())))
          {
            Intent localIntent1 = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
            List localList = getPackageManager().queryIntentActivities(localIntent1, 65536);
            if ((localList == null) || (localList.isEmpty()))
              break label412;
            i2 = 1;
            if (i2 == 0)
              break label384;
            a(this, 2131296285, 2131296286, 2131296288, new bw(this, localIntent1), 2131296289);
          }
          label171: long l1 = System.currentTimeMillis();
          if (l1 - this.m > 300000L)
          {
            this.m = l1;
            this.e.f().a(null);
          }
          this.k.a(this.j);
          a(this.d.l().a(this));
          if (this.i != null)
            this.i.f_();
          if (!TextUtils.isEmpty(this.w))
          {
            c(this.w);
            this.w = null;
          }
          if (!TextUtils.isEmpty(this.x))
          {
            b(this.x);
            this.x = null;
          }
          return;
        }
        Intent localIntent2 = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        if (ec.a(this, localIntent2))
        {
          a(this, 2131296320, 2131296321, 2131296324, new bv(this, localIntent2), 2131296325);
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      if (Build.VERSION.SDK_INT >= 11);
      for (int i3 = 2131296322; ; i3 = 2131296323)
      {
        a(this, 2131296320, i3);
        break;
        label384: a(this, 2131296285, 2131296287);
        break label171;
      }
      label407: int i1 = 0;
      continue;
      label412: int i2 = 0;
    }
  }

  private dj i()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisActivity.createPregameAppListener");
      bq localbq = new bq(this);
      dj localdj = new dj(this, getSupportFragmentManager(), this.d.l(), localbq);
      return localdj;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private void j()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisActivity.onPregameResume");
      this.d.g().f_();
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public final void a()
  {
    this.u.set(false);
  }

  public final void a(int paramInt)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString)
  {
    com.nianticproject.ingress.j.a.a(getSupportFragmentManager(), paramString, this);
  }

  public final void a(ba<com.google.a.a.aj<byte[]>> paramba)
  {
    if (this.v != null)
      this.v.a(com.google.a.a.aj.d());
    this.v = paramba;
    startActivityForResult(new Intent("android.media.action.IMAGE_CAPTURE"), 1005);
  }

  public final void a(cf paramcf)
  {
    ec.a("setState");
    this.s = paramcf;
    switch (bt.b[this.s.ordinal()])
    {
    default:
      return;
    case 2:
      this.g.b();
      j();
      return;
    case 3:
    }
    h();
  }

  public final void a(j paramj)
  {
    if (this.e == null);
    t localt;
    do
    {
      return;
      localt = this.e.n();
    }
    while (localt == null);
    m localm = localt.b();
    boolean bool = localt.b() instanceof com.nianticproject.ingress.common.scanner.i;
    if ((bool) && (ag.a(paramj.a(), ((com.nianticproject.ingress.common.scanner.i)localm).j())));
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      this.k.c(false);
      return;
    }
    com.nianticproject.ingress.common.inventory.ui.q localq = com.nianticproject.ingress.common.gameentity.a.a(this.e.b(), paramj.a());
    if (localq != null);
    for (f localf = localq.h(); ; localf = null)
    {
      com.nianticproject.ingress.common.scanner.i locali = new com.nianticproject.ingress.common.scanner.i(this.e.k(), this.e.j(), this.e.f(), this.e.b(), localf, paramj, false, this.k);
      com.nianticproject.ingress.common.x.i.a().a(new bs(this, bool, localt, locali));
      return;
    }
  }

  public final void a(String paramString)
  {
    com.nianticproject.ingress.j.a.a(getSupportFragmentManager(), paramString);
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.q.b();
      return;
    }
    this.q.a();
  }

  public final void b()
  {
    if (this.p)
    {
      this.k.a(1, false);
      this.k.b(true);
      this.p = false;
    }
  }

  public final void b(int paramInt)
  {
  }

  public final void b(String paramString)
  {
    if (this.k != null)
    {
      this.k.b(true);
      this.k.a("@" + paramString, 0);
    }
  }

  public final com.nianticproject.ingress.n.q c()
  {
    return this.g.a();
  }

  public final void c(int paramInt)
  {
  }

  public final void c(String paramString)
  {
    this.e.n().b(new ao(paramString, this.e.D(), this.e.E(), null, TextUtils.equals(paramString, this.e.b().j())));
  }

  public final void d()
  {
    com.nianticproject.ingress.common.a.a.a("Comm", "open");
  }

  public final void e()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.k.getWindowToken(), 0);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    case 1003:
    default:
    case 1001:
    case 1002:
    case 1004:
    case 1005:
    case 1006:
    }
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("UnhandledRequestCode");
        return;
        com.nianticproject.ingress.shared.aj.a("RequestSelectAccount");
        aa localaa = a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt2);
        localaa.a("onActivityResult(request=REQUEST_SELECT_ACCOUNT result=%d)", arrayOfObject);
        if (paramInt2 != -1)
        {
          a.a("resultCode != RESULT_OK: finishing");
          finish();
          return;
        }
        Account localAccount = com.nianticproject.ingress.o.a.a(paramIntent);
        if ((localAccount == null) || (TextUtils.isEmpty(localAccount.name)))
        {
          a.a("null or empty account name: finishing");
          finish();
          return;
        }
        a.a("resultCode=RESULT_OK: saving account");
        com.nianticproject.ingress.o.a.a(localAccount);
        a(cf.b);
        continue;
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      com.nianticproject.ingress.shared.aj.a("RequestCodePasscode");
      PasscodeActivity.a(this.e.i(), this.k);
      continue;
      com.nianticproject.ingress.shared.aj.a("RequestPickNotificationSound");
      if (paramInt2 == -1)
      {
        Uri localUri = (Uri)paramIntent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
        this.h.a(localUri);
        continue;
        com.nianticproject.ingress.shared.aj.a("RequestCamera");
        if ((paramInt2 == -1) && (paramIntent != null) && (paramIntent.getExtras() != null))
        {
          Bitmap localBitmap = (Bitmap)paramIntent.getExtras().get("data");
          if (localBitmap != null)
          {
            ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
            localBitmap.compress(Bitmap.CompressFormat.PNG, 0, localByteArrayOutputStream);
            this.v.a(com.google.a.a.aj.b(localByteArrayOutputStream.toByteArray()));
            this.v = null;
          }
        }
        if (this.v != null)
        {
          this.v.a(com.google.a.a.aj.d());
          this.v = null;
          continue;
          com.nianticproject.ingress.shared.aj.a("RequestMoreInfo");
          if ((paramIntent != null) && (ao.m()))
          {
            String str1 = paramIntent.getAction();
            String str2 = paramIntent.getStringExtra("android.intent.extra.TEXT");
            if (!TextUtils.isEmpty(str2))
              if ("android.intent.action.VIEW".equals(str1))
                this.w = str2;
              else if ("android.intent.action.CALL".equals(str1))
                this.x = str2;
          }
        }
      }
    }
  }

  public void onAttachFragment(Fragment paramFragment)
  {
    if ((paramFragment instanceof com.nianticproject.ingress.ui.k))
    {
      if (this.k != null)
        this.k.a((com.nianticproject.ingress.ui.k)paramFragment);
    }
    else
      return;
    com.nianticproject.ingress.ui.k localk = (com.nianticproject.ingress.ui.k)paramFragment;
    this.y.add(localk);
  }

  public void onBackPressed()
  {
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("NemesisActivity.onBackPressed");
        switch (bt.b[this.s.ordinal()])
        {
        default:
          super.onBackPressed();
          return;
        case 2:
          this.g.d();
          super.onBackPressed();
          continue;
        case 3:
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      if ((this.k.e()) && ((this.e.n().b() instanceof com.nianticproject.ingress.common.scanner.k)))
      {
        this.k.c(true);
        com.nianticproject.ingress.shared.aj.b();
        return;
      }
      Gdx.app.postRunnable(new bm(this));
    }
  }

  // ERROR //
  protected void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 1042	a:ae	(Lcom/nianticproject/ingress/NemesisActivity;)V
    //   4: ldc_w 1044
    //   7: invokestatic 202	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: aload_1
    //   12: invokespecial 1046	com/badlogic/gdx/backends/android/AndroidApplication:onCreate	(Landroid/os/Bundle;)V
    //   15: getstatic 78	com/nianticproject/ingress/NemesisActivity:a	Lcom/nianticproject/ingress/common/w/aa;
    //   18: astore_3
    //   19: iconst_2
    //   20: anewarray 542	java/lang/Object
    //   23: astore 4
    //   25: aload 4
    //   27: iconst_0
    //   28: aload_0
    //   29: invokestatic 1049	com/nianticproject/ingress/ec:c	(Landroid/content/Context;)Ljava/lang/String;
    //   32: aastore
    //   33: aload 4
    //   35: iconst_1
    //   36: invokestatic 233	com/nianticproject/ingress/ec:a	()Ljava/lang/String;
    //   39: aastore
    //   40: aload_3
    //   41: ldc_w 1051
    //   44: aload 4
    //   46: invokevirtual 549	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   49: ldc_w 1053
    //   52: invokestatic 202	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   55: aload_0
    //   56: ldc_w 1054
    //   59: invokevirtual 1056	com/nianticproject/ingress/NemesisActivity:setContentView	(I)V
    //   62: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   65: aload_0
    //   66: invokestatic 1059	com/nianticproject/ingress/NemesisApplication:a	()Lcom/nianticproject/ingress/NemesisApplication;
    //   69: putfield 210	com/nianticproject/ingress/NemesisActivity:d	Lcom/nianticproject/ingress/NemesisApplication;
    //   72: ldc_w 1061
    //   75: invokestatic 202	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   78: aload_0
    //   79: aload_0
    //   80: ldc_w 1062
    //   83: invokevirtual 1066	com/nianticproject/ingress/NemesisActivity:findViewById	(I)Landroid/view/View;
    //   86: putfield 536	com/nianticproject/ingress/NemesisActivity:o	Landroid/view/View;
    //   89: aload_0
    //   90: aload_0
    //   91: ldc_w 1067
    //   94: invokevirtual 1066	com/nianticproject/ingress/NemesisActivity:findViewById	(I)Landroid/view/View;
    //   97: checkcast 710	com/nianticproject/ingress/AndroidComm
    //   100: putfield 238	com/nianticproject/ingress/NemesisActivity:k	Lcom/nianticproject/ingress/AndroidComm;
    //   103: aload_0
    //   104: getfield 238	com/nianticproject/ingress/NemesisActivity:k	Lcom/nianticproject/ingress/AndroidComm;
    //   107: iconst_0
    //   108: invokevirtual 1068	com/nianticproject/ingress/AndroidComm:a	(Z)V
    //   111: aload_0
    //   112: getfield 115	com/nianticproject/ingress/NemesisActivity:y	Ljava/util/List;
    //   115: invokeinterface 1072 1 0
    //   120: astore 7
    //   122: aload 7
    //   124: invokeinterface 1077 1 0
    //   129: ifeq +49 -> 178
    //   132: aload 7
    //   134: invokeinterface 1081 1 0
    //   139: checkcast 1009	com/nianticproject/ingress/ui/k
    //   142: astore 12
    //   144: aload_0
    //   145: getfield 238	com/nianticproject/ingress/NemesisActivity:k	Lcom/nianticproject/ingress/AndroidComm;
    //   148: aload 12
    //   150: invokevirtual 1012	com/nianticproject/ingress/AndroidComm:a	(Lcom/nianticproject/ingress/ui/k;)V
    //   153: goto -31 -> 122
    //   156: astore 6
    //   158: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   161: aload 6
    //   163: athrow
    //   164: astore_2
    //   165: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   168: aload_2
    //   169: athrow
    //   170: astore 5
    //   172: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   175: aload 5
    //   177: athrow
    //   178: aload_0
    //   179: getfield 115	com/nianticproject/ingress/NemesisActivity:y	Ljava/util/List;
    //   182: invokeinterface 1084 1 0
    //   187: aload_0
    //   188: getfield 238	com/nianticproject/ingress/NemesisActivity:k	Lcom/nianticproject/ingress/AndroidComm;
    //   191: aload_0
    //   192: invokevirtual 1087	com/nianticproject/ingress/AndroidComm:a	(Lcom/nianticproject/ingress/common/c;)V
    //   195: aload_0
    //   196: new 843	com/nianticproject/ingress/ui/g
    //   199: dup
    //   200: aload_0
    //   201: ldc_w 1088
    //   204: invokevirtual 1066	com/nianticproject/ingress/NemesisActivity:findViewById	(I)Landroid/view/View;
    //   207: invokespecial 1091	com/nianticproject/ingress/ui/g:<init>	(Landroid/view/View;)V
    //   210: putfield 841	com/nianticproject/ingress/NemesisActivity:q	Lcom/nianticproject/ingress/ui/g;
    //   213: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   216: aload_0
    //   217: iconst_3
    //   218: invokevirtual 1094	com/nianticproject/ingress/NemesisActivity:setVolumeControlStream	(I)V
    //   221: new 1096	com/badlogic/gdx/backends/android/AndroidApplicationConfiguration
    //   224: dup
    //   225: invokespecial 1097	com/badlogic/gdx/backends/android/AndroidApplicationConfiguration:<init>	()V
    //   228: astore 8
    //   230: aload 8
    //   232: iconst_1
    //   233: putfield 1100	com/badlogic/gdx/backends/android/AndroidApplicationConfiguration:useGL20	Z
    //   236: aload_0
    //   237: aload_0
    //   238: invokespecial 1102	com/nianticproject/ingress/NemesisActivity:i	()Lcom/nianticproject/ingress/dj;
    //   241: putfield 800	com/nianticproject/ingress/NemesisActivity:g	Lcom/nianticproject/ingress/dj;
    //   244: aload_0
    //   245: new 456	com/nianticproject/ingress/common/i/a
    //   248: dup
    //   249: aload_0
    //   250: getfield 800	com/nianticproject/ingress/NemesisActivity:g	Lcom/nianticproject/ingress/dj;
    //   253: invokespecial 1104	com/nianticproject/ingress/common/i/a:<init>	(Lcom/badlogic/gdx/ApplicationListener;)V
    //   256: putfield 454	com/nianticproject/ingress/NemesisActivity:f	Lcom/nianticproject/ingress/common/i/a;
    //   259: aload_0
    //   260: aload_0
    //   261: getfield 454	com/nianticproject/ingress/NemesisActivity:f	Lcom/nianticproject/ingress/common/i/a;
    //   264: aload 8
    //   266: invokevirtual 1108	com/nianticproject/ingress/NemesisActivity:initializeForView	(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    //   269: astore 9
    //   271: aload 8
    //   273: getfield 1100	com/badlogic/gdx/backends/android/AndroidApplicationConfiguration:useGL20	Z
    //   276: ifeq +18 -> 294
    //   279: aload_0
    //   280: ldc_w 1109
    //   283: invokevirtual 1066	com/nianticproject/ingress/NemesisActivity:findViewById	(I)Landroid/view/View;
    //   286: checkcast 1111	android/view/ViewGroup
    //   289: aload 9
    //   291: invokevirtual 1114	android/view/ViewGroup:addView	(Landroid/view/View;)V
    //   294: invokestatic 1117	com/nianticproject/ingress/o/a:d	()Lcom/nianticproject/ingress/o/b;
    //   297: astore 10
    //   299: getstatic 1119	com/nianticproject/ingress/bt:a	[I
    //   302: aload 10
    //   304: invokevirtual 1122	com/nianticproject/ingress/o/b:ordinal	()I
    //   307: iaload
    //   308: tableswitch	default:+32 -> 340, 1:+58->366, 2:+58->366, 3:+126->434, 4:+126->434
    //   341: iconst_m1
    //   342: dstore_2
    //   343: dup
    //   344: new 420	java/lang/StringBuilder
    //   347: dup
    //   348: ldc_w 1124
    //   351: invokespecial 424	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   354: aload 10
    //   356: invokevirtual 590	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   359: invokevirtual 434	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: invokespecial 591	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   365: athrow
    //   366: aload_0
    //   367: getstatic 553	com/nianticproject/ingress/cf:a	Lcom/nianticproject/ingress/cf;
    //   370: invokevirtual 564	com/nianticproject/ingress/NemesisActivity:a	(Lcom/nianticproject/ingress/cf;)V
    //   373: aload_0
    //   374: invokevirtual 1128	com/nianticproject/ingress/NemesisActivity:getIntent	()Landroid/content/Intent;
    //   377: invokevirtual 995	android/content/Intent:getAction	()Ljava/lang/String;
    //   380: astore 11
    //   382: ldc_w 1130
    //   385: aload 11
    //   387: invokevirtual 668	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   390: ifeq +54 -> 444
    //   393: aload_0
    //   394: iconst_1
    //   395: putfield 847	com/nianticproject/ingress/NemesisActivity:p	Z
    //   398: aload_0
    //   399: aload_0
    //   400: invokevirtual 1128	com/nianticproject/ingress/NemesisActivity:getIntent	()Landroid/content/Intent;
    //   403: aconst_null
    //   404: invokevirtual 1134	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   407: invokevirtual 1137	com/nianticproject/ingress/NemesisActivity:setIntent	(Landroid/content/Intent;)V
    //   410: aload_0
    //   411: aload_0
    //   412: invokevirtual 1128	com/nianticproject/ingress/NemesisActivity:getIntent	()Landroid/content/Intent;
    //   415: invokespecial 1139	com/nianticproject/ingress/NemesisActivity:a	(Landroid/content/Intent;)V
    //   418: aload_0
    //   419: new 295	com/nianticproject/ingress/cq
    //   422: dup
    //   423: aload_0
    //   424: invokespecial 1142	com/nianticproject/ingress/cq:<init>	(Landroid/app/Activity;)V
    //   427: putfield 287	com/nianticproject/ingress/NemesisActivity:r	Lcom/nianticproject/ingress/cq;
    //   430: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   433: return
    //   434: aload_0
    //   435: getstatic 933	com/nianticproject/ingress/cf:b	Lcom/nianticproject/ingress/cf;
    //   438: invokevirtual 564	com/nianticproject/ingress/NemesisActivity:a	(Lcom/nianticproject/ingress/cf;)V
    //   441: goto -68 -> 373
    //   444: ldc_w 1144
    //   447: aload 11
    //   449: invokevirtual 668	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   452: ifeq -42 -> 410
    //   455: aload_0
    //   456: aload_0
    //   457: invokevirtual 1128	com/nianticproject/ingress/NemesisActivity:getIntent	()Landroid/content/Intent;
    //   460: aconst_null
    //   461: invokevirtual 1134	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   464: invokevirtual 1137	com/nianticproject/ingress/NemesisActivity:setIntent	(Landroid/content/Intent;)V
    //   467: goto -57 -> 410
    //
    // Exception table:
    //   from	to	target	type
    //   72	122	156	finally
    //   122	153	156	finally
    //   178	213	156	finally
    //   4	49	164	finally
    //   62	72	164	finally
    //   158	164	164	finally
    //   172	178	164	finally
    //   213	294	164	finally
    //   294	340	164	finally
    //   340	366	164	finally
    //   366	373	164	finally
    //   373	410	164	finally
    //   410	430	164	finally
    //   434	441	164	finally
    //   444	467	164	finally
    //   49	62	170	finally
  }

  public void onDestroy()
  {
    this.k.b(this);
    super.onDestroy();
    if (c)
    {
      com.nianticproject.ingress.common.a.c.b();
      Process.killProcess(Process.myPid());
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    while (true)
    {
      String str;
      try
      {
        com.nianticproject.ingress.shared.aj.a("NemesisActivity.onNewIntent");
        str = paramIntent.getAction();
        if ("com.nianticproject.ingress.ACTION_OPEN_COMM".equals(str))
        {
          this.p = true;
          a(paramIntent);
          return;
        }
        if ("com.nianticproject.ingress.ACTION_ACHIEVEMENT".equals(str))
          continue;
        if ("com.nianticproject.ingress.ACTION_QUIT".equals(str))
        {
          Process.killProcess(Process.myPid());
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      if ("com.nianticproject.ingress.ACTION_HARD_RESTART".equals(str))
      {
        AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
        PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, new Intent(this, NemesisActivity.class), 134217728);
        localAlarmManager.set(0, 100L + System.currentTimeMillis(), localPendingIntent);
        Process.killProcess(Process.myPid());
      }
    }
  }

  // ERROR //
  protected void onPause()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 1186	a:o	(Lcom/nianticproject/ingress/NemesisActivity;)V
    //   4: ldc_w 1188
    //   7: invokestatic 202	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   10: getstatic 78	com/nianticproject/ingress/NemesisActivity:a	Lcom/nianticproject/ingress/common/w/aa;
    //   13: astore_2
    //   14: iconst_2
    //   15: anewarray 542	java/lang/Object
    //   18: astore_3
    //   19: aload_3
    //   20: iconst_0
    //   21: aload_0
    //   22: getfield 544	com/nianticproject/ingress/NemesisActivity:s	Lcom/nianticproject/ingress/cf;
    //   25: aastore
    //   26: aload_3
    //   27: iconst_1
    //   28: aload_0
    //   29: getfield 97	com/nianticproject/ingress/NemesisActivity:t	Lcom/nianticproject/ingress/ce;
    //   32: aastore
    //   33: aload_2
    //   34: ldc_w 1190
    //   37: aload_3
    //   38: invokevirtual 549	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   41: aload_0
    //   42: invokespecial 1192	com/badlogic/gdx/backends/android/AndroidApplication:onPause	()V
    //   45: aload_0
    //   46: getfield 97	com/nianticproject/ingress/NemesisActivity:t	Lcom/nianticproject/ingress/ce;
    //   49: getstatic 540	com/nianticproject/ingress/ce:c	Lcom/nianticproject/ingress/ce;
    //   52: if_acmpne +121 -> 173
    //   55: aload_0
    //   56: invokestatic 1193	com/nianticproject/ingress/service/CommService:b	(Landroid/content/Context;)V
    //   59: getstatic 582	com/nianticproject/ingress/bt:b	[I
    //   62: aload_0
    //   63: getfield 544	com/nianticproject/ingress/NemesisActivity:s	Lcom/nianticproject/ingress/cf;
    //   66: invokevirtual 583	com/nianticproject/ingress/cf:ordinal	()I
    //   69: iaload
    //   70: tableswitch	default:+26 -> 96, 1:+81->151, 2:+60->130, 3:+122->192
    //   97: iconst_m1
    //   98: dstore_2
    //   99: dup
    //   100: new 420	java/lang/StringBuilder
    //   103: dup
    //   104: ldc_w 587
    //   107: invokespecial 424	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   110: aload_0
    //   111: getfield 544	com/nianticproject/ingress/NemesisActivity:s	Lcom/nianticproject/ingress/cf;
    //   114: invokevirtual 590	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 434	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokespecial 591	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   123: athrow
    //   124: astore_1
    //   125: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   128: aload_1
    //   129: athrow
    //   130: ldc_w 1195
    //   133: invokestatic 202	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   136: aload_0
    //   137: getfield 210	com/nianticproject/ingress/NemesisActivity:d	Lcom/nianticproject/ingress/NemesisApplication;
    //   140: invokevirtual 513	com/nianticproject/ingress/NemesisApplication:g	()Lcom/nianticproject/ingress/common/c/e;
    //   143: invokeinterface 1196 1 0
    //   148: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   151: aload_0
    //   152: getfield 510	com/nianticproject/ingress/NemesisActivity:i	Lcom/nianticproject/ingress/common/ab;
    //   155: ifnull +10 -> 165
    //   158: aload_0
    //   159: getfield 510	com/nianticproject/ingress/NemesisActivity:i	Lcom/nianticproject/ingress/common/ab;
    //   162: invokevirtual 521	com/nianticproject/ingress/common/ab:c	()V
    //   165: aload_0
    //   166: iconst_1
    //   167: invokestatic 603	com/nianticproject/ingress/push/NemesisNotificationsService:a	(Landroid/content/Context;Z)V
    //   170: invokestatic 1152	com/nianticproject/ingress/common/a/c:b	()V
    //   173: aload_0
    //   174: getstatic 95	com/nianticproject/ingress/ce:a	Lcom/nianticproject/ingress/ce;
    //   177: putfield 97	com/nianticproject/ingress/NemesisActivity:t	Lcom/nianticproject/ingress/ce;
    //   180: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   183: return
    //   184: astore 6
    //   186: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   189: aload 6
    //   191: athrow
    //   192: aload_0
    //   193: getfield 104	com/nianticproject/ingress/NemesisActivity:u	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   196: iconst_1
    //   197: invokevirtual 1200	java/util/concurrent/atomic/AtomicBoolean:getAndSet	(Z)Z
    //   200: istore 4
    //   202: ldc_w 1202
    //   205: invokestatic 202	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   208: aload_0
    //   209: getfield 210	com/nianticproject/ingress/NemesisActivity:d	Lcom/nianticproject/ingress/NemesisApplication;
    //   212: invokevirtual 716	com/nianticproject/ingress/NemesisApplication:l	()Lcom/nianticproject/ingress/connectivity/a;
    //   215: aload_0
    //   216: invokevirtual 1205	com/nianticproject/ingress/connectivity/a:b	(Lcom/nianticproject/ingress/connectivity/b;)V
    //   219: aload_0
    //   220: invokespecial 607	com/nianticproject/ingress/NemesisActivity:g	()V
    //   223: getstatic 1028	com/badlogic/gdx/Gdx:app	Lcom/badlogic/gdx/Application;
    //   226: new 1207	com/nianticproject/ingress/bn
    //   229: dup
    //   230: aload_0
    //   231: iload 4
    //   233: invokespecial 1209	com/nianticproject/ingress/bn:<init>	(Lcom/nianticproject/ingress/NemesisActivity;Z)V
    //   236: invokeinterface 1036 2 0
    //   241: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   244: goto -93 -> 151
    //   247: astore 5
    //   249: invokestatic 285	com/nianticproject/ingress/shared/aj:b	()V
    //   252: aload 5
    //   254: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   4	96	124	finally
    //   96	124	124	finally
    //   148	151	124	finally
    //   151	165	124	finally
    //   165	173	124	finally
    //   173	180	124	finally
    //   186	192	124	finally
    //   192	202	124	finally
    //   241	244	124	finally
    //   249	255	124	finally
    //   130	148	184	finally
    //   202	241	247	finally
  }

  protected void onResume()
  {
    a.ao(this);
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisActivity.onResume");
      com.nianticproject.ingress.common.a.a.a("NemesisActivity");
      aa localaa = a;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.t;
      arrayOfObject[1] = Boolean.valueOf(hasWindowFocus());
      localaa.a("onResume: lifecycle=%s hasWindowFocus=%s", arrayOfObject);
      super.onResume();
      if (hasWindowFocus())
        f();
      while (true)
      {
        return;
        this.t = ce.b;
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisActivity.onWindowFocusChanged");
      super.onWindowFocusChanged(paramBoolean);
      aa localaa = a;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.t;
      arrayOfObject[1] = Boolean.valueOf(paramBoolean);
      localaa.a("onWindowFocusChanged: lifecycle=%s hasFocus=%s", arrayOfObject);
      if ((paramBoolean) && (this.t == ce.b))
        f();
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    com.nianticproject.ingress.ui.aj.a(this, (ViewGroup)findViewById(16908290), "coda.ttf");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.NemesisActivity
 * JD-Core Version:    0.6.2
 */