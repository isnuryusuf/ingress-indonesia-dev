package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.util.EnumResolver;

final class StdKeyDeserializer$EnumKD extends StdKeyDeserializer
{
  protected final EnumResolver<?> _resolver;

  protected StdKeyDeserializer$EnumKD(EnumResolver<?> paramEnumResolver)
  {
    super(paramEnumResolver.getEnumClass());
    this._resolver = paramEnumResolver;
  }

  public final Enum<?> _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    Enum localEnum = this._resolver.findEnum(paramString);
    if (localEnum == null)
      throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "not one of values for Enum class");
    return localEnum;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.EnumKD
 * JD-Core Version:    0.6.2
 */