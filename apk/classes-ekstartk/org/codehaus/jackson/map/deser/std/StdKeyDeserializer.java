package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.io.NumberInput;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.KeyDeserializer;

public abstract class StdKeyDeserializer extends KeyDeserializer
{
  protected final Class<?> _keyClass;

  protected StdKeyDeserializer(Class<?> paramClass)
  {
    this._keyClass = paramClass;
  }

  protected abstract Object _parse(String paramString, DeserializationContext paramDeserializationContext);

  protected double _parseDouble(String paramString)
  {
    return NumberInput.parseDouble(paramString);
  }

  protected int _parseInt(String paramString)
  {
    return Integer.parseInt(paramString);
  }

  protected long _parseLong(String paramString)
  {
    return Long.parseLong(paramString);
  }

  public final Object deserializeKey(String paramString, DeserializationContext paramDeserializationContext)
  {
    Object localObject2;
    if (paramString == null)
      localObject2 = null;
    while (true)
    {
      return localObject2;
      try
      {
        Object localObject1 = _parse(paramString, paramDeserializationContext);
        localObject2 = localObject1;
        if (localObject2 != null)
          continue;
        throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "not a valid representation");
      }
      catch (Exception localException)
      {
        throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "not a valid representation: " + localException.getMessage());
      }
    }
  }

  public Class<?> getKeyClass()
  {
    return this._keyClass;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer
 * JD-Core Version:    0.6.2
 */