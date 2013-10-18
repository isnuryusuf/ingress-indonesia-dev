package org.codehaus.jackson.map.ser.std;

import java.util.Calendar;
import java.util.Date;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.type.JavaType;

public class StdKeySerializers
{
  protected static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
  protected static final JsonSerializer<Object> DEFAULT_STRING_SERIALIZER = new StdKeySerializers.StringKeySerializer();

  public static JsonSerializer<Object> getStdKeySerializer(JavaType paramJavaType)
  {
    if (paramJavaType == null)
      return DEFAULT_KEY_SERIALIZER;
    Class localClass = paramJavaType.getRawClass();
    if (localClass == String.class)
      return DEFAULT_STRING_SERIALIZER;
    if (localClass == Object.class)
      return DEFAULT_KEY_SERIALIZER;
    if (Date.class.isAssignableFrom(localClass))
      return StdKeySerializers.DateKeySerializer.instance;
    if (Calendar.class.isAssignableFrom(localClass))
      return StdKeySerializers.CalendarKeySerializer.instance;
    return DEFAULT_KEY_SERIALIZER;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers
 * JD-Core Version:    0.6.2
 */