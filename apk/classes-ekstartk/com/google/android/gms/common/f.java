package com.google.android.gms.common;

import [[B;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.d;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fu;
import com.google.android.gms.internal.u;

public final class f
{
  static boolean a = false;
  static boolean b = false;
  static boolean c = false;
  private static final byte[][] d;
  private static final byte[][] e;
  private static final byte[][] f;
  private static final byte[][] g;
  private static final byte[][] h;

  static
  {
    byte[][] arrayOfByte1 = new byte[2][];
    arrayOfByte1[0] = Base64.decode("MIIEQzCCAyugAwIBAgIJAMLgh0ZkSjCNMA0GCSqGSIb3DQEBBAUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAeFw0wODA4MjEyMzEzMzRaFw0zNjAxMDcyMzEzMzRaMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBAKtWLgDYO6IIrgqWbxJOKdoR8qtW0I9Y4sypEwPpt1TTcvZApxsdyxMJZ2JORland2qSGT2y5b+3JKkedxiLDmpHpDsz2WCbdxgxRczfey5YZnTJ4VZbH0xqWVW/8lGmPav5xVwnIiJS6HXk+BVKZF+JcWjAsb/GEuq/eFdpuzSqeYTcfi6idkyugwfYwXFU1+5fZKUaRKYCwkkFQVfcAs1fXA5V+++FGfvjJ/CxURaSxaBvGdGDhfXE28LWuT9ozCl5xw4Yq5OGazvV24mZVSoOO0yZ31j7kYvtwYK6NeADwbSxDdJEqO4k//0zOHKrUiGYXtqw/A0LFFtqoZKFjnkCAQOjgdkwgdYwHQYDVR0OBBYEFMd9jMIhF1Ylmn/Tgt9r45jk14alMIGmBgNVHSMEgZ4wgZuAFMd9jMIhF1Ylmn/Tgt9r45jk14aloXikdjB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEUMBIGA1UEChMLR29vZ2xlIEluYy4xEDAOBgNVBAsTB0FuZHJvaWQxEDAOBgNVBAMTB0FuZHJvaWSCCQDC4IdGZEowjTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBAUAA4IBAQBt0lLO74UwLDYKqs6Tm8/yzKkEu116FmH4rkaymUIE0P9KaMftGlMexFlaYjzmB2OxZyl6euNXEsQH8gjwyxCUKRJNexBiGcCEyj6z+a1fuHHvkiaai+KL8W1EyNmgjmyy8AW7P+LLlkR+ho5zEHatRbM/YAnqGcFh5iZBqpknHf1SKMXFh4dd239FJ1jWYfbMDMy3NS5CTMQ2XFI1MvcyUTdZPErjQfTbQe3aDQsQcafEQPD+nqActifKZ0Np0IS9L9kR/wbNvyz6ENwPiTrjV2KRkEjH78ZMcUQXg0L3BYHJ3lc69Vs5Ddf9uUGGMYldX3WfMBEmh/9iFBDAaTCK", 0);
    arrayOfByte1[1] = Base64.decode("MIIEqDCCA5CgAwIBAgIJANWFuGx90071MA0GCSqGSIb3DQEBBAUAMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTAeFw0wODA0MTUyMzM2NTZaFw0zNTA5MDEyMzM2NTZaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBANbOLggKv+IxTdGNs8/TGFy0PTP6DHThvbbR24kT9ixcOd9W+EaBPWW+wPPKQmsHxajtWjmQwWfna8mZuSeJS48LIgAZlKkpFeVyxW0qMBujb8X8ETrWy550NaFtI6t9+u7hZeTfHwqNvacKhp1RbE6dBRGWynwMVX8XW8N1+UjFaq6GCJukT4qmpN2afb8sCjUigq0GuMwYXrFVee74bQgLHWGJwPmvmLHC69EH6kWr22ijx4OKXlSIx2xT1AsSHee70w5iDBiK4aph27yH3TxkXy9V89TDdexAcKk/cVHYNnDBapcavl7y0RiQ4biu8ymM8Ga/nmzhRKya6G0cGw8CAQOjgfwwgfkwHQYDVR0OBBYEFI0cxb6VTEM8YYY6FbBMvAPyT+CyMIHJBgNVHSMEgcEwgb6AFI0cxb6VTEM8YYY6FbBMvAPyT+CyoYGapIGXMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbYIJANWFuGx90071MAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEEBQADggEBABnTDPEF+3iSP0wNfdIjIz1AlnrPzgAIHVvXxunW7SBrDhEglQZBbKJEk5kT0mtKoOD1JMrSu1xuTKEBahWRbqHsXclaXjoBADb0kkjVEJu/Lh5hgYZnOjvlba8Ld7HCKePCVePoTJBdI4fvugnL8TsgK05aIskyY0hKI9L8KfqfGTl1lzOv2KoWD0KWwtAWPoGChZxmQ+nBli+gwYMzM1vAkP+aayLe0a1EQimlOalO762r0GXO0ks+UeXde2Z4e+8S/pf7pITEI/tP+MxJTALw9QUWEv9lKTk+jkbqxbsh8nfBUapfKqYn0eidpwq2AzVp3juYl7//fKnaPhJD9gs=", 0);
    d = arrayOfByte1;
    byte[][] arrayOfByte2 = new byte[2][];
    arrayOfByte2[0] = Base64.decode("MIICUjCCAbsCBEk0mH4wDQYJKoZIhvcNAQEEBQAwcDELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUsIEluYzEUMBIGA1UECxMLR29vZ2xlLCBJbmMxEDAOBgNVBAMTB1Vua25vd24wHhcNMDgxMjAyMDIwNzU4WhcNMzYwNDE5MDIwNzU4WjBwMQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSwgSW5jMRQwEgYDVQQLEwtHb29nbGUsIEluYzEQMA4GA1UEAxMHVW5rbm93bjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAn0gDGZD5sUcmOE4EU9GPjAu/jcd7JQSksSB8TGxEurwArcZhD6a2qy2oDjPy7vFrJqP2uFua+sqQn/u+s/TJT36BIqeY4OunXO090in6c2X0FRZBWqnBYX3Vg84Zuuigu9iF/BeptL0mQIBRIarbk3fetAATOBQYiC7FIoL8WA0CAwEAATANBgkqhkiG9w0BAQQFAAOBgQBAhmae1jHaQ4Td0GHSJuBzuYzEuZ34teS+njy+l1Aeg98cb6lZwM5gXE/SrG0chM7eIEdsurGb6PIgOv93F61lLY/MiQcI0SFtqERXWSZJ4OnTxLtM9Y2hnbHU/EG8uVhPZOZfQQ0FKf1baIOMFB0Km9HbEZHLKg33kOoMsS2zpA==", 0);
    arrayOfByte2[1] = Base64.decode("MIIEqDCCA5CgAwIBAgIJAIR+T/LWtd6OMA0GCSqGSIb3DQEBBQUAMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTAeFw0xMDAxMjAwMTAxMzVaFw0zNzA2MDcwMTAxMzVaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBANgocXw20RcP1E0Kew8HESboW7/fM7A0YABalMz7ZaXboLJD32Cxkb+dBt8dilwKM+LRY/UT3x0iU0HqPDN5IuhcAuw0ztlMuAcjpiP/S6/7tOXv5nc7PqK+uLyyAmfP54VRH4Mu+YerdZT+HinPvE0IOh8SUgB3c5byFltpewCjoME6zDCKk/IhY8FunD1KshSfNkxFwEMUMnA58doJYJPxs/wYtlYQlcYiX8cQK5h8bxOkXSTj4MVOhZ1n41tnCCcT0tbwV900V9GfxP6N3eyMOk8/lyMFGacKKDY0rDWBo0q9oX2EWgoJhfv4BgsDaid4YIFj+gw3uefyoQ52vHcCAQOjgfwwgfkwHQYDVR0OBBYEFLXH+RJveA06+8plc3M/9SJrmxc3MIHJBgNVHSMEgcEwgb6AFLXH+RJveA06+8plc3M/9SJrmxc3oYGapIGXMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbYIJAIR+T/LWtd6OMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAEw+p2V9Jua71xEMjxnfH42hCX0zhg9p3r/K20ajfoflsw+7NHscdVW8uzyZVBSARpZfnHkqAtDb5aZHYbN5R6tr/7C6xqLBoM34Yvh3qWcN/W8GLkBuzhgGDGBJjfw2nycRcZjlb8uhUuYFjc6UzlkfxPSpmCszutgZbXdvVbfQGs8x3dcM7LeJeHYGZRD5SaVSSjExs8tlQc+LNUIOvMRSJVmWP0JmaQVyZmJPs5jP21IXiB0RHG4DRhb4USEY0KKmnRPXkvDNEdvVjiODWlSlSsJR59IsRGo/7hQSEOlER0tAYwe7JoQrT2vTVYIcc5ZR/6JgWwXiJJXXFdh6kfY=", 0);
    e = arrayOfByte2;
    byte[][] arrayOfByte3 = new byte[1][];
    arrayOfByte3[0] = Base64.decode("MIICpzCCAmWgAwIBAgIEUAV8QjALBgcqhkjOOAQDBQAwNzELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0FuZHJvaWQxFjAUBgNVBAMTDUFuZHJvaWQgRGVidWcwHhcNMTIwNzE3MTQ1MjUwWhcNMjIwNzE1MTQ1MjUwWjA3MQswCQYDVQQGEwJVUzEQMA4GA1UEChMHQW5kcm9pZDEWMBQGA1UEAxMNQW5kcm9pZCBEZWJ1ZzCCAbcwggEsBgcqhkjOOAQBMIIBHwKBgQD9f1OBHXUSKVLfSpwu7OTn9hG3UjzvRADDHj+AtlEmaUVdQCJR+1k9jVj6v8X1ujD2y5tVbNeBO4AdNG/yZmC3a5lQpaSfn+gEexAiwk+7qdf+t8Yb+DtX58aophUPBPuD9tPFHsMCNVQTWhaRMvZ1864rYdcq7/IiAxmd0UgBxwIVAJdgUI8VIwvMspK5gqLrhAvwWBz1AoGBAPfhoIXWmz3ey7yrXDa4V7l5lK+7+jrqgvlXTAs9B4JnUVlXjrrUWU/mcQcQgYC0SRZxI+hMKBYTt88JMozIpuE8FnqLVHyNKOCjrh4rs6Z1kW6jfwv6ITVi8ftiegEkO8yk8b6oUZCJqIPf4VrlnwaSi2ZegHtVJWQBTDv+z0kqA4GEAAKBgGrRG9fVZtJ69DnALkForP1FtL6FvJmMe5uOHHdUaT+MDUKKpPzhEISBOEJPpozRMFJO7/bxNzhjgi+mNymL/k1GoLhmZe7wQRc5AQNbHIBqoxgYDTA6qMyeWSPgam+r+nVoPEU7sgd3fPL958+xmxQwOBSqHfe0PVsiK1cGtIuUMAsGByqGSM44BAMFAAMvADAsAhQJ0tGwRwIptb7SkCZh0RLycMXmHQIUZ1ACBqeAULp4rscXTxYEf4Tqovc=", 0);
    f = arrayOfByte3;
    byte[][][] arrayOfByte = new byte[3][][];
    arrayOfByte[0] = d;
    arrayOfByte[1] = e;
    arrayOfByte[2] = f;
    int i = arrayOfByte.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      k += arrayOfByte[j].length;
      j++;
    }
    byte[][] arrayOfByte4 = new byte[k][];
    int m = arrayOfByte.length;
    int n = 0;
    int i2;
    for (int i1 = 0; n < m; i1 = i2)
    {
      [[B local[[B = arrayOfByte[n];
      i2 = i1;
      int i3 = 0;
      while (i3 < local[[B.length)
      {
        int i4 = i2 + 1;
        arrayOfByte4[i2] = local[[B[i3];
        i3++;
        i2 = i4;
      }
      n++;
    }
    g = arrayOfByte4;
    byte[][] arrayOfByte5 = new byte[1][];
    arrayOfByte5[0] = Base64.decode("MIICXzCCAcigAwIBAgIESxmxnTANBgkqhkiG9w0BAQUFADB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEVMBMGA1UEChMMR29vZ2xlLCBJbmMuMRAwDgYDVQQLEwdVbmtub3duMQ8wDQYDVQQDEwZCYXphYXIwHhcNMDkxMjA1MDEwNDI5WhcNMzcwNDIyMDEwNDI5WjB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEVMBMGA1UEChMMR29vZ2xlLCBJbmMuMRAwDgYDVQQLEwdVbmtub3duMQ8wDQYDVQQDEwZCYXphYXIwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKkIiN6W4zU0dwndSyUeeimoRzdrLly6W1vVBD6DiAECmBkUlBP6M6rlRDsDU0rOSq1vUJcSSdmOdqOafkzM4dcbp74+dWdNtfEHWphzcAFGSKfOcDwtx4g0iQWSEq+cbFsoq9VPg2QRyDGin1APKALRbObRhW+GcKr8omVBg3s5AgMBAAEwDQYJKoZIhvcNAQEFBQADgYEASYTG80FHASNiOidP6eE3PXUxzA386adq5n/7cFtATL0bwRaMqxi7EcN4lb+082zBTOwdLMVRag7O1AdOtWiCiVBkAK/43MjvVAQSAv3v8f2C4PMjEHL9zN5KNovgxsP5uLOqDWg8Or/amre7iDLpvl42GbqS3TrMA2qttaYZr1A=", 0);
    h = arrayOfByte5;
  }

  public static int a(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    byte[] arrayOfByte;
    try
    {
      PackageInfo localPackageInfo1 = localPackageManager.getPackageInfo("com.android.vending", 64);
      arrayOfByte = a(localPackageInfo1, d);
      if (arrayOfByte == null)
      {
        Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
        return 9;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
      return 1;
    }
    PackageInfo localPackageInfo2;
    try
    {
      localPackageInfo2 = localPackageManager.getPackageInfo("com.google.android.gms", 64);
      if (a(localPackageInfo2, new byte[][] { arrayOfByte }) == null)
      {
        Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
        return 9;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException2)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
      return 1;
    }
    if (localPackageInfo2.versionCode < 3136100)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires 3136100 but found " + localPackageInfo2.versionCode);
      return 2;
    }
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
      if (!localApplicationInfo.enabled)
        return 3;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException3)
    {
      Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
      localNameNotFoundException3.printStackTrace();
      return 1;
    }
    return 0;
  }

  public static Dialog a(int paramInt, Activity paramActivity)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity).setMessage(a(paramActivity, paramInt));
    fk localfk = new fk(paramActivity, a(paramInt));
    String str = b(paramActivity, paramInt);
    if (str != null)
      localBuilder.setPositiveButton(str, localfk);
    AlertDialog localAlertDialog = null;
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Unexpected errorCode " + paramInt);
    case 1:
      localAlertDialog = localBuilder.setTitle(d.g).create();
    case 0:
    case 4:
    case 6:
      return localAlertDialog;
    case 3:
      return localBuilder.setTitle(d.c).create();
    case 2:
      return localBuilder.setTitle(d.m).create();
    case 9:
      Log.e("GooglePlayServicesUtil", "Google Play services is invalid. Cannot recover.");
      return localBuilder.setTitle(d.j).create();
    case 7:
      Log.e("GooglePlayServicesUtil", "Network error occurred. Please retry request later.");
      return null;
    case 8:
      Log.e("GooglePlayServicesUtil", "Internal error occurred. Please see logs for detailed information");
      return null;
    case 10:
      Log.e("GooglePlayServicesUtil", "Developer error occurred. Please see logs for detailed information");
      return null;
    case 5:
      Log.e("GooglePlayServicesUtil", "An invalid account was specified when connecting. Please provide a valid account.");
      return null;
    case 11:
    }
    Log.e("GooglePlayServicesUtil", "The application is not licensed to the user.");
    return null;
  }

  public static Intent a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
    case 2:
      return fu.b("com.google.android.gms");
    case 3:
    }
    return fu.a("com.google.android.gms");
  }

  public static String a(Context paramContext, int paramInt)
  {
    Resources localResources1 = paramContext.getResources();
    String str = localResources1.getString(d.h);
    switch (paramInt)
    {
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    default:
      return str;
    case 1:
      Resources localResources2 = paramContext.getResources();
      int i;
      int j;
      if ((0xF & localResources2.getConfiguration().screenLayout) > 3)
      {
        i = 1;
        if ((!u.a()) || (i == 0))
        {
          Configuration localConfiguration = localResources2.getConfiguration();
          if (!u.b())
            break label176;
          if (((0xF & localConfiguration.screenLayout) > 3) || (localConfiguration.smallestScreenWidthDp < 600))
            break label170;
          j = 1;
        }
      }
      while (true)
      {
        int k = 0;
        if (j != 0)
          k = 1;
        if (k == 0)
          break label182;
        return localResources1.getString(d.f);
        i = 0;
        break;
        j = 0;
        continue;
        j = 0;
      }
      return localResources1.getString(d.e);
    case 3:
      return localResources1.getString(d.b);
    case 2:
      label170: label176: label182: return localResources1.getString(d.l);
    case 9:
    }
    return localResources1.getString(d.i);
  }

  // ERROR //
  private static byte[] a(PackageInfo paramPackageInfo, byte[][] paramArrayOfByte)
  {
    // Byte code:
    //   0: ldc 255
    //   2: invokestatic 261	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   5: astore 4
    //   7: aload_0
    //   8: getfield 265	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   11: arraylength
    //   12: iconst_1
    //   13: if_icmpeq +26 -> 39
    //   16: ldc 75
    //   18: ldc_w 267
    //   21: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   24: pop
    //   25: aconst_null
    //   26: areturn
    //   27: astore_2
    //   28: ldc 75
    //   30: ldc_w 269
    //   33: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   36: pop
    //   37: aconst_null
    //   38: areturn
    //   39: new 271	java/io/ByteArrayInputStream
    //   42: dup
    //   43: aload_0
    //   44: getfield 265	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   47: iconst_0
    //   48: aaload
    //   49: invokevirtual 277	android/content/pm/Signature:toByteArray	()[B
    //   52: invokespecial 280	java/io/ByteArrayInputStream:<init>	([B)V
    //   55: astore 5
    //   57: aload 4
    //   59: aload 5
    //   61: invokevirtual 284	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   64: checkcast 286	java/security/cert/X509Certificate
    //   67: astore 8
    //   69: aload 8
    //   71: invokevirtual 289	java/security/cert/X509Certificate:checkValidity	()V
    //   74: aload_0
    //   75: getfield 265	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   78: iconst_0
    //   79: aaload
    //   80: invokevirtual 277	android/content/pm/Signature:toByteArray	()[B
    //   83: astore 13
    //   85: iconst_0
    //   86: istore 14
    //   88: iload 14
    //   90: aload_1
    //   91: arraylength
    //   92: if_icmpge +67 -> 159
    //   95: aload_1
    //   96: iload 14
    //   98: aaload
    //   99: astore 16
    //   101: aload 16
    //   103: aload 13
    //   105: invokestatic 295	java/util/Arrays:equals	([B[B)Z
    //   108: ifeq +45 -> 153
    //   111: aload 16
    //   113: areturn
    //   114: astore 6
    //   116: ldc 75
    //   118: ldc_w 297
    //   121: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: aconst_null
    //   126: areturn
    //   127: astore 11
    //   129: ldc 75
    //   131: ldc_w 299
    //   134: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   137: pop
    //   138: aconst_null
    //   139: areturn
    //   140: astore 9
    //   142: ldc 75
    //   144: ldc_w 301
    //   147: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   150: pop
    //   151: aconst_null
    //   152: areturn
    //   153: iinc 14 1
    //   156: goto -68 -> 88
    //   159: ldc 75
    //   161: iconst_2
    //   162: invokestatic 305	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   165: ifeq +26 -> 191
    //   168: new 100	java/lang/StringBuilder
    //   171: dup
    //   172: ldc_w 307
    //   175: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: aload 13
    //   180: iconst_0
    //   181: invokestatic 311	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   184: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: pop
    //   191: aconst_null
    //   192: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	27	java/security/cert/CertificateException
    //   57	69	114	java/security/cert/CertificateException
    //   69	74	127	java/security/cert/CertificateExpiredException
    //   69	74	140	java/security/cert/CertificateNotYetValidException
  }

  public static Context b(Context paramContext)
  {
    try
    {
      Context localContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  public static String b(Context paramContext, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    switch (paramInt)
    {
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    default:
      return null;
    case 1:
      return localResources.getString(d.d);
    case 3:
      return localResources.getString(d.a);
    case 2:
      return localResources.getString(d.k);
    case 9:
    }
    return localResources.getString(17039370);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.f
 * JD-Core Version:    0.6.2
 */