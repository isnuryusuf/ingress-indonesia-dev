package com.nianticproject.ingress.push;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.app.af;
import android.support.v4.app.ag;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import com.google.a.c.eq;
import com.google.a.c.jc;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.au;
import com.nianticproject.ingress.common.playerprofile.BadgeView;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.common.w.v;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.multiphotos.bg;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievementTier;
import com.nianticproject.ingress.shared.rpc.push.PushNotification;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

class a
{
  private static final aa a = new aa(a.class);
  private static HashSet<com.nianticproject.ingress.shared.rpc.push.a> b = jc.a(arrayOfa);
  private static int c = 2;
  private final Context d;
  private final ArrayList<PushNotification> e = eq.a(8);
  private final ArrayList<PushNotification> f = eq.a(8);
  private boolean g = true;

  static
  {
    com.nianticproject.ingress.shared.rpc.push.a[] arrayOfa = new com.nianticproject.ingress.shared.rpc.push.a[1];
    arrayOfa[0] = com.nianticproject.ingress.shared.rpc.push.a.e;
  }

  public a(Context paramContext)
  {
    this.d = paramContext;
  }

  private static long a(ArrayList<PushNotification> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    long l1 = 9223372036854775807L;
    long l2;
    if (localIterator.hasNext())
    {
      l2 = ((PushNotification)localIterator.next()).expirationTimestampMs;
      if ((l2 <= 0L) || (l1 >= l2))
        break label58;
    }
    label58: for (long l3 = l2; ; l3 = l1)
    {
      l1 = l3;
      break;
      return l1;
    }
  }

  private PendingIntent a(Intent paramIntent)
  {
    return PendingIntent.getActivity(this.d, 0, paramIntent, 0);
  }

  private PendingIntent a(NemesisNotificationsService.DataExtras paramDataExtras)
  {
    Intent localIntent = NemesisNotificationsService.a(this.d, paramDataExtras);
    return PendingIntent.getService(this.d, 0, localIntent, 0);
  }

  private Intent a(String paramString, NemesisNotificationsService.DataExtras paramDataExtras)
  {
    Uri localUri = com.nianticproject.ingress.e.a.a(paramDataExtras);
    if ((!TextUtils.isEmpty(paramString)) || (localUri != null));
    for (Intent localIntent = new Intent(paramString, localUri, this.d, NemesisActivity.class); ; localIntent = new Intent(this.d, NemesisActivity.class))
    {
      localIntent.setFlags(268435456);
      return localIntent;
    }
  }

  private Bitmap a(int paramInt)
  {
    return BitmapFactory.decodeResource(this.d.getResources(), paramInt);
  }

  private static SpannableString a(PushNotification paramPushNotification)
  {
    SpannableString localSpannableString = new SpannableString(paramPushNotification.senderNickname + " " + paramPushNotification.subject);
    localSpannableString.setSpan(new StyleSpan(1), 0, paramPushNotification.senderNickname.length(), 33);
    return localSpannableString;
  }

  private String a(int paramInt1, int paramInt2)
  {
    Resources localResources = this.d.getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    return localResources.getQuantityString(paramInt1, paramInt2, arrayOfObject);
  }

  private String a(Object[] paramArrayOfObject)
  {
    return this.d.getString(2131296431, paramArrayOfObject);
  }

