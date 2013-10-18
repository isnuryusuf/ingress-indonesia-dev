package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import java.io.InputStream;
import java.net.URI;

public abstract class x
{
  protected final URI a;
  protected final a b;

  public x(URI paramURI, a parama)
  {
    this.a = paramURI;
    this.b = ((a)an.a(parama));
  }

  private <R, E> RpcResult<R, E> a(ab<R, E> paramab, InputStream paramInputStream)
  {
    ag localag = new ag(paramInputStream);
    try
    {
      RpcResult localRpcResult = paramab.a(localag);
      return localRpcResult;
    }
    catch (y localy)
    {
      throw a(paramab, localy, localag.a());
    }
    catch (Exception localException)
    {
      throw a(paramab, new y(localException), localag.a());
    }
  }

  protected y a(ab<?, ?> paramab, y paramy, String paramString)
  {
    return paramy;
  }

  protected <R, E> InputStream a(ab<R, E> paramab)
  {
    try
    {
      InputStream localInputStream = a(paramab.a(this.a), this.b, paramab.b());
      return localInputStream;
    }
    catch (y localy)
    {
      throw a(paramab, localy, null);
    }
  }

  protected abstract InputStream a(URI paramURI, a parama, String paramString);

  protected abstract void a(GameBasket paramGameBasket);

  // ERROR //
  public final <R, E> RpcResult<R, E> b(ab<R, E> paramab)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 63	com/nianticproject/ingress/shared/rpc/x:a	(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/io/InputStream;
    //   5: astore_2
    //   6: aload_0
    //   7: aload_1
    //   8: aload_2
    //   9: invokespecial 65	com/nianticproject/ingress/shared/rpc/x:a	(Lcom/nianticproject/ingress/shared/rpc/ab;Ljava/io/InputStream;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    //   12: astore 5
    //   14: aload 5
    //   16: invokevirtual 71	com/nianticproject/ingress/shared/rpc/RpcResult:d	()Lcom/nianticproject/ingress/shared/rpc/GameBasket;
    //   19: astore 6
    //   21: aload 6
    //   23: ifnull +9 -> 32
    //   26: aload_0
    //   27: aload 6
    //   29: invokevirtual 73	com/nianticproject/ingress/shared/rpc/x:a	(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    //   32: aload 5
    //   34: invokevirtual 77	com/nianticproject/ingress/shared/rpc/RpcResult:f	()Z
    //   37: ifeq +40 -> 77
    //   40: aload_0
    //   41: aload_1
    //   42: new 79	com/nianticproject/ingress/shared/rpc/ae
    //   45: dup
    //   46: aload 5
    //   48: invokevirtual 82	com/nianticproject/ingress/shared/rpc/RpcResult:c	()Ljava/lang/String;
    //   51: invokespecial 85	com/nianticproject/ingress/shared/rpc/ae:<init>	(Ljava/lang/String;)V
    //   54: aconst_null
    //   55: invokevirtual 45	com/nianticproject/ingress/shared/rpc/x:a	(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;
    //   58: athrow
    //   59: astore_3
    //   60: aload_2
    //   61: invokevirtual 90	java/io/InputStream:close	()V
    //   64: aload_3
    //   65: athrow
    //   66: astore 8
    //   68: aload_0
    //   69: aload_1
    //   70: aload 8
    //   72: aconst_null
    //   73: invokevirtual 45	com/nianticproject/ingress/shared/rpc/x:a	(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;
    //   76: athrow
    //   77: aload_2
    //   78: invokevirtual 90	java/io/InputStream:close	()V
    //   81: aload 5
    //   83: areturn
    //   84: astore 7
    //   86: aload 5
    //   88: areturn
    //   89: astore 4
    //   91: goto -27 -> 64
    //
    // Exception table:
    //   from	to	target	type
    //   6	21	59	finally
    //   26	32	59	finally
    //   32	59	59	finally
    //   68	77	59	finally
    //   26	32	66	com/nianticproject/ingress/shared/rpc/y
    //   77	81	84	java/io/IOException
    //   60	64	89	java/io/IOException
  }

  public final <R> R c(ab<R, Void> paramab)
  {
    RpcResult localRpcResult = b(paramab);
    if (localRpcResult.e())
      return localRpcResult.a();
    throw a(paramab, new aa("Received error: " + localRpcResult.b() + ", but sendOrThrow does not allow errors. Use send."), null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.x
 * JD-Core Version:    0.6.2
 */