package org.codehaus.jackson.map.deser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.ContextualDeserializer;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializerFactory;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonDeserializer.None;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.KeyDeserializer.None;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.deser.std.AtomicReferenceDeserializer;
import org.codehaus.jackson.map.deser.std.CollectionDeserializer;
import org.codehaus.jackson.map.deser.std.EnumDeserializer;
import org.codehaus.jackson.map.deser.std.EnumMapDeserializer;
import org.codehaus.jackson.map.deser.std.EnumSetDeserializer;
import org.codehaus.jackson.map.deser.std.JsonNodeDeserializer;
import org.codehaus.jackson.map.deser.std.MapDeserializer;
import org.codehaus.jackson.map.deser.std.ObjectArrayDeserializer;
import org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers;
import org.codehaus.jackson.map.deser.std.StringCollectionDeserializer;
import org.codehaus.jackson.map.ext.OptionalHandlerFactory;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.EnumResolver;
import org.codehaus.jackson.type.JavaType;

public abstract class BasicDeserializerFactory extends DeserializerFactory
{
  protected static final HashMap<JavaType, JsonDeserializer<Object>> _arrayDeserializers;
  static final HashMap<String, Class<? extends Collection>> _collectionFallbacks;
  static final HashMap<String, Class<? extends Map>> _mapFallbacks;
  static final HashMap<ClassKey, JsonDeserializer<Object>> _simpleDeserializers = StdDeserializers.constructAll();
  protected OptionalHandlerFactory optionalHandlers = OptionalHandlerFactory.instance;

  static
  {
    HashMap localHashMap1 = new HashMap();
    _mapFallbacks = localHashMap1;
    localHashMap1.put(Map.class.getName(), LinkedHashMap.class);
    _mapFallbacks.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
    _mapFallbacks.put(SortedMap.class.getName(), TreeMap.class);
    _mapFallbacks.put("java.util.NavigableMap", TreeMap.class);
    try
    {
      Class localClass1 = Class.forName("java.util.ConcurrentNavigableMap");
      Class localClass2 = Class.forName("java.util.ConcurrentSkipListMap");
      _mapFallbacks.put(localClass1.getName(), localClass2);
      label97: HashMap localHashMap2 = new HashMap();
      _collectionFallbacks = localHashMap2;
      localHashMap2.put(Collection.class.getName(), ArrayList.class);
      _collectionFallbacks.put(List.class.getName(), ArrayList.class);
      _collectionFallbacks.put(Set.class.getName(), HashSet.class);
      _collectionFallbacks.put(SortedSet.class.getName(), TreeSet.class);
      _collectionFallbacks.put(Queue.class.getName(), LinkedList.class);
      _collectionFallbacks.put("java.util.Deque", LinkedList.class);
      _collectionFallbacks.put("java.util.NavigableSet", TreeSet.class);
      _arrayDeserializers = PrimitiveArrayDeserializers.getAll();
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      break label97;
    }
  }

  JsonDeserializer<Object> _constructDeserializer(DeserializationConfig paramDeserializationConfig, Annotated paramAnnotated, BeanProperty paramBeanProperty, Object paramObject)
  {
    if ((paramObject instanceof JsonDeserializer))
    {
      JsonDeserializer localJsonDeserializer2 = (JsonDeserializer)paramObject;
      if ((localJsonDeserializer2 instanceof ContextualDeserializer))
        localJsonDeserializer2 = ((ContextualDeserializer)localJsonDeserializer2).createContextual(paramDeserializationConfig, paramBeanProperty);
      return localJsonDeserializer2;
    }
    if (!(paramObject instanceof Class))
      throw new IllegalStateException("AnnotationIntrospector returned deserializer definition of type " + paramObject.getClass().getName() + "; expected type JsonDeserializer or Class<JsonDeserializer> instead");
    Class localClass = (Class)paramObject;
    if (!JsonDeserializer.class.isAssignableFrom(localClass))
      throw new IllegalStateException("AnnotationIntrospector returned Class " + localClass.getName() + "; expected Class<JsonDeserializer>");
    JsonDeserializer localJsonDeserializer1 = paramDeserializationConfig.deserializerInstance(paramAnnotated, localClass);
    if ((localJsonDeserializer1 instanceof ContextualDeserializer))
      localJsonDeserializer1 = ((ContextualDeserializer)localJsonDeserializer1).createContextual(paramDeserializationConfig, paramBeanProperty);
    return localJsonDeserializer1;
  }

