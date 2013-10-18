package org.codehaus.jackson.map.deser.std;

import java.util.HashMap;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class PrimitiveArrayDeserializers
{
  static final PrimitiveArrayDeserializers instance = new PrimitiveArrayDeserializers();
  HashMap<JavaType, JsonDeserializer<Object>> _allDeserializers = new HashMap();

  protected PrimitiveArrayDeserializers()
  {
    add(Boolean.TYPE, new PrimitiveArrayDeserializers.BooleanDeser());
    add(Byte.TYPE, new PrimitiveArrayDeserializers.ByteDeser());
    add(Short.TYPE, new PrimitiveArrayDeserializers.ShortDeser());
    add(Integer.TYPE, new PrimitiveArrayDeserializers.IntDeser());
    add(Long.TYPE, new PrimitiveArrayDeserializers.LongDeser());
    add(Float.TYPE, new PrimitiveArrayDeserializers.FloatDeser());
    add(Double.TYPE, new PrimitiveArrayDeserializers.DoubleDeser());
    add(String.class, new PrimitiveArrayDeserializers.StringDeser());
    add(Character.TYPE, new PrimitiveArrayDeserializers.CharDeser());
  }

  private void add(Class<?> paramClass, JsonDeserializer<?> paramJsonDeserializer)
  {
    this._allDeserializers.put(TypeFactory.defaultInstance().constructType(paramClass), paramJsonDeserializer);
  }

  public static HashMap<JavaType, JsonDeserializer<Object>> getAll()
  {
    return instance._allDeserializers;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers
 * JD-Core Version:    0.6.2
 */