package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Method;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$StringFactoryKeyDeserializer extends StdKeyDeserializer
{
  final Method _factoryMethod;

  public StdKeyDeserializer$StringFactoryKeyDeserializer(Method paramMethod)
  {
    super(paramMethod.getDeclaringClass());
    this._factoryMethod = paramMethod;
  }

  public final Object _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return this._factoryMethod.invoke(null, new Object[] { paramString });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.StringFactoryKeyDeserializer
 * JD-Core Version:    0.6.2
 */