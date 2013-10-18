package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Constructor;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$StringCtorKeyDeserializer extends StdKeyDeserializer
{
  protected final Constructor<?> _ctor;

  public StdKeyDeserializer$StringCtorKeyDeserializer(Constructor<?> paramConstructor)
  {
    super(paramConstructor.getDeclaringClass());
    this._ctor = paramConstructor;
  }

  public final Object _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return this._ctor.newInstance(new Object[] { paramString });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.StringCtorKeyDeserializer
 * JD-Core Version:    0.6.2
 */