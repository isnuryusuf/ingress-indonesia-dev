package org.codehaus.jackson.map.ser.std;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class MapSerializer extends ContainerSerializerBase<Map<?, ?>>
  implements ResolvableSerializer
{
  protected static final JavaType UNSPECIFIED_TYPE = TypeFactory.unknownType();
  protected PropertySerializerMap _dynamicValueSerializers;
  protected final HashSet<String> _ignoredEntries;
  protected JsonSerializer<Object> _keySerializer;
  protected final JavaType _keyType;
  protected final BeanProperty _property;
  protected JsonSerializer<Object> _valueSerializer;
  protected final JavaType _valueType;
  protected final boolean _valueTypeIsStatic;
  protected final TypeSerializer _valueTypeSerializer;

  protected MapSerializer()
  {
    this(null, null, null, false, null, null, null, null);
  }

  protected MapSerializer(HashSet<String> paramHashSet, JavaType paramJavaType1, JavaType paramJavaType2, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer1, JsonSerializer<Object> paramJsonSerializer2, BeanProperty paramBeanProperty)
  {
    super(Map.class, false);
    this._property = paramBeanProperty;
    this._ignoredEntries = paramHashSet;
    this._keyType = paramJavaType1;
    this._valueType = paramJavaType2;
    this._valueTypeIsStatic = paramBoolean;
    this._valueTypeSerializer = paramTypeSerializer;
    this._keySerializer = paramJsonSerializer1;
    this._valueSerializer = paramJsonSerializer2;
    this._dynamicValueSerializers = PropertySerializerMap.emptyMap();
  }

  public static MapSerializer construct(String[] paramArrayOfString, JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, JsonSerializer<Object> paramJsonSerializer2)
  {
    HashSet localHashSet = toSet(paramArrayOfString);
    JavaType localJavaType2;
    JavaType localJavaType1;
    boolean bool2;
    if (paramJavaType == null)
    {
      localJavaType2 = UNSPECIFIED_TYPE;
      localJavaType1 = localJavaType2;
      if (paramBoolean)
        break label87;
      if ((localJavaType2 == null) || (!localJavaType2.isFinal()))
        break label81;
      bool2 = true;
    }
    label39: label81: label87: for (boolean bool1 = bool2; ; bool1 = paramBoolean)
    {
      return new MapSerializer(localHashSet, localJavaType1, localJavaType2, bool1, paramTypeSerializer, paramJsonSerializer1, paramJsonSerializer2, paramBeanProperty);
      localJavaType1 = paramJavaType.getKeyType();
      localJavaType2 = paramJavaType.getContentType();
      break;
      bool2 = false;
      break label39;
    }
  }

  private static HashSet<String> toSet(String[] paramArrayOfString)
  {
    Object localObject;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new HashSet(paramArrayOfString.length);
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
        ((HashSet)localObject).add(paramArrayOfString[j]);
    }
  }

  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramClass, paramSerializerProvider, this._property);
    if (paramPropertySerializerMap != localSerializerAndMapResult.map)
      this._dynamicValueSerializers = localSerializerAndMapResult.map;
    return localSerializerAndMapResult.serializer;
  }

  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, JavaType paramJavaType, SerializerProvider paramSerializerProvider)
  {
    PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramJavaType, paramSerializerProvider, this._property);
    if (paramPropertySerializerMap != localSerializerAndMapResult.map)
      this._dynamicValueSerializers = localSerializerAndMapResult.map;
    return localSerializerAndMapResult.serializer;
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    MapSerializer localMapSerializer = new MapSerializer(this._ignoredEntries, this._keyType, this._valueType, this._valueTypeIsStatic, paramTypeSerializer, this._keySerializer, this._valueSerializer, this._property);
    if (this._valueSerializer != null)
      localMapSerializer._valueSerializer = this._valueSerializer;
    return localMapSerializer;
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    if ((this._valueTypeIsStatic) && (this._valueSerializer == null))
      this._valueSerializer = paramSerializerProvider.findValueSerializer(this._valueType, this._property);
    if (this._keySerializer == null)
      this._keySerializer = paramSerializerProvider.findKeySerializer(this._keyType, this._property);
  }

  public void serialize(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    if (!paramMap.isEmpty())
    {
      if (this._valueSerializer == null)
        break label36;
      serializeFieldsUsing(paramMap, paramJsonGenerator, paramSerializerProvider, this._valueSerializer);
    }
    while (true)
    {
      paramJsonGenerator.writeEndObject();
      return;
      label36: serializeFields(paramMap, paramJsonGenerator, paramSerializerProvider);
    }
  }

  public void serializeFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._valueTypeSerializer != null)
    {
      serializeTypedFields(paramMap, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    JsonSerializer localJsonSerializer1 = this._keySerializer;
    HashSet localHashSet = this._ignoredEntries;
    int i;
    Object localObject1;
    label63: Object localObject2;
    Object localObject3;
    if (!paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_NULL_MAP_VALUES))
    {
      i = 1;
      PropertySerializerMap localPropertySerializerMap1 = this._dynamicValueSerializers;
      Iterator localIterator = paramMap.entrySet().iterator();
      localObject1 = localPropertySerializerMap1;
      if (!localIterator.hasNext())
        break label302;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localObject2 = localEntry.getValue();
      localObject3 = localEntry.getKey();
      if (localObject3 != null)
        break label137;
      paramSerializerProvider.getNullKeySerializer().serialize(null, paramJsonGenerator, paramSerializerProvider);
    }
    while (true)
    {
      if (localObject2 != null)
        break label174;
      paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      break label63;
      i = 0;
      break;
      label137: if (((i != 0) && (localObject2 == null)) || ((localHashSet != null) && (localHashSet.contains(localObject3))))
        break label63;
      localJsonSerializer1.serialize(localObject3, paramJsonGenerator, paramSerializerProvider);
    }
    label174: Class localClass = localObject2.getClass();
    JsonSerializer localJsonSerializer2 = ((PropertySerializerMap)localObject1).serializerFor(localClass);
    JsonSerializer localJsonSerializer4;
    JsonSerializer localJsonSerializer5;
    Object localObject4;
    if (localJsonSerializer2 == null)
      if (this._valueType.hasGenericTypes())
      {
        localJsonSerializer4 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(this._valueType, localClass), paramSerializerProvider);
        PropertySerializerMap localPropertySerializerMap2 = this._dynamicValueSerializers;
        localJsonSerializer5 = localJsonSerializer4;
        localObject4 = localPropertySerializerMap2;
      }
    for (JsonSerializer localJsonSerializer3 = localJsonSerializer5; ; localJsonSerializer3 = localJsonSerializer2)
    {
      try
      {
        localJsonSerializer3.serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
        localObject1 = localObject4;
        break label63;
        localJsonSerializer4 = _findAndAddDynamic((PropertySerializerMap)localObject1, localClass, paramSerializerProvider);
      }
      catch (Exception localException)
      {
        wrapAndThrow(paramSerializerProvider, localException, paramMap, localObject3);
        localObject1 = localObject4;
      }
      break label63;
      label302: break;
      localObject4 = localObject1;
    }
  }

  protected void serializeFieldsUsing(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    JsonSerializer localJsonSerializer = this._keySerializer;
    HashSet localHashSet = this._ignoredEntries;
    TypeSerializer localTypeSerializer = this._valueTypeSerializer;
    int i;
    Iterator localIterator;
    if (!paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_NULL_MAP_VALUES))
    {
      i = 1;
      localIterator = paramMap.entrySet().iterator();
    }
    while (true)
    {
      label44: if (!localIterator.hasNext())
        return;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject1 = localEntry.getValue();
      Object localObject2 = localEntry.getKey();
      if (localObject2 == null)
        paramSerializerProvider.getNullKeySerializer().serialize(null, paramJsonGenerator, paramSerializerProvider);
      while (true)
      {
        if (localObject1 != null)
          break label155;
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        break label44;
        i = 0;
        break;
        if (((i != 0) && (localObject1 == null)) || ((localHashSet != null) && (localHashSet.contains(localObject2))))
          break label44;
        localJsonSerializer.serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
      }
      label155: if (localTypeSerializer == null)
        try
        {
          paramJsonSerializer.serialize(localObject1, paramJsonGenerator, paramSerializerProvider);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramMap, localObject2);
        }
      else
        paramJsonSerializer.serializeWithType(localObject1, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
    }
  }

  protected void serializeTypedFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    JsonSerializer localJsonSerializer = this._keySerializer;
    HashSet localHashSet = this._ignoredEntries;
    int i;
    Iterator localIterator;
    Object localObject1;
    Object localObject2;
    if (!paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_NULL_MAP_VALUES))
    {
      i = 1;
      localIterator = paramMap.entrySet().iterator();
      localObject1 = null;
      localObject2 = null;
    }
    while (true)
    {
      label44: if (!localIterator.hasNext())
        return;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject3 = localEntry.getValue();
      Object localObject4 = localEntry.getKey();
      if (localObject4 == null)
        paramSerializerProvider.getNullKeySerializer().serialize(null, paramJsonGenerator, paramSerializerProvider);
      while (true)
      {
        if (localObject3 != null)
          break label155;
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        break label44;
        i = 0;
        break;
        if (((i != 0) && (localObject3 == null)) || ((localHashSet != null) && (localHashSet.contains(localObject4))))
          break label44;
        localJsonSerializer.serialize(localObject4, paramJsonGenerator, paramSerializerProvider);
      }
      label155: Object localObject5 = localObject3.getClass();
      Object localObject6;
      if (localObject5 == localObject1)
      {
        localObject5 = localObject1;
        localObject6 = localObject2;
      }
      try
      {
        while (true)
        {
          ((JsonSerializer)localObject2).serializeWithType(localObject3, paramJsonGenerator, paramSerializerProvider, this._valueTypeSerializer);
          localObject2 = localObject6;
          localObject1 = localObject5;
          break;
          localObject2 = paramSerializerProvider.findValueSerializer((Class)localObject5, this._property);
          localObject6 = localObject2;
        }
      }
      catch (Exception localException)
      {
        wrapAndThrow(paramSerializerProvider, localException, paramMap, localObject4);
        localObject2 = localObject6;
        localObject1 = localObject5;
      }
    }
  }

  public void serializeWithType(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(paramMap, paramJsonGenerator);
    if (!paramMap.isEmpty())
    {
      if (this._valueSerializer == null)
        break label42;
      serializeFieldsUsing(paramMap, paramJsonGenerator, paramSerializerProvider, this._valueSerializer);
    }
    while (true)
    {
      paramTypeSerializer.writeTypeSuffixForObject(paramMap, paramJsonGenerator);
      return;
      label42: serializeFields(paramMap, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.MapSerializer
 * JD-Core Version:    0.6.2
 */