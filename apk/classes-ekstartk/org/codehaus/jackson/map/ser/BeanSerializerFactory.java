package org.codehaus.jackson.map.ser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.AnnotationIntrospector.ReferenceProperty;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerFactory;
import org.codehaus.jackson.map.SerializerFactory.Config;
import org.codehaus.jackson.map.Serializers;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.ser.std.MapSerializer;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public class BeanSerializerFactory extends BasicSerializerFactory
{
  public static final BeanSerializerFactory instance = new BeanSerializerFactory(null);
  protected final SerializerFactory.Config _factoryConfig;

  protected BeanSerializerFactory(SerializerFactory.Config paramConfig)
  {
    if (paramConfig == null)
      paramConfig = new BeanSerializerFactory.ConfigImpl();
    this._factoryConfig = paramConfig;
  }

  protected BeanPropertyWriter _constructWriter(SerializationConfig paramSerializationConfig, TypeBindings paramTypeBindings, PropertyBuilder paramPropertyBuilder, boolean paramBoolean, String paramString, AnnotatedMember paramAnnotatedMember)
  {
    if (paramSerializationConfig.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
      paramAnnotatedMember.fixAccess();
    JavaType localJavaType = paramAnnotatedMember.getType(paramTypeBindings);
    BeanProperty.Std localStd = new BeanProperty.Std(paramString, localJavaType, paramPropertyBuilder.getClassAnnotations(), paramAnnotatedMember);
    JsonSerializer localJsonSerializer = findSerializerFromAnnotation(paramSerializationConfig, paramAnnotatedMember, localStd);
    boolean bool = ClassUtil.isCollectionMapOrArray(localJavaType.getRawClass());
    TypeSerializer localTypeSerializer = null;
    if (bool)
      localTypeSerializer = findPropertyContentTypeSerializer(localJavaType, paramSerializationConfig, paramAnnotatedMember, localStd);
    BeanPropertyWriter localBeanPropertyWriter = paramPropertyBuilder.buildWriter(paramString, localJavaType, localJsonSerializer, findPropertyTypeSerializer(localJavaType, paramSerializationConfig, paramAnnotatedMember, localStd), localTypeSerializer, paramAnnotatedMember, paramBoolean);
    localBeanPropertyWriter.setViews(paramSerializationConfig.getAnnotationIntrospector().findSerializationViews(paramAnnotatedMember));
    return localBeanPropertyWriter;
  }

  protected JsonSerializer<Object> constructBeanSerializer(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty)
  {
    if (paramBasicBeanDescription.getBeanClass() == Object.class)
      throw new IllegalArgumentException("Can not create bean serializer for Object.class");
    BeanSerializerBuilder localBeanSerializerBuilder1 = constructBeanSerializerBuilder(paramBasicBeanDescription);
    Object localObject1 = findBeanProperties(paramSerializationConfig, paramBasicBeanDescription);
    if (localObject1 == null)
      localObject1 = new ArrayList();
    if (this._factoryConfig.hasSerializerModifiers())
    {
      Iterator localIterator3 = this._factoryConfig.serializerModifiers().iterator();
      for (localObject2 = localObject1; localIterator3.hasNext(); localObject2 = ((BeanSerializerModifier)localIterator3.next()).changeProperties(paramSerializationConfig, paramBasicBeanDescription, (List)localObject2));
    }
    Object localObject2 = localObject1;
    List localList1 = sortBeanProperties(paramSerializationConfig, paramBasicBeanDescription, filterBeanProperties(paramSerializationConfig, paramBasicBeanDescription, (List)localObject2));
    if (this._factoryConfig.hasSerializerModifiers())
    {
      Iterator localIterator2 = this._factoryConfig.serializerModifiers().iterator();
      for (localList2 = localList1; localIterator2.hasNext(); localList2 = ((BeanSerializerModifier)localIterator2.next()).orderProperties(paramSerializationConfig, paramBasicBeanDescription, localList2));
    }
    List localList2 = localList1;
    localBeanSerializerBuilder1.setProperties(localList2);
    localBeanSerializerBuilder1.setFilterId(findFilterId(paramSerializationConfig, paramBasicBeanDescription));
    AnnotatedMethod localAnnotatedMethod = paramBasicBeanDescription.findAnyGetter();
    if (localAnnotatedMethod != null)
    {
      if (paramSerializationConfig.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
        localAnnotatedMethod.fixAccess();
      JavaType localJavaType = localAnnotatedMethod.getType(paramBasicBeanDescription.bindingsForBeanType());
      localBeanSerializerBuilder1.setAnyGetter(new AnyGetterWriter(localAnnotatedMethod, MapSerializer.construct(null, localJavaType, paramSerializationConfig.isEnabled(SerializationConfig.Feature.USE_STATIC_TYPING), createTypeSerializer(paramSerializationConfig, localJavaType.getContentType(), paramBeanProperty), paramBeanProperty, null, null)));
    }
    processViews(paramSerializationConfig, localBeanSerializerBuilder1);
    if (this._factoryConfig.hasSerializerModifiers())
    {
      Iterator localIterator1 = this._factoryConfig.serializerModifiers().iterator();
      for (localBeanSerializerBuilder2 = localBeanSerializerBuilder1; localIterator1.hasNext(); localBeanSerializerBuilder2 = ((BeanSerializerModifier)localIterator1.next()).updateBuilder(paramSerializationConfig, paramBasicBeanDescription, localBeanSerializerBuilder2));
    }
    BeanSerializerBuilder localBeanSerializerBuilder2 = localBeanSerializerBuilder1;
    Object localObject3 = localBeanSerializerBuilder2.build();
    if ((localObject3 == null) && (paramBasicBeanDescription.hasKnownClassAnnotations()))
      localObject3 = localBeanSerializerBuilder2.createDummy();
    return localObject3;
  }

  protected BeanSerializerBuilder constructBeanSerializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    return new BeanSerializerBuilder(paramBasicBeanDescription);
  }

  protected BeanPropertyWriter constructFilteredBeanWriter(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    return FilteredBeanPropertyWriter.constructViewBased(paramBeanPropertyWriter, paramArrayOfClass);
  }

  protected PropertyBuilder constructPropertyBuilder(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    return new PropertyBuilder(paramSerializationConfig, paramBasicBeanDescription);
  }

  public JsonSerializer<Object> createKeySerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    boolean bool = this._factoryConfig.hasKeySerializers();
    Object localObject = null;
    if (!bool);
    do
    {
      BasicBeanDescription localBasicBeanDescription;
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return localObject;
        localBasicBeanDescription = (BasicBeanDescription)paramSerializationConfig.introspectClassAnnotations(paramJavaType.getRawClass());
        localIterator = this._factoryConfig.keySerializers().iterator();
      }
      localObject = ((Serializers)localIterator.next()).findSerializer(paramSerializationConfig, paramJavaType, localBasicBeanDescription, paramBeanProperty);
    }
    while (localObject == null);
    return localObject;
  }

  public JsonSerializer<Object> createSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramSerializationConfig.introspect(paramJavaType);
    JsonSerializer localJsonSerializer1 = findSerializerFromAnnotation(paramSerializationConfig, localBasicBeanDescription.getClassInfo(), paramBeanProperty);
    if (localJsonSerializer1 != null);
    JavaType localJavaType;
    boolean bool;
    do
    {
      do
      {
        do
        {
          return localJsonSerializer1;
          localJavaType = modifyTypeByAnnotation(paramSerializationConfig, localBasicBeanDescription.getClassInfo(), paramJavaType);
          if (localJavaType != paramJavaType);
          for (bool = true; paramJavaType.isContainerType(); bool = false)
            return buildContainerSerializer(paramSerializationConfig, localJavaType, localBasicBeanDescription, paramBeanProperty, bool);
          Iterator localIterator = this._factoryConfig.serializers().iterator();
          while (localIterator.hasNext())
          {
            JsonSerializer localJsonSerializer2 = ((Serializers)localIterator.next()).findSerializer(paramSerializationConfig, localJavaType, localBasicBeanDescription, paramBeanProperty);
            if (localJsonSerializer2 != null)
              return localJsonSerializer2;
          }
          localJsonSerializer1 = findSerializerByLookup(localJavaType, paramSerializationConfig, localBasicBeanDescription, paramBeanProperty, bool);
        }
        while (localJsonSerializer1 != null);
        localJsonSerializer1 = findSerializerByPrimaryType(localJavaType, paramSerializationConfig, localBasicBeanDescription, paramBeanProperty, bool);
      }
      while (localJsonSerializer1 != null);
      localJsonSerializer1 = findBeanSerializer(paramSerializationConfig, localJavaType, localBasicBeanDescription, paramBeanProperty);
    }
    while (localJsonSerializer1 != null);
    return findSerializerByAddonType(paramSerializationConfig, localJavaType, localBasicBeanDescription, paramBeanProperty, bool);
  }

  protected Iterable<Serializers> customSerializers()
  {
    return this._factoryConfig.serializers();
  }

  protected List<BeanPropertyWriter> filterBeanProperties(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, List<BeanPropertyWriter> paramList)
  {
    String[] arrayOfString = paramSerializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(paramBasicBeanDescription.getClassInfo());
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      HashSet localHashSet = ArrayBuilders.arrayToSet(arrayOfString);
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        if (localHashSet.contains(((BeanPropertyWriter)localIterator.next()).getName()))
          localIterator.remove();
    }
    return paramList;
  }

  protected List<BeanPropertyWriter> findBeanProperties(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    List localList = paramBasicBeanDescription.findProperties();
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    removeIgnorableTypes(paramSerializationConfig, paramBasicBeanDescription, localList);
    if (paramSerializationConfig.isEnabled(SerializationConfig.Feature.REQUIRE_SETTERS_FOR_GETTERS))
      removeSetterlessGetters(paramSerializationConfig, paramBasicBeanDescription, localList);
    if (localList.isEmpty())
      return null;
    boolean bool = usesStaticTyping(paramSerializationConfig, paramBasicBeanDescription, null, null);
    PropertyBuilder localPropertyBuilder = constructPropertyBuilder(paramSerializationConfig, paramBasicBeanDescription);
    ArrayList localArrayList = new ArrayList(localList.size());
    TypeBindings localTypeBindings = paramBasicBeanDescription.bindingsForBeanType();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      BeanPropertyDefinition localBeanPropertyDefinition = (BeanPropertyDefinition)localIterator.next();
      AnnotatedMember localAnnotatedMember = localBeanPropertyDefinition.getAccessor();
      AnnotationIntrospector.ReferenceProperty localReferenceProperty = localAnnotationIntrospector.findReferenceType(localAnnotatedMember);
      if ((localReferenceProperty == null) || (!localReferenceProperty.isBackReference()))
      {
        String str = localBeanPropertyDefinition.getName();
        if ((localAnnotatedMember instanceof AnnotatedMethod))
          localArrayList.add(_constructWriter(paramSerializationConfig, localTypeBindings, localPropertyBuilder, bool, str, (AnnotatedMethod)localAnnotatedMember));
        else
          localArrayList.add(_constructWriter(paramSerializationConfig, localTypeBindings, localPropertyBuilder, bool, str, (AnnotatedField)localAnnotatedMember));
      }
    }
    return localArrayList;
  }

  public JsonSerializer<Object> findBeanSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty)
  {
    Object localObject;
    if (!isPotentialBeanType(paramJavaType.getRawClass()))
      localObject = null;
    JsonSerializer localJsonSerializer;
    while (true)
    {
      return localObject;
      localJsonSerializer = constructBeanSerializer(paramSerializationConfig, paramBasicBeanDescription, paramBeanProperty);
      if (!this._factoryConfig.hasSerializerModifiers())
        break;
      Iterator localIterator = this._factoryConfig.serializerModifiers().iterator();
      for (localObject = localJsonSerializer; localIterator.hasNext(); localObject = ((BeanSerializerModifier)localIterator.next()).modifySerializer(paramSerializationConfig, paramBasicBeanDescription, (JsonSerializer)localObject));
    }
    return localJsonSerializer;
  }

  protected Object findFilterId(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    return paramSerializationConfig.getAnnotationIntrospector().findFilterId(paramBasicBeanDescription.getClassInfo());
  }

  public TypeSerializer findPropertyContentTypeSerializer(JavaType paramJavaType, SerializationConfig paramSerializationConfig, AnnotatedMember paramAnnotatedMember, BeanProperty paramBeanProperty)
  {
    JavaType localJavaType = paramJavaType.getContentType();
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder = localAnnotationIntrospector.findPropertyContentTypeResolver(paramSerializationConfig, paramAnnotatedMember, paramJavaType);
    if (localTypeResolverBuilder == null)
      return createTypeSerializer(paramSerializationConfig, localJavaType, paramBeanProperty);
    return localTypeResolverBuilder.buildTypeSerializer(paramSerializationConfig, localJavaType, paramSerializationConfig.getSubtypeResolver().collectAndResolveSubtypes(paramAnnotatedMember, paramSerializationConfig, localAnnotationIntrospector), paramBeanProperty);
  }

  public TypeSerializer findPropertyTypeSerializer(JavaType paramJavaType, SerializationConfig paramSerializationConfig, AnnotatedMember paramAnnotatedMember, BeanProperty paramBeanProperty)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder = localAnnotationIntrospector.findPropertyTypeResolver(paramSerializationConfig, paramAnnotatedMember, paramJavaType);
    if (localTypeResolverBuilder == null)
      return createTypeSerializer(paramSerializationConfig, paramJavaType, paramBeanProperty);
    return localTypeResolverBuilder.buildTypeSerializer(paramSerializationConfig, paramJavaType, paramSerializationConfig.getSubtypeResolver().collectAndResolveSubtypes(paramAnnotatedMember, paramSerializationConfig, localAnnotationIntrospector), paramBeanProperty);
  }

  public SerializerFactory.Config getConfig()
  {
    return this._factoryConfig;
  }

  protected boolean isPotentialBeanType(Class<?> paramClass)
  {
    return (ClassUtil.canBeABeanType(paramClass) == null) && (!ClassUtil.isProxyType(paramClass));
  }

  protected void processViews(SerializationConfig paramSerializationConfig, BeanSerializerBuilder paramBeanSerializerBuilder)
  {
    List localList = paramBeanSerializerBuilder.getProperties();
    boolean bool = paramSerializationConfig.isEnabled(SerializationConfig.Feature.DEFAULT_VIEW_INCLUSION);
    int i = localList.size();
    BeanPropertyWriter[] arrayOfBeanPropertyWriter = new BeanPropertyWriter[i];
    int j = 0;
    int k = 0;
    if (j < i)
    {
      BeanPropertyWriter localBeanPropertyWriter = (BeanPropertyWriter)localList.get(j);
      Class[] arrayOfClass = localBeanPropertyWriter.getViews();
      if (arrayOfClass == null)
      {
        if (!bool)
          break label109;
        arrayOfBeanPropertyWriter[j] = localBeanPropertyWriter;
      }
      label109: for (int m = k; ; m = k)
      {
        j++;
        k = m;
        break;
        k++;
        arrayOfBeanPropertyWriter[j] = constructFilteredBeanWriter(localBeanPropertyWriter, arrayOfClass);
      }
    }
    if ((bool) && (k == 0))
      return;
    paramBeanSerializerBuilder.setFilteredProperties(arrayOfBeanPropertyWriter);
  }

  protected void removeIgnorableTypes(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, List<BeanPropertyDefinition> paramList)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMember localAnnotatedMember = ((BeanPropertyDefinition)localIterator.next()).getAccessor();
      if (localAnnotatedMember == null)
      {
        localIterator.remove();
      }
      else
      {
        Class localClass = localAnnotatedMember.getRawType();
        Boolean localBoolean = (Boolean)localHashMap.get(localClass);
        if (localBoolean == null)
        {
          localBoolean = localAnnotationIntrospector.isIgnorableType(((BasicBeanDescription)paramSerializationConfig.introspectClassAnnotations(localClass)).getClassInfo());
          if (localBoolean == null)
            localBoolean = Boolean.FALSE;
          localHashMap.put(localClass, localBoolean);
        }
        if (localBoolean.booleanValue())
          localIterator.remove();
      }
    }
  }

  protected void removeSetterlessGetters(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, List<BeanPropertyDefinition> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      if (!((BeanPropertyDefinition)localIterator.next()).couldDeserialize())
        localIterator.remove();
  }

  @Deprecated
  protected List<BeanPropertyWriter> sortBeanProperties(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, List<BeanPropertyWriter> paramList)
  {
    return paramList;
  }

  public SerializerFactory withConfig(SerializerFactory.Config paramConfig)
  {
    if (this._factoryConfig == paramConfig)
      return this;
    if (getClass() != BeanSerializerFactory.class)
      throw new IllegalStateException("Subtype of BeanSerializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalSerializers': can not instantiate subtype with additional serializer definitions");
    return new BeanSerializerFactory(paramConfig);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializerFactory
 * JD-Core Version:    0.6.2
 */