  private void a(NotificationManager paramNotificationManager, boolean paramBoolean)
  {
    if (this.f.isEmpty())
    {
      paramNotificationManager.cancel("NemesisNotificationManager.Notification", 1);
      return;
    }
    PushNotification localPushNotification1 = (PushNotification)this.f.get(0);
    int i = this.f.size();
    af localaf1 = e();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i - 1);
    af localaf2 = localaf1.c(String.format(a(arrayOfObject), new Object[0])).b(a(localPushNotification1));
    boolean bool;
    af localaf3;
    ag localag;
    int j;
    if (!paramBoolean)
    {
      bool = true;
      localaf3 = localaf2.a(bool);
      NemesisNotificationsService.DataExtras localDataExtras = new NemesisNotificationsService.DataExtras();
      localDataExtras.clearPortal = true;
      localaf3.b(a(localDataExtras)).a(b("com.nianticproject.ingress.ACTION_OPEN_COMM", localDataExtras));
      localag = new ag();
      Iterator localIterator = this.f.iterator();
      j = 1;
      label164: if (!localIterator.hasNext())
        break label224;
      PushNotification localPushNotification2 = (PushNotification)localIterator.next();
      localag.b(a(localPushNotification2));
      if (localPushNotification2.type == com.nianticproject.ingress.shared.rpc.push.a.c)
        break label308;
    }
    label308: for (int n = 0; ; n = j)
    {
      j = n;
      break label164;
      bool = false;
      break;
      label224: int k;
      if (j != 0)
        k = 2130837605;
      for (int m = 2131427330; ; m = 2131427329)
      {
        localaf3.a(a(k));
        String str = a(m, i);
        localag.a(str);
        localaf3.a(localag).a(str);
        paramNotificationManager.notify("NemesisNotificationManager.Notification", 1, localaf3.c());
        return;
        k = 2130837508;
      }
    }
  }

  private static void a(ArrayList<PushNotification> paramArrayList, PushNotification paramPushNotification)
  {
    if (paramArrayList.size() >= 8)
      paramArrayList.remove(7);
    paramArrayList.add(0, paramPushNotification);
  }

  private static boolean a(ArrayList<PushNotification> paramArrayList, long paramLong)
  {
    Iterator localIterator = paramArrayList.iterator();
    boolean bool1 = false;
    if (localIterator.hasNext())
    {
      long l = ((PushNotification)localIterator.next()).expirationTimestampMs;
      if ((l <= 0L) || (l >= paramLong))
        break label64;
      localIterator.remove();
    }
    label64: for (boolean bool2 = true; ; bool2 = bool1)
    {
      bool1 = bool2;
      break;
      return bool1;
    }
  }

  private PendingIntent b(String paramString, NemesisNotificationsService.DataExtras paramDataExtras)
  {
    return a(a(paramString, paramDataExtras));
  }

  private void b(NotificationManager paramNotificationManager, boolean paramBoolean)
  {
    if (this.e.isEmpty())
    {
      paramNotificationManager.cancel("NemesisNotificationManager.Notification", 0);
      return;
    }
    PushNotification localPushNotification = (PushNotification)this.e.get(0);
    int i = this.e.size();
    af localaf1 = e().b(localPushNotification.subject).a(a(2130837521)).a(localPushNotification.eventTimestampMs);
    boolean bool;
    af localaf2;
    if (!paramBoolean)
    {
      bool = true;
      localaf2 = localaf1.a(bool);
      NemesisNotificationsService.DataExtras localDataExtras = new NemesisNotificationsService.DataExtras();
      localDataExtras.clearAtPlayer = true;
      localaf2.b(a(localDataExtras)).a(b("com.nianticproject.ingress.ACTION_OPEN_COMM", localDataExtras));
      if (this.e.size() != 1)
        break label163;
      localaf2.a(localPushNotification.senderNickname);
    }
    while (true)
    {
      paramNotificationManager.notify("NemesisNotificationManager.Notification", 0, localaf2.c());
      return;
      bool = false;
      break;
      label163: String str = a(2131427328, i);
      af localaf3 = localaf2.a(str);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i - 1);
      localaf3.c(a(arrayOfObject));
      ag localag = new ag();
      localag.a(str);
      Iterator localIterator = this.e.iterator();
      while (localIterator.hasNext())
        localag.b(a((PushNotification)localIterator.next()));
      localaf2.a(localag);
    }
  }

  private void b(List<PushNotification> paramList)
  {
    Iterator localIterator = paramList.iterator();
    int i = 0;
    int j = 0;
    while (true)
      if (localIterator.hasNext())
      {
        PushNotification localPushNotification = (PushNotification)localIterator.next();
        if (localPushNotification.type == null)
        {
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = localPushNotification.senderNickname;
          arrayOfObject2[1] = localPushNotification.subject;
          continue;
        }
        switch (b.a[localPushNotification.type.ordinal()])
        {
        default:
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = localPushNotification.senderNickname;
          arrayOfObject1[1] = localPushNotification.subject;
          arrayOfObject1[2] = localPushNotification.type;
          break;
        case 1:
          a(this.e, localPushNotification);
          j = 1;
          break;
        case 2:
        case 3:
          for (int i1 = 0; ; i1++)
          {
            if (i1 >= this.f.size())
              break label235;
            if (localPushNotification.targetGuid.equals(((PushNotification)this.f.get(i1)).targetGuid))
            {
              this.f.set(i1, localPushNotification);
              i = 1;
              break;
            }
          }
          a(this.f, localPushNotification);
          i = 1;
          break;
        case 4:
          NotificationManager localNotificationManager2 = f();
          af localaf2 = e().a(this.d.getString(2131296434)).b(localPushNotification.subject).a(a(2130837579)).a(localPushNotification.eventTimestampMs).a(b("com.nianticproject.ingress.ACTION_OPEN_COMM", null));
          int n = c;
          c = n + 1;
          localNotificationManager2.notify("NemesisNotificationManager.Notification", n, localaf2.c());
          break;
        case 5:
          label235: NotificationManager localNotificationManager1 = f();
          if (!this.g)
          {
            i.a().a(new au(localPushNotification.achievement));
          }
          else
          {
            NemesisNotificationsService.DataExtras localDataExtras = new NemesisNotificationsService.DataExtras();
            localDataExtras.achievement = localPushNotification.achievement;
            Intent localIntent = a("com.nianticproject.ingress.ACTION_ACHIEVEMENT", localDataExtras);
            DisplayedAchievementTier localDisplayedAchievementTier = BadgeView.a(localPushNotification.achievement.c());
            int k = (int)l.a(48.0F);
            Object localObject = a(2130837570);
            try
            {
              Bitmap localBitmap = bg.a(v.a(localDisplayedAchievementTier.b(), k));
              localObject = localBitmap;
              af localaf1 = e().a(this.d.getString(2131296435)).b(localPushNotification.subject).a(2130837570).a((Bitmap)localObject).a(localPushNotification.eventTimestampMs).a(a(localIntent));
              int m = c;
              c = m + 1;
              localNotificationManager1.notify("NemesisNotificationManager.Notification", m, localaf1.c());
            }
            catch (Exception localException)
            {
              while (true)
                a.a(localException, "Exception while trying to get image for achievement unlocked notification.");
            }
          }
          break;
        }
      }
    if (j != 0)
      b(f(), true);
    if (i != 0)
      a(f(), true);
  }

  private void d()
  {
    long l = Math.min(a(this.e), a(this.f));
    if (l < 9223372036854775807L)
    {
      Intent localIntent = NemesisNotificationsService.b(this.d);
      PendingIntent localPendingIntent = PendingIntent.getService(this.d, 0, localIntent, 0);
      ((AlarmManager)this.d.getSystemService("alarm")).set(1, l, localPendingIntent);
    }
  }

  @SuppressLint({"InlinedApi"})
  private af e()
  {
    Uri localUri = d.b();
    int i = 4;
    if (c.v())
      i = 6;
    return new af(this.d).a(2130837579).a(localUri).b(i).a().b();
  }

  private NotificationManager f()
  {
    return (NotificationManager)this.d.getSystemService("notification");
  }

  public final void a()
  {
    this.e.clear();
    b(f(), false);
    d();
  }

  public final void a(List<PushNotification> paramList)
  {
    if (!this.g)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        PushNotification localPushNotification = (PushNotification)localIterator.next();
        if (b.contains(localPushNotification.type))
          localArrayList.add(localPushNotification);
      }
      paramList.clear();
      paramList.addAll(localArrayList);
    }
    if (paramList.size() > 0)
    {
      b(paramList);
      d();
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public final void b()
  {
    this.f.clear();
    a(f(), false);
    d();
  }

  public final void c()
  {
    long l = System.currentTimeMillis();
    if (a(this.e, l))
      b(f(), false);
    if (a(this.f, l))
      a(f(), false);
    d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.push.a
 * JD-Core Version:    0.6.2
 */