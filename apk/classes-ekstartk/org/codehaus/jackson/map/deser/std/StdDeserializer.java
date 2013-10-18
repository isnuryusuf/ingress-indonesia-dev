package org.codehaus.jackson.map.deser.std;

import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.io.NumberInput;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;

public abstract class StdDeserializer<T> extends JsonDeserializer<T>
{
  protected final Class<?> _valueClass;

  protected StdDeserializer(Class<?> paramClass)
  {
    this._valueClass = paramClass;
  }

  protected StdDeserializer(JavaType paramJavaType)
  {
    if (paramJavaType == null);
    for (Class localClass = null; ; localClass = paramJavaType.getRawClass())
    {
      this._valueClass = localClass;
      return;
    }
  }

  protected static final double parseDouble(String paramString)
  {
    if ("2.2250738585072012e-308".equals(paramString))
      return 2.225073858507201E-308D;
    return Double.parseDouble(paramString);
  }

  protected final Boolean _parseBoolean(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_TRUE)
      return Boolean.TRUE;
    if (localJsonToken == JsonToken.VALUE_FALSE)
      return Boolean.FALSE;
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramJsonParser.getIntValue() == 0)
        return Boolean.FALSE;
      return Boolean.TRUE;
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Boolean)getNullValue();
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      if ("true".equals(str))
        return Boolean.TRUE;
      if ("false".equals(str))
        return Boolean.FALSE;
      if (str.length() == 0)
        return (Boolean)getEmptyValue();
      throw paramDeserializationContext.weirdStringException(this._valueClass, "only \"true\" or \"false\" recognized");
    }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final boolean _parseBooleanPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_TRUE);
    String str;
    do
    {
      do
      {
        return true;
        if (localJsonToken == JsonToken.VALUE_FALSE)
          return false;
        if (localJsonToken == JsonToken.VALUE_NULL)
          return false;
        if (localJsonToken != JsonToken.VALUE_NUMBER_INT)
          break;
      }
      while (paramJsonParser.getIntValue() != 0);
      return false;
      if (localJsonToken != JsonToken.VALUE_STRING)
        break;
      str = paramJsonParser.getText().trim();
    }
    while ("true".equals(str));
    if (("false".equals(str)) || (str.length() == 0))
      return Boolean.FALSE.booleanValue();
    throw paramDeserializationContext.weirdStringException(this._valueClass, "only \"true\" or \"false\" recognized");
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected Byte _parseByte(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return Byte.valueOf(paramJsonParser.getByteValue());
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      int i;
      try
      {
        if (str.length() == 0)
          return (Byte)getEmptyValue();
        i = NumberInput.parseInt(str);
        if ((i < -128) || (i > 127))
          throw paramDeserializationContext.weirdStringException(this._valueClass, "overflow, value can not be represented as 8-bit value");
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid Byte value");
      }
      return Byte.valueOf((byte)i);
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Byte)getNullValue();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected Date _parseDate(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
      return new Date(paramJsonParser.getLongValue());
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Date)getNullValue();
    if (localJsonToken == JsonToken.VALUE_STRING)
      try
      {
        String str = paramJsonParser.getText().trim();
        if (str.length() == 0)
          return (Date)getEmptyValue();
        Date localDate = paramDeserializationContext.parseDate(str);
        return localDate;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid representation (error: " + localIllegalArgumentException.getMessage() + ")");
      }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final Double _parseDouble(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return Double.valueOf(paramJsonParser.getDoubleValue());
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      if (str.length() == 0)
        return (Double)getEmptyValue();
      switch (str.charAt(0))
      {
      default:
      case 'I':
      case 'N':
      case '-':
      }
      try
      {
        do
        {
          do
          {
            do
            {
              Double localDouble = Double.valueOf(parseDouble(str));
              return localDouble;
            }
            while ((!"Infinity".equals(str)) && (!"INF".equals(str)));
            return Double.valueOf((1.0D / 0.0D));
          }
          while (!"NaN".equals(str));
          return Double.valueOf((0.0D / 0.0D));
        }
        while ((!"-Infinity".equals(str)) && (!"-INF".equals(str)));
        return Double.valueOf((-1.0D / 0.0D));
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid Double value");
      }
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Double)getNullValue();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final double _parseDoublePrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    double d1 = 0.0D;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      d1 = paramJsonParser.getDoubleValue();
    do
    {
      String str;
      do
      {
        return d1;
        if (localJsonToken != JsonToken.VALUE_STRING)
          break;
        str = paramJsonParser.getText().trim();
      }
      while (str.length() == 0);
      switch (str.charAt(0))
      {
      default:
      case 'I':
      case 'N':
      case '-':
      }
      try
      {
        do
        {
          do
          {
            do
            {
              double d2 = parseDouble(str);
              return d2;
            }
            while ((!"Infinity".equals(str)) && (!"INF".equals(str)));
            return (1.0D / 0.0D);
          }
          while (!"NaN".equals(str));
          return (0.0D / 0.0D);
        }
        while ((!"-Infinity".equals(str)) && (!"-INF".equals(str)));
        return (-1.0D / 0.0D);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid double value");
      }
    }
    while (localJsonToken == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final Float _parseFloat(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return Float.valueOf(paramJsonParser.getFloatValue());
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      if (str.length() == 0)
        return (Float)getEmptyValue();
      switch (str.charAt(0))
      {
      default:
      case 'I':
      case 'N':
      case '-':
      }
      try
      {
        do
        {
          do
          {
            do
            {
              Float localFloat = Float.valueOf(Float.parseFloat(str));
              return localFloat;
            }
            while ((!"Infinity".equals(str)) && (!"INF".equals(str)));
            return Float.valueOf((1.0F / 1.0F));
          }
          while (!"NaN".equals(str));
          return Float.valueOf((0.0F / 0.0F));
        }
        while ((!"-Infinity".equals(str)) && (!"-INF".equals(str)));
        return Float.valueOf((1.0F / -1.0F));
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid Float value");
      }
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Float)getNullValue();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final float _parseFloatPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    float f1;
    if ((localJsonToken1 == JsonToken.VALUE_NUMBER_INT) || (localJsonToken1 == JsonToken.VALUE_NUMBER_FLOAT))
      f1 = paramJsonParser.getFloatValue();
    JsonToken localJsonToken2;
    do
    {
      String str;
      int i;
      do
      {
        return f1;
        if (localJsonToken1 != JsonToken.VALUE_STRING)
          break;
        str = paramJsonParser.getText().trim();
        i = str.length();
        f1 = 0.0F;
      }
      while (i == 0);
      switch (str.charAt(0))
      {
      default:
      case 'I':
      case 'N':
      case '-':
      }
      try
      {
        do
        {
          do
          {
            do
            {
              float f2 = Float.parseFloat(str);
              return f2;
            }
            while ((!"Infinity".equals(str)) && (!"INF".equals(str)));
            return (1.0F / 1.0F);
          }
          while (!"NaN".equals(str));
          return (0.0F / 0.0F);
        }
        while ((!"-Infinity".equals(str)) && (!"-INF".equals(str)));
        return (1.0F / -1.0F);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid float value");
      }
      localJsonToken2 = JsonToken.VALUE_NULL;
      f1 = 0.0F;
    }
    while (localJsonToken1 == localJsonToken2);
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken1);
  }

  protected final int _parseIntPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    int i;
    if ((localJsonToken1 == JsonToken.VALUE_NUMBER_INT) || (localJsonToken1 == JsonToken.VALUE_NUMBER_FLOAT))
      i = paramJsonParser.getIntValue();
    label131: JsonToken localJsonToken2;
    do
    {
      String str;
      int j;
      do
      {
        return i;
        if (localJsonToken1 != JsonToken.VALUE_STRING)
          break;
        str = paramJsonParser.getText().trim();
        long l;
        try
        {
          j = str.length();
          if (j <= 9)
            break label131;
          l = Long.parseLong(str);
          if ((l < -2147483648L) || (l > 2147483647L))
            throw paramDeserializationContext.weirdStringException(this._valueClass, "Overflow: numeric value (" + str + ") out of range of int (-2147483648 - 2147483647)");
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid int value");
        }
        return (int)l;
        i = 0;
      }
      while (j == 0);
      int k = NumberInput.parseInt(str);
      return k;
      localJsonToken2 = JsonToken.VALUE_NULL;
      i = 0;
    }
    while (localJsonToken1 == localJsonToken2);
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken1);
  }

  protected final Integer _parseInteger(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return Integer.valueOf(paramJsonParser.getIntValue());
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      int i;
      long l;
      try
      {
        i = str.length();
        if (i <= 9)
          break label139;
        l = Long.parseLong(str);
        if ((l < -2147483648L) || (l > 2147483647L))
          throw paramDeserializationContext.weirdStringException(this._valueClass, "Overflow: numeric value (" + str + ") out of range of Integer (-2147483648 - 2147483647)");
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid Integer value");
      }
      int j = (int)l;
      return Integer.valueOf(j);
      label139: if (i == 0)
        return (Integer)getEmptyValue();
      Integer localInteger = Integer.valueOf(NumberInput.parseInt(str));
      return localInteger;
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Integer)getNullValue();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final Long _parseLong(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return Long.valueOf(paramJsonParser.getLongValue());
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      if (str.length() == 0)
        return (Long)getEmptyValue();
      try
      {
        Long localLong = Long.valueOf(NumberInput.parseLong(str));
        return localLong;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid Long value");
      }
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Long)getNullValue();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final long _parseLongPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    long l1 = 0L;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      l1 = paramJsonParser.getLongValue();
    do
    {
      String str;
      do
      {
        return l1;
        if (localJsonToken != JsonToken.VALUE_STRING)
          break;
        str = paramJsonParser.getText().trim();
      }
      while (str.length() == 0);
      try
      {
        long l2 = NumberInput.parseLong(str);
        return l2;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid long value");
      }
    }
    while (localJsonToken == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected Short _parseShort(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return Short.valueOf(paramJsonParser.getShortValue());
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      int i;
      try
      {
        if (str.length() == 0)
          return (Short)getEmptyValue();
        i = NumberInput.parseInt(str);
        if ((i < -32768) || (i > 32767))
          throw paramDeserializationContext.weirdStringException(this._valueClass, "overflow, value can not be represented as 16-bit value");
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid Short value");
      }
      return Short.valueOf((short)i);
    }
    if (localJsonToken == JsonToken.VALUE_NULL)
      return (Short)getNullValue();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  protected final short _parseShortPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    int i = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
    if ((i < -32768) || (i > 32767))
      throw paramDeserializationContext.weirdStringException(this._valueClass, "overflow, value can not be represented as 16-bit value");
    return (short)i;
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }

  protected JsonDeserializer<Object> findDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    return paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, paramJavaType, paramBeanProperty);
  }

  public Class<?> getValueClass()
  {
    return this._valueClass;
  }

  protected void handleUnknownProperty(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
  {
    if (paramObject == null)
      paramObject = getValueClass();
    if (paramDeserializationContext.handleUnknownProperty(paramJsonParser, this, paramObject, paramString))
      return;
    reportUnknownProperty(paramDeserializationContext, paramObject, paramString);
    paramJsonParser.skipChildren();
  }

  protected boolean isDefaultSerializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    return (paramJsonDeserializer != null) && (paramJsonDeserializer.getClass().getAnnotation(JacksonStdImpl.class) != null);
  }

  protected void reportUnknownProperty(DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
  {
    if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES))
      throw paramDeserializationContext.unknownFieldException(paramObject, paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer
 * JD-Core Version:    0.6.2
 */