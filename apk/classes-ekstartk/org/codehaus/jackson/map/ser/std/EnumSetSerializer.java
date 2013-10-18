package org.codehaus.jackson.map.ser.std;

import java.util.EnumSet;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.type.JavaType;

public class EnumSetSerializer extends AsArraySerializerBase<EnumSet<? extends Enum<?>>>
{
  public EnumSetSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    super(EnumSet.class, paramJavaType, true, null, paramBeanProperty, null);
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }

  public void serializeContents(EnumSet<? extends Enum<?>> paramEnumSet, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    JsonSerializer localJsonSerializer1 = this._elementSerializer;
    Iterator localIterator = paramEnumSet.iterator();
    JsonSerializer localJsonSerializer2 = localJsonSerializer1;
    while (localIterator.hasNext())
    {
      Enum localEnum = (Enum)localIterator.next();
      if (localJsonSerializer2 == null)
        localJsonSerializer2 = paramSerializerProvider.findValueSerializer(localEnum.getDeclaringClass(), this._property);
      localJsonSerializer2.serialize(localEnum, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.EnumSetSerializer
 * JD-Core Version:    0.6.2
 */