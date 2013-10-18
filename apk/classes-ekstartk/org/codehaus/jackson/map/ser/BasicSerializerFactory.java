package org.codehaus.jackson.map.ser;

import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.RandomAccess;
import java.util.TimeZone;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.ContextualSerializer;
import org.codehaus.jackson.map.JsonSerializable;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.JsonSerializer.None;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerFactory;
import org.codehaus.jackson.map.Serializers;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JsonSerialize.Typing;
import org.codehaus.jackson.map.ext.OptionalHandlerFactory;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.ser.std.CalendarSerializer;
import org.codehaus.jackson.map.ser.std.DateSerializer;
import org.codehaus.jackson.map.ser.std.EnumMapSerializer;
import org.codehaus.jackson.map.ser.std.EnumSerializer;
import org.codehaus.jackson.map.ser.std.IndexedStringListSerializer;
import org.codehaus.jackson.map.ser.std.InetAddressSerializer;
import org.codehaus.jackson.map.ser.std.JsonValueSerializer;
import org.codehaus.jackson.map.ser.std.MapSerializer;
import org.codehaus.jackson.map.ser.std.ObjectArraySerializer;
import org.codehaus.jackson.map.ser.std.SerializableSerializer;
import org.codehaus.jackson.map.ser.std.SerializableWithTypeSerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.BooleanArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.ByteArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.CharArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.DoubleArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.FloatArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.IntArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.LongArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.ShortArraySerializer;
import org.codehaus.jackson.map.ser.std.StdArraySerializers.StringArraySerializer;
import org.codehaus.jackson.map.ser.std.StdContainerSerializers;
import org.codehaus.jackson.map.ser.std.StdJdkSerializers;
import org.codehaus.jackson.map.ser.std.StringCollectionSerializer;
import org.codehaus.jackson.map.ser.std.StringSerializer;
import org.codehaus.jackson.map.ser.std.TimeZoneSerializer;
import org.codehaus.jackson.map.ser.std.ToStringSerializer;
import org.codehaus.jackson.map.ser.std.TokenBufferSerializer;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.EnumValues;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.TokenBuffer;

public abstract class BasicSerializerFactory extends SerializerFactory
{
  protected static final HashMap<String, JsonSerializer<?>> _arraySerializers;
  protected static final HashMap<String, JsonSerializer<?>> _concrete = new HashMap();
  protected static final HashMap<String, Class<? extends JsonSerializer<?>>> _concreteLazy = new HashMap();
  protected OptionalHandlerFactory optionalHandlers = OptionalHandlerFactory.instance;

