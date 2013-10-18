package com.nianticproject.ingress;

import android.content.Context;
import android.os.Build;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Base64;
import com.nianticproject.ingress.common.f;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class aa
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(aa.class);
  private static boolean b = false;

  public static void a(Context paramContext)
  {
    boolean bool = b;
    String str1 = null;
    if (bool)
      str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    String str2;
    if (str1 != null)
      str2 = "1.";
    try
    {
      while (true)
      {
        String str3 = "nianticproject.ingress." + str2 + str1;
        MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
        byte[] arrayOfByte = str3.getBytes("utf8");
        localMessageDigest.update(arrayOfByte, 0, arrayOfByte.length);
        f.a(Base64.encodeToString(localMessageDigest.digest(), 0) + str2);
        return;
        if ((Build.SERIAL != null) && (!Build.SERIAL.isEmpty()))
        {
          str2 = "2.";
          str1 = Build.SERIAL;
        }
        else
        {
          str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
          if ((str1 == null) || (str1.equals("9774d56d682e549c")))
            break;
          str2 = "3.";
        }
      }
      a.c("Could not find unique DeviceID.");
      f.a(f.a + "NoUniqueIdFound");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      a.b(localNoSuchAlgorithmException, "NoSuchAlgorithmException SHA-1");
      f.a(f.a + "NoSuchAlgorithmException");
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      a.b(localUnsupportedEncodingException, "UnsupportedEncodingException utf8");
      f.a(f.a + "UnsupportedEncodingException");
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.aa
 * JD-Core Version:    0.6.2
 */