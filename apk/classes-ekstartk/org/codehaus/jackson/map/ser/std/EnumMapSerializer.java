package org.codehaus.jackson.map.ser.std;

import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.EnumValues;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class EnumMapSerializer extends ContainerSerializerBase<EnumMap<? extends Enum<?>, ?>>
  implements ResolvableSerializer
{
  protected final EnumValues _keyEnums;
  protected final BeanProperty _property;
  protected final boolean _staticTyping;
  protected JsonSerializer<Object> _valueSerializer;
  protected final JavaType _valueType;
  protected final TypeSerializer _valueTypeSerializer;

  @Deprecated
  public EnumMapSerializer(JavaType paramJavaType, boolean paramBoolean, EnumValues paramEnumValues, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    this(paramJavaType, paramBoolean, paramEnumValues, paramTypeSerializer, paramBeanProperty, null);
  }

  public EnumMapSerializer(JavaType paramJavaType, boolean paramBoolean, EnumValues paramEnumValues, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super(EnumMap.class, false);
    boolean bool1;
    if (!paramBoolean)
    {
      bool1 = false;
      if (paramJavaType != null)
      {
        boolean bool2 = paramJavaType.isFinal();
        bool1 = false;
        if (!bool2);
      }
    }
    else
    {
      bool1 = true;
    }
    this._staticTyping = bool1;
    this._valueType = paramJavaType;
    this._keyEnums = paramEnumValues;
    this._valueTypeSerializer = paramTypeSerializer;
    this._property = paramBeanProperty;
    this._valueSerializer = paramJsonSerializer;
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new EnumMapSerializer(this._valueType, this._staticTyping, this._keyEnums, paramTypeSerializer, this._property);
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    if ((this._staticTyping) && (this._valueSerializer == null))
      this._valueSerializer = paramSerializerProvider.findValueSerializer(this._valueType, this._property);
  }

  public void serialize(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    if (!paramEnumMap.isEmpty())
      serializeContents(paramEnumMap, paramJsonGenerator, paramSerializerProvider);
    paramJsonGenerator.writeEndObject();
  }

  protected void serializeContents(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._valueSerializer != null)
      serializeContentsUsing(paramEnumMap, paramJsonGenerator, paramSerializerProvider, this._valueSerializer);
    while (true)
    {
      return;
      EnumValues localEnumValues1 = this._keyEnums;
      Iterator localIterator = paramEnumMap.entrySet().iterator();
      EnumValues localEnumValues2 = localEnumValues1;
      Object localObject1 = null;
      Object localObject2 = null;
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Enum localEnum = (Enum)localEntry.getKey();
        if (localEnumValues2 == null)
          localEnumValues2 = ((EnumSerializer)paramSerializerProvider.findValueSerializer(localEnum.getDeclaringClass(), this._property)).getEnumValues();
        paramJsonGenerator.writeFieldName(localEnumValues2.serializedValueFor(localEnum));
        Object localObject3 = localEntry.getValue();
        if (localObject3 == null)
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        }
        else
        {
          Object localObject4 = localObject3.getClass();
          Object localObject5;
          if (localObject4 == localObject1)
          {
            localObject4 = localObject1;
            localObject5 = localObject2;
          }
          try
          {
            while (true)
            {
              ((JsonSerializer)localObject2).serialize(localObject3, paramJsonGenerator, paramSerializerProvider);
              localObject2 = localObject5;
              localObject1 = localObject4;
              break;
              localObject2 = paramSerializerProvider.findValueSerializer((Class)localObject4, this._property);
              localObject5 = localObject2;
            }
          }
          catch (Exception localException)
          {
            wrapAndThrow(paramSerializerProvider, localException, paramEnumMap, ((Enum)localEntry.getKey()).name());
            localObject2 = localObject5;
            localObject1 = localObject4;
          }
        }
      }
    }
  }

  protected void serializeContentsUsing(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    EnumValues localEnumValues1 = this._keyEnums;
    Iterator localIterator = paramEnumMap.entrySet().iterator();
    EnumValues localEnumValues2 = localEnumValues1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Enum localEnum = (Enum)localEntry.getKey();
      if (localEnumValues2 == null)
        localEnumValues2 = ((EnumSerializer)paramSerializerProvider.findValueSerializer(localEnum.getDeclaringClass(), this._property)).getEnumValues();
      paramJsonGenerator.writeFieldName(localEnumValues2.serializedValueFor(localEnum));
      Object localObject = localEntry.getValue();
      if (localObject == null)
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      else
        try
        {
          paramJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramEnumMap, ((Enum)localEntry.getKey()).name());
        }
    }
  }

  public void serializeWithType(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(paramEnumMap, paramJsonGenerator);
    if (!paramEnumMap.isEmpty())
      serializeContents(paramEnumMap, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForObject(paramEnumMap, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.EnumMapSerializer
 * JD-Core Version:    0.6.2
 */