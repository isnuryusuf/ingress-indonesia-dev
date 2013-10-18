package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.util.EnumValues;

@JacksonStdImpl
public class EnumSerializer extends ScalarSerializerBase<Enum<?>>
{
  protected final EnumValues _values;

  public EnumSerializer(EnumValues paramEnumValues)
  {
    super(Enum.class, false);
    this._values = paramEnumValues;
  }

  public static EnumSerializer construct(Class<Enum<?>> paramClass, SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    if (paramSerializationConfig.isEnabled(SerializationConfig.Feature.WRITE_ENUMS_USING_TO_STRING));
    for (EnumValues localEnumValues = EnumValues.constructFromToString(paramClass, localAnnotationIntrospector); ; localEnumValues = EnumValues.constructFromName(paramClass, localAnnotationIntrospector))
      return new EnumSerializer(localEnumValues);
  }

  public EnumValues getEnumValues()
  {
    return this._values;
  }

  public final void serialize(Enum<?> paramEnum, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_ENUMS_USING_INDEX))
    {
      paramJsonGenerator.writeNumber(paramEnum.ordinal());
      return;
    }
    paramJsonGenerator.writeString(this._values.serializedValueFor(paramEnum));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.EnumSerializer
 * JD-Core Version:    0.6.2
 */