  protected abstract JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType paramArrayType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer);

  protected abstract JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer);

  protected abstract JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType paramCollectionLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer);

  protected abstract JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> paramClass, DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty);

  protected abstract JsonDeserializer<?> _findCustomMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer);

  protected abstract JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType paramMapLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer);

  protected abstract JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> paramClass, DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty);

  protected EnumResolver<?> constructEnumResolver(Class<?> paramClass, DeserializationConfig paramDeserializationConfig)
  {
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.READ_ENUMS_USING_TO_STRING))
      return EnumResolver.constructUnsafeUsingToString(paramClass);
    return EnumResolver.constructUnsafe(paramClass, paramDeserializationConfig.getAnnotationIntrospector());
  }

  public JsonDeserializer<?> createArrayDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, ArrayType paramArrayType, BeanProperty paramBeanProperty)
  {
    JavaType localJavaType = paramArrayType.getContentType();
    JsonDeserializer localJsonDeserializer1 = (JsonDeserializer)localJavaType.getValueHandler();
    Object localObject;
    if (localJsonDeserializer1 == null)
    {
      localObject = (JsonDeserializer)_arrayDeserializers.get(localJavaType);
      if (localObject != null)
      {
        JsonDeserializer localJsonDeserializer2 = _findCustomArrayDeserializer(paramArrayType, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, null, null);
        if (localJsonDeserializer2 != null)
          localObject = localJsonDeserializer2;
        return localObject;
      }
      if (localJavaType.isPrimitive())
        throw new IllegalArgumentException("Internal error: primitive type (" + paramArrayType + ") passed, no array deserializer found");
    }
    TypeDeserializer localTypeDeserializer1 = (TypeDeserializer)localJavaType.getTypeHandler();
    if (localTypeDeserializer1 == null);
    for (TypeDeserializer localTypeDeserializer2 = findTypeDeserializer(paramDeserializationConfig, localJavaType, paramBeanProperty); ; localTypeDeserializer2 = localTypeDeserializer1)
    {
      localObject = _findCustomArrayDeserializer(paramArrayType, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, localTypeDeserializer2, localJsonDeserializer1);
      if (localObject != null)
        break;
      if (localJsonDeserializer1 == null)
        localJsonDeserializer1 = paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, localJavaType, paramBeanProperty);
      return new ObjectArrayDeserializer(paramArrayType, localJsonDeserializer1, localTypeDeserializer2);
    }
  }

  public JsonDeserializer<?> createCollectionDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, CollectionType paramCollectionType, BeanProperty paramBeanProperty)
  {
    CollectionType localCollectionType1 = (CollectionType)mapAbstractType(paramDeserializationConfig, paramCollectionType);
    Class localClass1 = localCollectionType1.getRawClass();
    BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectForCreation(localCollectionType1);
    JsonDeserializer localJsonDeserializer1 = findDeserializerFromAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), paramBeanProperty);
    JsonDeserializer localJsonDeserializer3;
    if (localJsonDeserializer1 != null)
    {
      localJsonDeserializer3 = localJsonDeserializer1;
      return localJsonDeserializer3;
    }
    Object localObject = (CollectionType)modifyTypeByAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), localCollectionType1, null);
    JavaType localJavaType = ((CollectionType)localObject).getContentType();
    JsonDeserializer localJsonDeserializer2 = (JsonDeserializer)localJavaType.getValueHandler();
    TypeDeserializer localTypeDeserializer1 = (TypeDeserializer)localJavaType.getTypeHandler();
    if (localTypeDeserializer1 == null);
    for (TypeDeserializer localTypeDeserializer2 = findTypeDeserializer(paramDeserializationConfig, localJavaType, paramBeanProperty); ; localTypeDeserializer2 = localTypeDeserializer1)
    {
      localJsonDeserializer3 = _findCustomCollectionDeserializer((CollectionType)localObject, paramDeserializationConfig, paramDeserializerProvider, localBasicBeanDescription, paramBeanProperty, localTypeDeserializer2, localJsonDeserializer2);
      if (localJsonDeserializer3 != null)
        break;
      if (localJsonDeserializer2 == null)
      {
        if (EnumSet.class.isAssignableFrom(localClass1))
          return new EnumSetDeserializer(constructEnumResolver(localJavaType.getRawClass(), paramDeserializationConfig));
        localJsonDeserializer2 = paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, localJavaType, paramBeanProperty);
      }
      if ((((CollectionType)localObject).isInterface()) || (((CollectionType)localObject).isAbstract()))
      {
        Class localClass2 = (Class)_collectionFallbacks.get(localClass1.getName());
        if (localClass2 == null)
          throw new IllegalArgumentException("Can not find a deserializer for non-concrete Collection type " + localObject);
        CollectionType localCollectionType2 = (CollectionType)paramDeserializationConfig.constructSpecializedType((JavaType)localObject, localClass2);
        localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectForCreation(localCollectionType2);
        localObject = localCollectionType2;
      }
      ValueInstantiator localValueInstantiator = findValueInstantiator(paramDeserializationConfig, localBasicBeanDescription);
      if (localJavaType.getRawClass() == String.class)
        return new StringCollectionDeserializer((JavaType)localObject, localJsonDeserializer2, localValueInstantiator);
      return new CollectionDeserializer((JavaType)localObject, localJsonDeserializer2, localTypeDeserializer2, localValueInstantiator);
    }
  }

  public JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, CollectionLikeType paramCollectionLikeType, BeanProperty paramBeanProperty)
  {
    CollectionLikeType localCollectionLikeType1 = (CollectionLikeType)mapAbstractType(paramDeserializationConfig, paramCollectionLikeType);
    BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectClassAnnotations(localCollectionLikeType1.getRawClass());
    JsonDeserializer localJsonDeserializer1 = findDeserializerFromAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), paramBeanProperty);
    if (localJsonDeserializer1 != null)
      return localJsonDeserializer1;
    CollectionLikeType localCollectionLikeType2 = (CollectionLikeType)modifyTypeByAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), localCollectionLikeType1, null);
    JavaType localJavaType = localCollectionLikeType2.getContentType();
    JsonDeserializer localJsonDeserializer2 = (JsonDeserializer)localJavaType.getValueHandler();
    TypeDeserializer localTypeDeserializer1 = (TypeDeserializer)localJavaType.getTypeHandler();
    if (localTypeDeserializer1 == null);
    for (TypeDeserializer localTypeDeserializer2 = findTypeDeserializer(paramDeserializationConfig, localJavaType, paramBeanProperty); ; localTypeDeserializer2 = localTypeDeserializer1)
      return _findCustomCollectionLikeDeserializer(localCollectionLikeType2, paramDeserializationConfig, paramDeserializerProvider, localBasicBeanDescription, paramBeanProperty, localTypeDeserializer2, localJsonDeserializer2);
  }

  public JsonDeserializer<?> createEnumDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectForCreation(paramJavaType);
    JsonDeserializer localJsonDeserializer1 = findDeserializerFromAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), paramBeanProperty);
    if (localJsonDeserializer1 != null)
      return localJsonDeserializer1;
    Class localClass = paramJavaType.getRawClass();
    JsonDeserializer localJsonDeserializer2 = _findCustomEnumDeserializer(localClass, paramDeserializationConfig, localBasicBeanDescription, paramBeanProperty);
    if (localJsonDeserializer2 != null)
      return localJsonDeserializer2;
    Iterator localIterator = localBasicBeanDescription.getFactoryMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (paramDeserializationConfig.getAnnotationIntrospector().hasCreatorAnnotation(localAnnotatedMethod))
      {
        if ((localAnnotatedMethod.getParameterCount() == 1) && (localAnnotatedMethod.getRawType().isAssignableFrom(localClass)))
          return EnumDeserializer.deserializerForCreator(paramDeserializationConfig, localClass, localAnnotatedMethod);
        throw new IllegalArgumentException("Unsuitable method (" + localAnnotatedMethod + ") decorated with @JsonCreator (for Enum type " + localClass.getName() + ")");
      }
    }
    return new EnumDeserializer(constructEnumResolver(localClass, paramDeserializationConfig));
  }

  public JsonDeserializer<?> createMapDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, MapType paramMapType, BeanProperty paramBeanProperty)
  {
    MapType localMapType1 = (MapType)mapAbstractType(paramDeserializationConfig, paramMapType);
    BasicBeanDescription localBasicBeanDescription1 = (BasicBeanDescription)paramDeserializationConfig.introspectForCreation(localMapType1);
    JsonDeserializer localJsonDeserializer1 = findDeserializerFromAnnotation(paramDeserializationConfig, localBasicBeanDescription1.getClassInfo(), paramBeanProperty);
    JsonDeserializer localJsonDeserializer3;
    if (localJsonDeserializer1 != null)
    {
      localJsonDeserializer3 = localJsonDeserializer1;
      return localJsonDeserializer3;
    }
    Object localObject = (MapType)modifyTypeByAnnotation(paramDeserializationConfig, localBasicBeanDescription1.getClassInfo(), localMapType1, null);
    JavaType localJavaType1 = ((MapType)localObject).getKeyType();
    JavaType localJavaType2 = ((MapType)localObject).getContentType();
    JsonDeserializer localJsonDeserializer2 = (JsonDeserializer)localJavaType2.getValueHandler();
    KeyDeserializer localKeyDeserializer1 = (KeyDeserializer)localJavaType1.getValueHandler();
    if (localKeyDeserializer1 == null);
    for (KeyDeserializer localKeyDeserializer2 = paramDeserializerProvider.findKeyDeserializer(paramDeserializationConfig, localJavaType1, paramBeanProperty); ; localKeyDeserializer2 = localKeyDeserializer1)
    {
      TypeDeserializer localTypeDeserializer1 = (TypeDeserializer)localJavaType2.getTypeHandler();
      if (localTypeDeserializer1 == null);
      for (TypeDeserializer localTypeDeserializer2 = findTypeDeserializer(paramDeserializationConfig, localJavaType2, paramBeanProperty); ; localTypeDeserializer2 = localTypeDeserializer1)
      {
        localJsonDeserializer3 = _findCustomMapDeserializer((MapType)localObject, paramDeserializationConfig, paramDeserializerProvider, localBasicBeanDescription1, paramBeanProperty, localKeyDeserializer2, localTypeDeserializer2, localJsonDeserializer2);
        if (localJsonDeserializer3 != null)
          break;
        if (localJsonDeserializer2 == null)
          localJsonDeserializer2 = paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, localJavaType2, paramBeanProperty);
        Class localClass1 = ((MapType)localObject).getRawClass();
        if (EnumMap.class.isAssignableFrom(localClass1))
        {
          Class localClass3 = localJavaType1.getRawClass();
          if ((localClass3 == null) || (!localClass3.isEnum()))
            throw new IllegalArgumentException("Can not construct EnumMap; generic (key) type not available");
          return new EnumMapDeserializer(constructEnumResolver(localClass3, paramDeserializationConfig), localJsonDeserializer2);
        }
        BasicBeanDescription localBasicBeanDescription2;
        if ((((MapType)localObject).isInterface()) || (((MapType)localObject).isAbstract()))
        {
          Class localClass2 = (Class)_mapFallbacks.get(localClass1.getName());
          if (localClass2 == null)
            throw new IllegalArgumentException("Can not find a deserializer for non-concrete Map type " + localObject);
          MapType localMapType2 = (MapType)paramDeserializationConfig.constructSpecializedType((JavaType)localObject, localClass2);
          localBasicBeanDescription2 = (BasicBeanDescription)paramDeserializationConfig.introspectForCreation(localMapType2);
          localObject = localMapType2;
        }
        while (true)
        {
          MapDeserializer localMapDeserializer = new MapDeserializer((JavaType)localObject, findValueInstantiator(paramDeserializationConfig, localBasicBeanDescription2), localKeyDeserializer2, localJsonDeserializer2, localTypeDeserializer2);
          localMapDeserializer.setIgnorableProperties(paramDeserializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(localBasicBeanDescription2.getClassInfo()));
          return localMapDeserializer;
          localBasicBeanDescription2 = localBasicBeanDescription1;
        }
      }
    }
  }

  public JsonDeserializer<?> createMapLikeDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, MapLikeType paramMapLikeType, BeanProperty paramBeanProperty)
  {
    MapLikeType localMapLikeType1 = (MapLikeType)mapAbstractType(paramDeserializationConfig, paramMapLikeType);
    BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectForCreation(localMapLikeType1);
    JsonDeserializer localJsonDeserializer1 = findDeserializerFromAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), paramBeanProperty);
    if (localJsonDeserializer1 != null)
      return localJsonDeserializer1;
    MapLikeType localMapLikeType2 = (MapLikeType)modifyTypeByAnnotation(paramDeserializationConfig, localBasicBeanDescription.getClassInfo(), localMapLikeType1, null);
    JavaType localJavaType1 = localMapLikeType2.getKeyType();
    JavaType localJavaType2 = localMapLikeType2.getContentType();
    JsonDeserializer localJsonDeserializer2 = (JsonDeserializer)localJavaType2.getValueHandler();
    KeyDeserializer localKeyDeserializer1 = (KeyDeserializer)localJavaType1.getValueHandler();
    if (localKeyDeserializer1 == null);
    for (KeyDeserializer localKeyDeserializer2 = paramDeserializerProvider.findKeyDeserializer(paramDeserializationConfig, localJavaType1, paramBeanProperty); ; localKeyDeserializer2 = localKeyDeserializer1)
    {
      TypeDeserializer localTypeDeserializer1 = (TypeDeserializer)localJavaType2.getTypeHandler();
      if (localTypeDeserializer1 == null);
      for (TypeDeserializer localTypeDeserializer2 = findTypeDeserializer(paramDeserializationConfig, localJavaType2, paramBeanProperty); ; localTypeDeserializer2 = localTypeDeserializer1)
        return _findCustomMapLikeDeserializer(localMapLikeType2, paramDeserializationConfig, paramDeserializerProvider, localBasicBeanDescription, paramBeanProperty, localKeyDeserializer2, localTypeDeserializer2, localJsonDeserializer2);
    }
  }

  public JsonDeserializer<?> createTreeDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    Class localClass = paramJavaType.getRawClass();
    JsonDeserializer localJsonDeserializer = _findCustomTreeNodeDeserializer(localClass, paramDeserializationConfig, paramBeanProperty);
    if (localJsonDeserializer != null)
      return localJsonDeserializer;
    return JsonNodeDeserializer.getDeserializer(localClass);
  }

  protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationConfig paramDeserializationConfig, Annotated paramAnnotated, BeanProperty paramBeanProperty)
  {
    Object localObject = paramDeserializationConfig.getAnnotationIntrospector().findDeserializer(paramAnnotated);
    if (localObject != null)
      return _constructDeserializer(paramDeserializationConfig, paramAnnotated, paramBeanProperty, localObject);
    return null;
  }

  public TypeDeserializer findPropertyContentTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, AnnotatedMember paramAnnotatedMember, BeanProperty paramBeanProperty)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramDeserializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder = localAnnotationIntrospector.findPropertyContentTypeResolver(paramDeserializationConfig, paramAnnotatedMember, paramJavaType);
    JavaType localJavaType = paramJavaType.getContentType();
    if (localTypeResolverBuilder == null)
      return findTypeDeserializer(paramDeserializationConfig, localJavaType, paramBeanProperty);
    return localTypeResolverBuilder.buildTypeDeserializer(paramDeserializationConfig, localJavaType, paramDeserializationConfig.getSubtypeResolver().collectAndResolveSubtypes(paramAnnotatedMember, paramDeserializationConfig, localAnnotationIntrospector), paramBeanProperty);
  }

  public TypeDeserializer findPropertyTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, AnnotatedMember paramAnnotatedMember, BeanProperty paramBeanProperty)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramDeserializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder = localAnnotationIntrospector.findPropertyTypeResolver(paramDeserializationConfig, paramAnnotatedMember, paramJavaType);
    if (localTypeResolverBuilder == null)
      return findTypeDeserializer(paramDeserializationConfig, paramJavaType, paramBeanProperty);
    return localTypeResolverBuilder.buildTypeDeserializer(paramDeserializationConfig, paramJavaType, paramDeserializationConfig.getSubtypeResolver().collectAndResolveSubtypes(paramAnnotatedMember, paramDeserializationConfig, localAnnotationIntrospector), paramBeanProperty);
  }

  protected JsonDeserializer<Object> findStdBeanDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    Class localClass = paramJavaType.getRawClass();
    JsonDeserializer localJsonDeserializer = (JsonDeserializer)_simpleDeserializers.get(new ClassKey(localClass));
    if (localJsonDeserializer != null);
    do
    {
      return localJsonDeserializer;
      if (AtomicReference.class.isAssignableFrom(localClass))
      {
        JavaType[] arrayOfJavaType = paramDeserializationConfig.getTypeFactory().findTypeParameters(paramJavaType, AtomicReference.class);
        if ((arrayOfJavaType == null) || (arrayOfJavaType.length <= 0));
        for (JavaType localJavaType = TypeFactory.unknownType(); ; localJavaType = arrayOfJavaType[0])
          return new AtomicReferenceDeserializer(localJavaType, paramBeanProperty);
      }
      localJsonDeserializer = this.optionalHandlers.findDeserializer(paramJavaType, paramDeserializationConfig, paramDeserializerProvider);
    }
    while (localJsonDeserializer != null);
    return null;
  }

  public TypeDeserializer findTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    AnnotatedClass localAnnotatedClass = ((BasicBeanDescription)paramDeserializationConfig.introspectClassAnnotations(paramJavaType.getRawClass())).getClassInfo();
    AnnotationIntrospector localAnnotationIntrospector = paramDeserializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder1 = localAnnotationIntrospector.findTypeResolver(paramDeserializationConfig, localAnnotatedClass, paramJavaType);
    TypeResolverBuilder localTypeResolverBuilder3;
    Collection localCollection;
    TypeResolverBuilder localTypeResolverBuilder2;
    if (localTypeResolverBuilder1 == null)
    {
      localTypeResolverBuilder3 = paramDeserializationConfig.getDefaultTyper(paramJavaType);
      if (localTypeResolverBuilder3 == null)
        return null;
    }
    else
    {
      localCollection = paramDeserializationConfig.getSubtypeResolver().collectAndResolveSubtypes(localAnnotatedClass, paramDeserializationConfig, localAnnotationIntrospector);
      localTypeResolverBuilder2 = localTypeResolverBuilder1;
    }
    while (true)
    {
      if ((localTypeResolverBuilder2.getDefaultImpl() == null) && (paramJavaType.isAbstract()))
      {
        JavaType localJavaType = mapAbstractType(paramDeserializationConfig, paramJavaType);
        if ((localJavaType != null) && (localJavaType.getRawClass() != paramJavaType.getRawClass()))
          localTypeResolverBuilder2 = localTypeResolverBuilder2.defaultImpl(localJavaType.getRawClass());
      }
      return localTypeResolverBuilder2.buildTypeDeserializer(paramDeserializationConfig, paramJavaType, localCollection, paramBeanProperty);
      localTypeResolverBuilder2 = localTypeResolverBuilder3;
      localCollection = null;
    }
  }

  public abstract ValueInstantiator findValueInstantiator(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription);

  public abstract JavaType mapAbstractType(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType);

  // ERROR //
  protected <T extends JavaType> T modifyTypeByAnnotation(DeserializationConfig paramDeserializationConfig, Annotated paramAnnotated, T paramT, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 190	org/codehaus/jackson/map/DeserializationConfig:getAnnotationIntrospector	()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    //   4: astore 5
    //   6: aload 5
    //   8: aload_2
    //   9: aload_3
    //   10: aload 4
    //   12: invokevirtual 526	org/codehaus/jackson/map/AnnotationIntrospector:findDeserializationType	(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    //   15: astore 6
    //   17: aload 6
    //   19: ifnull +428 -> 447
    //   22: aload_3
    //   23: aload 6
    //   25: invokevirtual 530	org/codehaus/jackson/type/JavaType:narrowBy	(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    //   28: astore 19
    //   30: aload 19
    //   32: astore 7
    //   34: aload 7
    //   36: invokevirtual 533	org/codehaus/jackson/type/JavaType:isContainerType	()Z
    //   39: ifeq +287 -> 326
    //   42: aload 5
    //   44: aload_2
    //   45: aload 7
    //   47: invokevirtual 534	org/codehaus/jackson/type/JavaType:getKeyType	()Lorg/codehaus/jackson/type/JavaType;
    //   50: aload 4
    //   52: invokevirtual 537	org/codehaus/jackson/map/AnnotationIntrospector:findDeserializationKeyType	(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    //   55: astore 8
    //   57: aload 8
    //   59: ifnull +130 -> 189
    //   62: aload 7
    //   64: instanceof 428
    //   67: ifne +106 -> 173
    //   70: new 539	org/codehaus/jackson/map/JsonMappingException
    //   73: dup
    //   74: new 119	java/lang/StringBuilder
    //   77: dup
    //   78: ldc_w 541
    //   81: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload 7
    //   86: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   89: ldc_w 543
    //   92: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokespecial 544	org/codehaus/jackson/map/JsonMappingException:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: astore 18
    //   104: new 539	org/codehaus/jackson/map/JsonMappingException
    //   107: dup
    //   108: new 119	java/lang/StringBuilder
    //   111: dup
    //   112: ldc_w 546
    //   115: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload_3
    //   119: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   122: ldc_w 548
    //   125: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload 6
    //   130: invokevirtual 42	java/lang/Class:getName	()Ljava/lang/String;
    //   133: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc_w 550
    //   139: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: aload_2
    //   143: invokevirtual 553	org/codehaus/jackson/map/introspect/Annotated:getName	()Ljava/lang/String;
    //   146: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: ldc_w 555
    //   152: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: aload 18
    //   157: invokevirtual 558	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   160: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: aconst_null
    //   167: aload 18
    //   169: invokespecial 561	org/codehaus/jackson/map/JsonMappingException:<init>	(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    //   172: athrow
    //   173: aload 7
    //   175: checkcast 428	org/codehaus/jackson/map/type/MapLikeType
    //   178: aload 8
    //   180: invokevirtual 564	org/codehaus/jackson/map/type/MapLikeType:narrowKey	(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    //   183: astore 17
    //   185: aload 17
    //   187: astore 7
    //   189: aload 7
    //   191: invokevirtual 534	org/codehaus/jackson/type/JavaType:getKeyType	()Lorg/codehaus/jackson/type/JavaType;
    //   194: astore 9
    //   196: aload 9
    //   198: ifnull +44 -> 242
    //   201: aload 9
    //   203: invokevirtual 208	org/codehaus/jackson/type/JavaType:getValueHandler	()Ljava/lang/Object;
    //   206: ifnonnull +36 -> 242
    //   209: aload 5
    //   211: aload_2
    //   212: invokevirtual 567	org/codehaus/jackson/map/AnnotationIntrospector:findKeyDeserializer	(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    //   215: astore 15
    //   217: aload 15
    //   219: ifnull +23 -> 242
    //   222: aload 15
    //   224: ldc_w 569
    //   227: if_acmpeq +15 -> 242
    //   230: aload 9
    //   232: aload_1
    //   233: aload_2
    //   234: aload 15
    //   236: invokevirtual 573	org/codehaus/jackson/map/DeserializationConfig:keyDeserializerInstance	(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;
    //   239: invokevirtual 577	org/codehaus/jackson/type/JavaType:setValueHandler	(Ljava/lang/Object;)V
    //   242: aload 5
    //   244: aload_2
    //   245: aload 7
    //   247: invokevirtual 454	org/codehaus/jackson/type/JavaType:getContentType	()Lorg/codehaus/jackson/type/JavaType;
    //   250: aload 4
    //   252: invokevirtual 580	org/codehaus/jackson/map/AnnotationIntrospector:findDeserializationContentType	(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    //   255: astore 10
    //   257: aload 10
    //   259: ifnull +16 -> 275
    //   262: aload 7
    //   264: aload 10
    //   266: invokevirtual 583	org/codehaus/jackson/type/JavaType:narrowContentsBy	(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    //   269: astore 14
    //   271: aload 14
    //   273: astore 7
    //   275: aload 7
    //   277: invokevirtual 454	org/codehaus/jackson/type/JavaType:getContentType	()Lorg/codehaus/jackson/type/JavaType;
    //   280: invokevirtual 208	org/codehaus/jackson/type/JavaType:getValueHandler	()Ljava/lang/Object;
    //   283: ifnonnull +43 -> 326
    //   286: aload 5
    //   288: aload_2
    //   289: invokevirtual 586	org/codehaus/jackson/map/AnnotationIntrospector:findContentDeserializer	(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    //   292: astore 11
    //   294: aload 11
    //   296: ifnull +30 -> 326
    //   299: aload 11
    //   301: ldc_w 588
    //   304: if_acmpeq +22 -> 326
    //   307: aload_1
    //   308: aload_2
    //   309: aload 11
    //   311: invokevirtual 154	org/codehaus/jackson/map/DeserializationConfig:deserializerInstance	(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;
    //   314: astore 12
    //   316: aload 7
    //   318: invokevirtual 454	org/codehaus/jackson/type/JavaType:getContentType	()Lorg/codehaus/jackson/type/JavaType;
    //   321: aload 12
    //   323: invokevirtual 577	org/codehaus/jackson/type/JavaType:setValueHandler	(Ljava/lang/Object;)V
    //   326: aload 7
    //   328: areturn
    //   329: astore 16
    //   331: new 539	org/codehaus/jackson/map/JsonMappingException
    //   334: dup
    //   335: new 119	java/lang/StringBuilder
    //   338: dup
    //   339: ldc_w 590
    //   342: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   345: aload 7
    //   347: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   350: ldc_w 592
    //   353: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: aload 8
    //   358: invokevirtual 42	java/lang/Class:getName	()Ljava/lang/String;
    //   361: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: ldc_w 594
    //   367: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: aload 16
    //   372: invokevirtual 558	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   375: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   381: aconst_null
    //   382: aload 16
    //   384: invokespecial 561	org/codehaus/jackson/map/JsonMappingException:<init>	(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    //   387: athrow
    //   388: astore 13
    //   390: new 539	org/codehaus/jackson/map/JsonMappingException
    //   393: dup
    //   394: new 119	java/lang/StringBuilder
    //   397: dup
    //   398: ldc_w 596
    //   401: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   404: aload 7
    //   406: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   409: ldc_w 598
    //   412: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: aload 10
    //   417: invokevirtual 42	java/lang/Class:getName	()Ljava/lang/String;
    //   420: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: ldc_w 594
    //   426: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: aload 13
    //   431: invokevirtual 558	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   434: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: aconst_null
    //   441: aload 13
    //   443: invokespecial 561	org/codehaus/jackson/map/JsonMappingException:<init>	(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    //   446: athrow
    //   447: aload_3
    //   448: astore 7
    //   450: goto -416 -> 34
    //
    // Exception table:
    //   from	to	target	type
    //   22	30	102	java/lang/IllegalArgumentException
    //   173	185	329	java/lang/IllegalArgumentException
    //   262	271	388	java/lang/IllegalArgumentException
  }

  protected JavaType resolveType(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, JavaType paramJavaType, AnnotatedMember paramAnnotatedMember, BeanProperty paramBeanProperty)
  {
    if (paramJavaType.isContainerType())
    {
      AnnotationIntrospector localAnnotationIntrospector = paramDeserializationConfig.getAnnotationIntrospector();
      JavaType localJavaType = paramJavaType.getKeyType();
      if (localJavaType != null)
      {
        Class localClass2 = localAnnotationIntrospector.findKeyDeserializer(paramAnnotatedMember);
        if ((localClass2 != null) && (localClass2 != KeyDeserializer.None.class))
          localJavaType.setValueHandler(paramDeserializationConfig.keyDeserializerInstance(paramAnnotatedMember, localClass2));
      }
      Class localClass1 = localAnnotationIntrospector.findContentDeserializer(paramAnnotatedMember);
      if ((localClass1 != null) && (localClass1 != JsonDeserializer.None.class))
      {
        JsonDeserializer localJsonDeserializer = paramDeserializationConfig.deserializerInstance(paramAnnotatedMember, localClass1);
        paramJavaType.getContentType().setValueHandler(localJsonDeserializer);
      }
      if ((paramAnnotatedMember instanceof AnnotatedMember))
      {
        TypeDeserializer localTypeDeserializer2 = findPropertyContentTypeDeserializer(paramDeserializationConfig, paramJavaType, paramAnnotatedMember, paramBeanProperty);
        if (localTypeDeserializer2 != null)
          paramJavaType = paramJavaType.withContentTypeHandler(localTypeDeserializer2);
      }
    }
    if ((paramAnnotatedMember instanceof AnnotatedMember));
    for (TypeDeserializer localTypeDeserializer1 = findPropertyTypeDeserializer(paramDeserializationConfig, paramJavaType, paramAnnotatedMember, paramBeanProperty); ; localTypeDeserializer1 = findTypeDeserializer(paramDeserializationConfig, paramJavaType, null))
    {
      if (localTypeDeserializer1 != null)
        paramJavaType = paramJavaType.withTypeHandler(localTypeDeserializer1);
      return paramJavaType;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.BasicDeserializerFactory
 * JD-Core Version:    0.6.2
 */