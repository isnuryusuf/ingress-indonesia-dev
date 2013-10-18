package org.codehaus.jackson.map.util;

import java.lang.reflect.Array;

final class Comparators$1
{
  Comparators$1(Object paramObject, int paramInt)
  {
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1;
    if (paramObject == this)
      bool1 = true;
    int i;
    int j;
    do
    {
      Class localClass1;
      Class localClass2;
      do
      {
        do
        {
          return bool1;
          bool1 = false;
        }
        while (paramObject == null);
        localClass1 = paramObject.getClass();
        localClass2 = this.val$defaultValue.getClass();
        bool1 = false;
      }
      while (localClass1 != localClass2);
      i = Array.getLength(paramObject);
      j = this.val$length;
      bool1 = false;
    }
    while (i != j);
    for (int k = 0; ; k++)
    {
      if (k >= this.val$length)
        break label123;
      Object localObject1 = Array.get(this.val$defaultValue, k);
      Object localObject2 = Array.get(paramObject, k);
      if ((localObject1 != localObject2) && (localObject1 != null))
      {
        boolean bool2 = localObject1.equals(localObject2);
        bool1 = false;
        if (!bool2)
          break;
      }
    }
    label123: return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.Comparators.1
 * JD-Core Version:    0.6.2
 */