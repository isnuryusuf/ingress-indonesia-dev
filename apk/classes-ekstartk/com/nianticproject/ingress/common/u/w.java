package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.handshake.ServerHandshake;
import com.nianticproject.ingress.shared.handshake.a;
import com.nianticproject.ingress.shared.handshake.b;
import com.nianticproject.ingress.shared.rpc.ab;
import java.net.URI;

public class w extends ab<ServerHandshake, Void>
{
  private static final aa a = new aa(w.class);
  private static final b b = new x();
  private final a c;
  private String d;

  // ERROR //
  w(String paramString1, String paramString2, String paramString3, boolean paramBoolean, com.nianticproject.ingress.shared.handshake.DeviceInfo paramDeviceInfo, com.nianticproject.ingress.shared.a.b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 34
    //   3: ldc 36
    //   5: invokestatic 41	com/nianticproject/ingress/common/u/aa:a	(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;
    //   8: ldc 43
    //   10: ldc 43
    //   12: invokespecial 46	com/nianticproject/ingress/shared/rpc/ab:<init>	(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;)V
    //   15: aload 5
    //   17: ifnull +146 -> 163
    //   20: aload_0
    //   21: new 48	com/nianticproject/ingress/shared/handshake/a
    //   24: dup
    //   25: aload 5
    //   27: aload 6
    //   29: invokeinterface 53 1 0
    //   34: getstatic 29	com/nianticproject/ingress/common/u/w:b	Lcom/nianticproject/ingress/shared/handshake/b;
    //   37: invokespecial 56	com/nianticproject/ingress/shared/handshake/a:<init>	(Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/a;Lcom/nianticproject/ingress/shared/handshake/b;)V
    //   40: putfield 58	com/nianticproject/ingress/common/u/w:c	Lcom/nianticproject/ingress/shared/handshake/a;
    //   43: new 60	com/google/a/c/di
    //   46: dup
    //   47: invokespecial 61	com/google/a/c/di:<init>	()V
    //   50: astore 7
    //   52: aload 7
    //   54: ldc 63
    //   56: aload_1
    //   57: invokevirtual 66	com/google/a/c/di:a	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;
    //   60: pop
    //   61: aload 7
    //   63: ldc 68
    //   65: aload_2
    //   66: invokevirtual 66	com/google/a/c/di:a	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;
    //   69: pop
    //   70: aload_3
    //   71: ifnull +12 -> 83
    //   74: aload 7
    //   76: ldc 70
    //   78: aload_3
    //   79: invokevirtual 66	com/google/a/c/di:a	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;
    //   82: pop
    //   83: iload 4
    //   85: ifeq +13 -> 98
    //   88: aload 7
    //   90: ldc 72
    //   92: ldc 74
    //   94: invokevirtual 66	com/google/a/c/di:a	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;
    //   97: pop
    //   98: aload 5
    //   100: ifnull +15 -> 115
    //   103: aload 7
    //   105: ldc 75
    //   107: aload_0
    //   108: invokespecial 78	com/nianticproject/ingress/common/u/w:d	()Ljava/lang/String;
    //   111: invokevirtual 66	com/google/a/c/di:a	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;
    //   114: pop
    //   115: ldc 80
    //   117: invokestatic 85	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   120: getstatic 90	com/nianticproject/ingress/common/o/c:a	Lorg/codehaus/jackson/map/ObjectMapper;
    //   123: aload 7
    //   125: invokevirtual 93	com/google/a/c/di:a	()Lcom/google/a/c/dh;
    //   128: invokevirtual 99	org/codehaus/jackson/map/ObjectMapper:writeValueAsString	(Ljava/lang/Object;)Ljava/lang/String;
    //   131: astore 12
    //   133: invokestatic 101	com/nianticproject/ingress/shared/aj:b	()V
    //   136: ldc 103
    //   138: ldc 105
    //   140: aload 12
    //   142: invokevirtual 110	java/lang/String:length	()I
    //   145: invokestatic 113	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   148: aload_0
    //   149: aload 12
    //   151: ldc 115
    //   153: invokestatic 121	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   156: putfield 123	com/nianticproject/ingress/common/u/w:d	Ljava/lang/String;
    //   159: invokestatic 101	com/nianticproject/ingress/shared/aj:b	()V
    //   162: return
    //   163: aload_0
    //   164: aconst_null
    //   165: putfield 58	com/nianticproject/ingress/common/u/w:c	Lcom/nianticproject/ingress/shared/handshake/a;
    //   168: goto -125 -> 43
    //   171: astore 11
    //   173: new 125	java/lang/RuntimeException
    //   176: dup
    //   177: aload 11
    //   179: invokespecial 128	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   182: athrow
    //   183: astore 10
    //   185: invokestatic 101	com/nianticproject/ingress/shared/aj:b	()V
    //   188: aload 10
    //   190: athrow
    //   191: astore 14
    //   193: new 125	java/lang/RuntimeException
    //   196: dup
    //   197: aload 14
    //   199: invokespecial 128	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   202: athrow
    //   203: astore 13
    //   205: invokestatic 101	com/nianticproject/ingress/shared/aj:b	()V
    //   208: aload 13
    //   210: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   115	133	171	java/io/IOException
    //   115	133	183	finally
    //   173	183	183	finally
    //   136	159	191	java/io/IOException
    //   136	159	203	finally
    //   193	203	203	finally
  }

  private String d()
  {
    try
    {
      aj.a("HandshakeRpcRequest.encryptAndEncode");
      a locala = this.c;
      if (locala != null)
        try
        {
          String str = new String(this.c.a(), "UTF-8");
          return str;
        }
        catch (Exception localException)
        {
          throw new RuntimeException(localException);
        }
    }
    finally
    {
      aj.b();
    }
    aj.b();
    return "";
  }

  public final URI a(URI paramURI)
  {
    try
    {
      aj.a("HandshakeRpcRequest.buildRequest");
      URI localURI = URI.create(paramURI.toString() + "?json=" + this.d);
      return localURI;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.w
 * JD-Core Version:    0.6.2
 */