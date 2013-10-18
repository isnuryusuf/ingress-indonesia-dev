package com.google.a.b;

import com.google.a.i.a.w;
import java.util.concurrent.ExecutionException;

final class am<K, V> extends an<K, V>
  implements n<K, V>
{
  am(e<? super K, ? super V> parame, k<? super K, V> paramk)
  {
    super(new o(parame, (k)com.google.a.a.an.a(paramk)), (byte)0);
  }

  private V e(K paramK)
  {
    try
    {
      Object localObject = d(paramK);
      return localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new w(localExecutionException.getCause());
    }
  }

  public final V a(K paramK)
  {
    return e(paramK);
  }

  public final V d(K paramK)
  {
    return this.a.b(paramK);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.am
 * JD-Core Version:    0.6.2
 */