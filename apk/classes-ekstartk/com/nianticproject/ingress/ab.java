package com.nianticproject.ingress;

import android.content.Context;
import android.os.Build;
import android.provider.Settings.Secure;
import com.nianticproject.ingress.shared.handshake.DeviceInfo;
import java.io.File;

public final class ab
{
  public static DeviceInfo a()
  {
    NemesisApplication localNemesisApplication = NemesisApplication.a();
    return new ac((byte)0).a(Boolean.valueOf(b())).a(Settings.Secure.getString(localNemesisApplication.getContentResolver(), "android_id")).b(Build.BOARD).c(Build.BOOTLOADER).d(Build.BRAND).e(Build.DEVICE).f(Build.DISPLAY).g(Build.HARDWARE).h(Build.MANUFACTURER).i(Build.MODEL).j(Build.PRODUCT).k(Build.TAGS).l(Build.TYPE).m(Build.FINGERPRINT).a();
  }

  private static boolean b()
  {
    String str = Build.TAGS;
    if ((str != null) && (str.contains("test-keys")));
    while (true)
    {
      return true;
      try
      {
        boolean bool = new File("/system/app/Superuser.apk").exists();
        if (bool)
          continue;
        label36: return false;
      }
      catch (Throwable localThrowable)
      {
        break label36;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ab
 * JD-Core Version:    0.6.2
 */