  static
  {
    _concrete.put(String.class.getName(), new StringSerializer());
    ToStringSerializer localToStringSerializer = ToStringSerializer.instance;
    _concrete.put(StringBuffer.class.getName(), localToStringSerializer);
    _concrete.put(StringBuilder.class.getName(), localToStringSerializer);
    _concrete.put(Character.class.getName(), localToStringSerializer);
    _concrete.put(Character.TYPE.getName(), localToStringSerializer);
    _concrete.put(Boolean.TYPE.getName(), new StdSerializers.BooleanSerializer(true));
    _concrete.put(Boolean.class.getName(), new StdSerializers.BooleanSerializer(false));
    StdSerializers.IntegerSerializer localIntegerSerializer = new StdSerializers.IntegerSerializer();
    _concrete.put(Integer.class.getName(), localIntegerSerializer);
    _concrete.put(Integer.TYPE.getName(), localIntegerSerializer);
    _concrete.put(Long.class.getName(), StdSerializers.LongSerializer.instance);
    _concrete.put(Long.TYPE.getName(), StdSerializers.LongSerializer.instance);
    _concrete.put(Byte.class.getName(), StdSerializers.IntLikeSerializer.instance);
    _concrete.put(Byte.TYPE.getName(), StdSerializers.IntLikeSerializer.instance);
    _concrete.put(Short.class.getName(), StdSerializers.IntLikeSerializer.instance);
    _concrete.put(Short.TYPE.getName(), StdSerializers.IntLikeSerializer.instance);
    _concrete.put(Float.class.getName(), StdSerializers.FloatSerializer.instance);
    _concrete.put(Float.TYPE.getName(), StdSerializers.FloatSerializer.instance);
    _concrete.put(Double.class.getName(), StdSerializers.DoubleSerializer.instance);
    _concrete.put(Double.TYPE.getName(), StdSerializers.DoubleSerializer.instance);
    StdSerializers.NumberSerializer localNumberSerializer = new StdSerializers.NumberSerializer();
    _concrete.put(BigInteger.class.getName(), localNumberSerializer);
    _concrete.put(BigDecimal.class.getName(), localNumberSerializer);
    _concrete.put(Calendar.class.getName(), CalendarSerializer.instance);
    DateSerializer localDateSerializer = DateSerializer.instance;
    _concrete.put(java.util.Date.class.getName(), localDateSerializer);
    _concrete.put(Timestamp.class.getName(), localDateSerializer);
    _concrete.put(java.sql.Date.class.getName(), new StdSerializers.SqlDateSerializer());
    _concrete.put(Time.class.getName(), new StdSerializers.SqlTimeSerializer());
    Iterator localIterator = new StdJdkSerializers().provide().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = localEntry.getValue();
      if ((localObject instanceof JsonSerializer))
      {
        _concrete.put(((Class)localEntry.getKey()).getName(), (JsonSerializer)localObject);
      }
      else if ((localObject instanceof Class))
      {
        Class localClass = (Class)localObject;
        _concreteLazy.put(((Class)localEntry.getKey()).getName(), localClass);
      }
      else
      {
        throw new IllegalStateException("Internal error: unrecognized value of type " + localEntry.getClass().getName());
      }
    }
    _concreteLazy.put(TokenBuffer.class.getName(), TokenBufferSerializer.class);
    HashMap localHashMap = new HashMap();
    _arraySerializers = localHashMap;
    localHashMap.put([Z.class.getName(), new StdArraySerializers.BooleanArraySerializer());
    _arraySerializers.put([B.class.getName(), new StdArraySerializers.ByteArraySerializer());
    _arraySerializers.put([C.class.getName(), new StdArraySerializers.CharArraySerializer());
    _arraySerializers.put([S.class.getName(), new StdArraySerializers.ShortArraySerializer());
    _arraySerializers.put([I.class.getName(), new StdArraySerializers.IntArraySerializer());
    _arraySerializers.put([J.class.getName(), new StdArraySerializers.LongArraySerializer());
    _arraySerializers.put([F.class.getName(), new StdArraySerializers.FloatArraySerializer());
    _arraySerializers.put([D.class.getName(), new StdArraySerializers.DoubleArraySerializer());
  }

  protected static JsonSerializer<Object> findContentSerializer(SerializationConfig paramSerializationConfig, Annotated paramAnnotated, BeanProperty paramBeanProperty)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    Class localClass = localAnnotationIntrospector.findContentSerializer(paramAnnotated);
    if (((localClass == null) || (localClass == JsonSerializer.None.class)) && (paramBeanProperty != null))
      localClass = localAnnotationIntrospector.findContentSerializer(paramBeanProperty.getMember());
    if ((localClass != null) && (localClass != JsonSerializer.None.class))
      return paramSerializationConfig.serializerInstance(paramAnnotated, localClass);
    return null;
  }

  protected static JsonSerializer<Object> findKeySerializer(SerializationConfig paramSerializationConfig, Annotated paramAnnotated, BeanProperty paramBeanProperty)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    Class localClass = localAnnotationIntrospector.findKeySerializer(paramAnnotated);
    if (((localClass == null) || (localClass == JsonSerializer.None.class)) && (paramBeanProperty != null))
      localClass = localAnnotationIntrospector.findKeySerializer(paramBeanProperty.getMember());
    if ((localClass != null) && (localClass != JsonSerializer.None.class))
      return paramSerializationConfig.serializerInstance(paramAnnotated, localClass);
    return null;
  }

  // ERROR //
  protected static <T extends JavaType> T modifySecondaryTypesByAnnotation(SerializationConfig paramSerializationConfig, Annotated paramAnnotated, T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 251	org/codehaus/jackson/map/SerializationConfig:getAnnotationIntrospector	()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    //   4: astore_3
    //   5: aload_2
    //   6: invokevirtual 280	org/codehaus/jackson/type/JavaType:isContainerType	()Z
    //   9: ifeq +98 -> 107
    //   12: aload_3
    //   13: aload_1
    //   14: aload_2
    //   15: invokevirtual 284	org/codehaus/jackson/type/JavaType:getKeyType	()Lorg/codehaus/jackson/type/JavaType;
    //   18: invokevirtual 288	org/codehaus/jackson/map/AnnotationIntrospector:findSerializationKeyType	(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    //   21: astore 4
    //   23: aload 4
    //   25: ifnull +55 -> 80
    //   28: aload_2
    //   29: instanceof 290
    //   32: ifne +34 -> 66
    //   35: new 275	java/lang/IllegalArgumentException
    //   38: dup
    //   39: new 48	java/lang/StringBuilder
    //   42: dup
    //   43: ldc_w 292
    //   46: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   49: aload_2
    //   50: invokevirtual 295	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   53: ldc_w 297
    //   56: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokespecial 298	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   65: athrow
    //   66: aload_2
    //   67: checkcast 290	org/codehaus/jackson/map/type/MapType
    //   70: aload 4
    //   72: invokevirtual 302	org/codehaus/jackson/map/type/MapType:widenKey	(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    //   75: astore 9
    //   77: aload 9
    //   79: astore_2
    //   80: aload_3
    //   81: aload_1
    //   82: aload_2
    //   83: invokevirtual 305	org/codehaus/jackson/type/JavaType:getContentType	()Lorg/codehaus/jackson/type/JavaType;
    //   86: invokevirtual 308	org/codehaus/jackson/map/AnnotationIntrospector:findSerializationContentType	(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    //   89: astore 5
    //   91: aload 5
    //   93: ifnull +14 -> 107
    //   96: aload_2
    //   97: aload 5
    //   99: invokevirtual 311	org/codehaus/jackson/type/JavaType:widenContentsBy	(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    //   102: astore 7
    //   104: aload 7
    //   106: astore_2
    //   107: aload_2
    //   108: areturn
    //   109: astore 8
    //   111: new 275	java/lang/IllegalArgumentException
    //   114: dup
    //   115: new 48	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 313
    //   122: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload_2
    //   126: invokevirtual 295	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   129: ldc_w 315
    //   132: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload 4
    //   137: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   140: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: ldc_w 317
    //   146: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: aload 8
    //   151: invokevirtual 320	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   154: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: invokespecial 298	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   163: athrow
    //   164: astore 6
    //   166: new 275	java/lang/IllegalArgumentException
    //   169: dup
    //   170: new 48	java/lang/StringBuilder
    //   173: dup
    //   174: ldc_w 322
    //   177: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_2
    //   181: invokevirtual 295	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   184: ldc_w 324
    //   187: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: aload 5
    //   192: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   195: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: ldc_w 317
    //   201: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload 6
    //   206: invokevirtual 320	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   209: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokespecial 298	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   218: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   66	77	109	java/lang/IllegalArgumentException
    //   96	104	164	java/lang/IllegalArgumentException
  }

  protected JsonSerializer<?> buildArraySerializer(SerializationConfig paramSerializationConfig, ArrayType paramArrayType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    Class localClass = paramArrayType.getRawClass();
    Object localObject;
    if ([Ljava.lang.String.class == localClass)
      localObject = new StdArraySerializers.StringArraySerializer(paramBeanProperty);
    do
    {
      return localObject;
      localObject = (JsonSerializer)_arraySerializers.get(localClass.getName());
    }
    while (localObject != null);
    return new ObjectArraySerializer(paramArrayType.getContentType(), paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  protected JsonSerializer<?> buildCollectionLikeSerializer(SerializationConfig paramSerializationConfig, CollectionLikeType paramCollectionLikeType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    Iterator localIterator = customSerializers().iterator();
    while (localIterator.hasNext())
    {
      JsonSerializer localJsonSerializer = ((Serializers)localIterator.next()).findCollectionLikeSerializer(paramSerializationConfig, paramCollectionLikeType, paramBasicBeanDescription, paramBeanProperty, paramTypeSerializer, paramJsonSerializer);
      if (localJsonSerializer != null)
        return localJsonSerializer;
    }
    return null;
  }

  protected JsonSerializer<?> buildCollectionSerializer(SerializationConfig paramSerializationConfig, CollectionType paramCollectionType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    Iterator localIterator = customSerializers().iterator();
    while (localIterator.hasNext())
    {
      JsonSerializer localJsonSerializer = ((Serializers)localIterator.next()).findCollectionSerializer(paramSerializationConfig, paramCollectionType, paramBasicBeanDescription, paramBeanProperty, paramTypeSerializer, paramJsonSerializer);
      if (localJsonSerializer != null)
        return localJsonSerializer;
    }
    Class localClass1 = paramCollectionType.getRawClass();
    if (EnumSet.class.isAssignableFrom(localClass1))
      return buildEnumSetSerializer(paramSerializationConfig, paramCollectionType, paramBasicBeanDescription, paramBeanProperty, paramBoolean, paramTypeSerializer, paramJsonSerializer);
    Class localClass2 = paramCollectionType.getContentType().getRawClass();
    if (isIndexedList(localClass1))
    {
      if (localClass2 == String.class)
        return new IndexedStringListSerializer(paramBeanProperty);
      return StdContainerSerializers.indexedListSerializer(paramCollectionType.getContentType(), paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
    }
    if (localClass2 == String.class)
      return new StringCollectionSerializer(paramBeanProperty);
    return StdContainerSerializers.collectionSerializer(paramCollectionType.getContentType(), paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  public JsonSerializer<?> buildContainerSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean)
  {
    TypeSerializer localTypeSerializer = createTypeSerializer(paramSerializationConfig, paramJavaType.getContentType(), paramBeanProperty);
    boolean bool;
    if (localTypeSerializer != null)
      bool = false;
    while (true)
    {
      JsonSerializer localJsonSerializer1 = findContentSerializer(paramSerializationConfig, paramBasicBeanDescription.getClassInfo(), paramBeanProperty);
      if (paramJavaType.isMapLikeType())
      {
        MapLikeType localMapLikeType = (MapLikeType)paramJavaType;
        JsonSerializer localJsonSerializer2 = findKeySerializer(paramSerializationConfig, paramBasicBeanDescription.getClassInfo(), paramBeanProperty);
        if (localMapLikeType.isTrueMapType())
        {
          return buildMapSerializer(paramSerializationConfig, (MapType)localMapLikeType, paramBasicBeanDescription, paramBeanProperty, bool, localJsonSerializer2, localTypeSerializer, localJsonSerializer1);
          if (!paramBoolean)
            bool = usesStaticTyping(paramSerializationConfig, paramBasicBeanDescription, localTypeSerializer, paramBeanProperty);
        }
        else
        {
          return buildMapLikeSerializer(paramSerializationConfig, localMapLikeType, paramBasicBeanDescription, paramBeanProperty, bool, localJsonSerializer2, localTypeSerializer, localJsonSerializer1);
        }
      }
      else
      {
        if (paramJavaType.isCollectionLikeType())
        {
          CollectionLikeType localCollectionLikeType = (CollectionLikeType)paramJavaType;
          if (localCollectionLikeType.isTrueCollectionType())
            return buildCollectionSerializer(paramSerializationConfig, (CollectionType)localCollectionLikeType, paramBasicBeanDescription, paramBeanProperty, bool, localTypeSerializer, localJsonSerializer1);
          return buildCollectionLikeSerializer(paramSerializationConfig, localCollectionLikeType, paramBasicBeanDescription, paramBeanProperty, bool, localTypeSerializer, localJsonSerializer1);
        }
        if (paramJavaType.isArrayType())
          return buildArraySerializer(paramSerializationConfig, (ArrayType)paramJavaType, paramBasicBeanDescription, paramBeanProperty, bool, localTypeSerializer, localJsonSerializer1);
        return null;
        bool = paramBoolean;
      }
    }
  }

  protected JsonSerializer<?> buildEnumMapSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    JavaType localJavaType = paramJavaType.getKeyType();
    boolean bool = localJavaType.isEnumType();
    EnumValues localEnumValues = null;
    if (bool)
      localEnumValues = EnumValues.construct(localJavaType.getRawClass(), paramSerializationConfig.getAnnotationIntrospector());
    return new EnumMapSerializer(paramJavaType.getContentType(), paramBoolean, localEnumValues, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  protected JsonSerializer<?> buildEnumSetSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    JavaType localJavaType = paramJavaType.getContentType();
    if (!localJavaType.isEnumType())
      localJavaType = null;
    return StdContainerSerializers.enumSetSerializer(localJavaType, paramBeanProperty);
  }

  protected JsonSerializer<?> buildIterableSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean)
  {
    JavaType localJavaType = paramJavaType.containedType(0);
    if (localJavaType == null)
      localJavaType = TypeFactory.unknownType();
    TypeSerializer localTypeSerializer = createTypeSerializer(paramSerializationConfig, localJavaType, paramBeanProperty);
    return StdContainerSerializers.iterableSerializer(localJavaType, usesStaticTyping(paramSerializationConfig, paramBasicBeanDescription, localTypeSerializer, paramBeanProperty), localTypeSerializer, paramBeanProperty);
  }

  protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean)
  {
    JavaType localJavaType = paramJavaType.containedType(0);
    if (localJavaType == null)
      localJavaType = TypeFactory.unknownType();
    TypeSerializer localTypeSerializer = createTypeSerializer(paramSerializationConfig, localJavaType, paramBeanProperty);
    return StdContainerSerializers.iteratorSerializer(localJavaType, usesStaticTyping(paramSerializationConfig, paramBasicBeanDescription, localTypeSerializer, paramBeanProperty), localTypeSerializer, paramBeanProperty);
  }

  protected JsonSerializer<?> buildMapLikeSerializer(SerializationConfig paramSerializationConfig, MapLikeType paramMapLikeType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2)
  {
    Iterator localIterator = customSerializers().iterator();
    while (localIterator.hasNext())
    {
      JsonSerializer localJsonSerializer = ((Serializers)localIterator.next()).findMapLikeSerializer(paramSerializationConfig, paramMapLikeType, paramBasicBeanDescription, paramBeanProperty, paramJsonSerializer1, paramTypeSerializer, paramJsonSerializer2);
      if (localJsonSerializer != null)
        return localJsonSerializer;
    }
    return null;
  }

  protected JsonSerializer<?> buildMapSerializer(SerializationConfig paramSerializationConfig, MapType paramMapType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2)
  {
    Iterator localIterator = customSerializers().iterator();
    while (localIterator.hasNext())
    {
      JsonSerializer localJsonSerializer = ((Serializers)localIterator.next()).findMapSerializer(paramSerializationConfig, paramMapType, paramBasicBeanDescription, paramBeanProperty, paramJsonSerializer1, paramTypeSerializer, paramJsonSerializer2);
      if (localJsonSerializer != null)
        return localJsonSerializer;
    }
    if (EnumMap.class.isAssignableFrom(paramMapType.getRawClass()))
      return buildEnumMapSerializer(paramSerializationConfig, paramMapType, paramBasicBeanDescription, paramBeanProperty, paramBoolean, paramTypeSerializer, paramJsonSerializer2);
    return MapSerializer.construct(paramSerializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(paramBasicBeanDescription.getClassInfo()), paramMapType, paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer1, paramJsonSerializer2);
  }

  public TypeSerializer createTypeSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    AnnotatedClass localAnnotatedClass = ((BasicBeanDescription)paramSerializationConfig.introspectClassAnnotations(paramJavaType.getRawClass())).getClassInfo();
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder = localAnnotationIntrospector.findTypeResolver(paramSerializationConfig, localAnnotatedClass, paramJavaType);
    if (localTypeResolverBuilder == null)
      localTypeResolverBuilder = paramSerializationConfig.getDefaultTyper(paramJavaType);
    for (Collection localCollection = null; localTypeResolverBuilder == null; localCollection = paramSerializationConfig.getSubtypeResolver().collectAndResolveSubtypes(localAnnotatedClass, paramSerializationConfig, localAnnotationIntrospector))
      return null;
    return localTypeResolverBuilder.buildTypeSerializer(paramSerializationConfig, paramJavaType, localCollection, paramBeanProperty);
  }

  protected abstract Iterable<Serializers> customSerializers();

  public final JsonSerializer<?> findSerializerByAddonType(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean)
  {
    Class localClass = paramJavaType.getRawClass();
    if (Iterator.class.isAssignableFrom(localClass))
      return buildIteratorSerializer(paramSerializationConfig, paramJavaType, paramBasicBeanDescription, paramBeanProperty, paramBoolean);
    if (Iterable.class.isAssignableFrom(localClass))
      return buildIterableSerializer(paramSerializationConfig, paramJavaType, paramBasicBeanDescription, paramBeanProperty, paramBoolean);
    if (CharSequence.class.isAssignableFrom(localClass))
      return ToStringSerializer.instance;
    return null;
  }

  public final JsonSerializer<?> findSerializerByLookup(JavaType paramJavaType, SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean)
  {
    String str = paramJavaType.getRawClass().getName();
    JsonSerializer localJsonSerializer1 = (JsonSerializer)_concrete.get(str);
    if (localJsonSerializer1 != null)
      return localJsonSerializer1;
    Class localClass = (Class)_concreteLazy.get(str);
    if (localClass != null)
      try
      {
        JsonSerializer localJsonSerializer2 = (JsonSerializer)localClass.newInstance();
        return localJsonSerializer2;
      }
      catch (Exception localException)
      {
        throw new IllegalStateException("Failed to instantiate standard serializer (of type " + localClass.getName() + "): " + localException.getMessage(), localException);
      }
    return null;
  }

  public final JsonSerializer<?> findSerializerByPrimaryType(JavaType paramJavaType, SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, boolean paramBoolean)
  {
    Class localClass = paramJavaType.getRawClass();
    Object localObject;
    if (JsonSerializable.class.isAssignableFrom(localClass))
      if (JsonSerializableWithType.class.isAssignableFrom(localClass))
        localObject = SerializableWithTypeSerializer.instance;
    do
    {
      return localObject;
      return SerializableSerializer.instance;
      AnnotatedMethod localAnnotatedMethod = paramBasicBeanDescription.findJsonValueMethod();
      if (localAnnotatedMethod != null)
      {
        Method localMethod = localAnnotatedMethod.getAnnotated();
        if (paramSerializationConfig.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
          ClassUtil.checkAndFixAccess(localMethod);
        return new JsonValueSerializer(localMethod, findSerializerFromAnnotation(paramSerializationConfig, localAnnotatedMethod, paramBeanProperty), paramBeanProperty);
      }
      if (InetAddress.class.isAssignableFrom(localClass))
        return InetAddressSerializer.instance;
      if (TimeZone.class.isAssignableFrom(localClass))
        return TimeZoneSerializer.instance;
      localObject = this.optionalHandlers.findSerializer(paramSerializationConfig, paramJavaType);
    }
    while (localObject != null);
    if (Number.class.isAssignableFrom(localClass))
      return StdSerializers.NumberSerializer.instance;
    if (Enum.class.isAssignableFrom(localClass))
      return EnumSerializer.construct(localClass, paramSerializationConfig, paramBasicBeanDescription);
    if (Calendar.class.isAssignableFrom(localClass))
      return CalendarSerializer.instance;
    if (java.util.Date.class.isAssignableFrom(localClass))
      return DateSerializer.instance;
    return null;
  }

  protected JsonSerializer<Object> findSerializerFromAnnotation(SerializationConfig paramSerializationConfig, Annotated paramAnnotated, BeanProperty paramBeanProperty)
  {
    Object localObject1 = paramSerializationConfig.getAnnotationIntrospector().findSerializer(paramAnnotated);
    Object localObject2;
    if (localObject1 == null)
      localObject2 = null;
    do
    {
      do
      {
        return localObject2;
        if (!(localObject1 instanceof JsonSerializer))
          break;
        localObject2 = (JsonSerializer)localObject1;
      }
      while (!(localObject2 instanceof ContextualSerializer));
      return ((ContextualSerializer)localObject2).createContextual(paramSerializationConfig, paramBeanProperty);
      if (!(localObject1 instanceof Class))
        throw new IllegalStateException("AnnotationIntrospector returned value of type " + localObject1.getClass().getName() + "; expected type JsonSerializer or Class<JsonSerializer> instead");
      Class localClass = (Class)localObject1;
      if (!JsonSerializer.class.isAssignableFrom(localClass))
        throw new IllegalStateException("AnnotationIntrospector returned Class " + localClass.getName() + "; expected Class<JsonSerializer>");
      localObject2 = paramSerializationConfig.serializerInstance(paramAnnotated, localClass);
    }
    while (!(localObject2 instanceof ContextualSerializer));
    return ((ContextualSerializer)localObject2).createContextual(paramSerializationConfig, paramBeanProperty);
  }

  protected boolean isIndexedList(Class<?> paramClass)
  {
    return RandomAccess.class.isAssignableFrom(paramClass);
  }

  protected <T extends JavaType> T modifyTypeByAnnotation(SerializationConfig paramSerializationConfig, Annotated paramAnnotated, T paramT)
  {
    Class localClass = paramSerializationConfig.getAnnotationIntrospector().findSerializationType(paramAnnotated);
    if (localClass != null);
    try
    {
      JavaType localJavaType = paramT.widenBy(localClass);
      paramT = localJavaType;
      return modifySecondaryTypesByAnnotation(paramSerializationConfig, paramAnnotated, paramT);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new IllegalArgumentException("Failed to widen type " + paramT + " with concrete-type annotation (value " + localClass.getName() + "), method '" + paramAnnotated.getName() + "': " + localIllegalArgumentException.getMessage());
    }
  }

  protected boolean usesStaticTyping(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    if (paramTypeSerializer != null);
    AnnotationIntrospector localAnnotationIntrospector;
    JavaType localJavaType;
    do
    {
      do
      {
        do
        {
          return false;
          localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
          JsonSerialize.Typing localTyping = localAnnotationIntrospector.findSerializationTyping(paramBasicBeanDescription.getClassInfo());
          if (localTyping != null)
          {
            if (localTyping == JsonSerialize.Typing.STATIC)
              return true;
          }
          else if (paramSerializationConfig.isEnabled(SerializationConfig.Feature.USE_STATIC_TYPING))
            return true;
        }
        while (paramBeanProperty == null);
        localJavaType = paramBeanProperty.getType();
      }
      while (!localJavaType.isContainerType());
      if (localAnnotationIntrospector.findSerializationContentType(paramBeanProperty.getMember(), paramBeanProperty.getType()) != null)
        return true;
    }
    while ((!(localJavaType instanceof MapType)) || (localAnnotationIntrospector.findSerializationKeyType(paramBeanProperty.getMember(), paramBeanProperty.getType()) == null));
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BasicSerializerFactory
 * JD-Core Version:    0.6.2
 */