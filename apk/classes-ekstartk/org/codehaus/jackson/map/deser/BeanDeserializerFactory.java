package org.codehaus.jackson.map.deser;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.AbstractTypeResolver;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.AnnotationIntrospector.ReferenceProperty;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializerFactory;
import org.codehaus.jackson.map.DeserializerFactory.Config;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.Deserializers;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.KeyDeserializers;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.deser.impl.CreatorCollector;
import org.codehaus.jackson.map.deser.impl.CreatorProperty;
import org.codehaus.jackson.map.deser.std.ThrowableDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.AnnotatedParameter;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public class BeanDeserializerFactory extends BasicDeserializerFactory
{
  private static final Class<?>[] INIT_CAUSE_PARAMS = { Throwable.class };
  public static final BeanDeserializerFactory instance = new BeanDeserializerFactory(null);
  protected final DeserializerFactory.Config _factoryConfig;

  @Deprecated
  public BeanDeserializerFactory()
  {
    this(null);
  }

  public BeanDeserializerFactory(DeserializerFactory.Config paramConfig)
  {
    if (paramConfig == null)
      paramConfig = new BeanDeserializerFactory.ConfigImpl();
    this._factoryConfig = paramConfig;
  }

  protected void _addDeserializerConstructors(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, VisibilityChecker<?> paramVisibilityChecker, AnnotationIntrospector paramAnnotationIntrospector, CreatorCollector paramCreatorCollector)
  {
    Iterator localIterator = paramBasicBeanDescription.getConstructors().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedConstructor localAnnotatedConstructor = (AnnotatedConstructor)localIterator.next();
      int i = localAnnotatedConstructor.getParameterCount();
      if (i > 0)
      {
        boolean bool1 = paramAnnotationIntrospector.hasCreatorAnnotation(localAnnotatedConstructor);
        boolean bool2 = paramVisibilityChecker.isCreatorVisible(localAnnotatedConstructor);
        if (i == 1)
        {
          _handleSingleArgumentConstructor(paramDeserializationConfig, paramBasicBeanDescription, paramVisibilityChecker, paramAnnotationIntrospector, paramCreatorCollector, localAnnotatedConstructor, bool1, bool2);
        }
        else if ((bool1) || (bool2))
        {
          Object localObject1 = null;
          int j = 0;
          int k = 0;
          CreatorProperty[] arrayOfCreatorProperty = new CreatorProperty[i];
          int m = 0;
          if (m < i)
          {
            Object localObject2 = localAnnotatedConstructor.getParameter(m);
            String str;
            label144: Object localObject3;
            if (localObject2 == null)
            {
              str = null;
              localObject3 = paramAnnotationIntrospector.findInjectableValueId((AnnotatedMember)localObject2);
              if ((str == null) || (str.length() <= 0))
                break label214;
              j++;
              arrayOfCreatorProperty[m] = constructCreatorProperty(paramDeserializationConfig, paramBasicBeanDescription, str, m, (AnnotatedParameter)localObject2, localObject3);
              localObject2 = localObject1;
            }
            while (true)
            {
              m++;
              localObject1 = localObject2;
              break;
              str = paramAnnotationIntrospector.findPropertyNameForParam((AnnotatedParameter)localObject2);
              break label144;
              label214: if (localObject3 != null)
              {
                k++;
                arrayOfCreatorProperty[m] = constructCreatorProperty(paramDeserializationConfig, paramBasicBeanDescription, str, m, (AnnotatedParameter)localObject2, localObject3);
                localObject2 = localObject1;
              }
              else if (localObject1 != null)
              {
                localObject2 = localObject1;
              }
            }
          }
          if ((bool1) || (j > 0) || (k > 0))
            if (j + k == i)
            {
              paramCreatorCollector.addPropertyCreator(localAnnotatedConstructor, arrayOfCreatorProperty);
            }
            else
            {
              if ((j == 0) && (k + 1 == i))
                throw new IllegalArgumentException("Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for " + localAnnotatedConstructor);
              throw new IllegalArgumentException("Argument #" + localObject1.getIndex() + " of constructor " + localAnnotatedConstructor + " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator");
            }
        }
      }
    }
  }

  protected void _addDeserializerFactoryMethods(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, VisibilityChecker<?> paramVisibilityChecker, AnnotationIntrospector paramAnnotationIntrospector, CreatorCollector paramCreatorCollector)
  {
    Iterator localIterator = paramBasicBeanDescription.getFactoryMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      int i = localAnnotatedMethod.getParameterCount();
      if (i > 0)
      {
        boolean bool = paramAnnotationIntrospector.hasCreatorAnnotation(localAnnotatedMethod);
        if (i == 1)
        {
          AnnotatedParameter localAnnotatedParameter2 = localAnnotatedMethod.getParameter(0);
          String str2 = paramAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter2);
          if ((paramAnnotationIntrospector.findInjectableValueId(localAnnotatedParameter2) == null) && ((str2 == null) || (str2.length() == 0)))
            _handleSingleArgumentFactory(paramDeserializationConfig, paramBasicBeanDescription, paramVisibilityChecker, paramAnnotationIntrospector, paramCreatorCollector, localAnnotatedMethod, bool);
        }
        else if (paramAnnotationIntrospector.hasCreatorAnnotation(localAnnotatedMethod))
        {
          CreatorProperty[] arrayOfCreatorProperty = new CreatorProperty[i];
          for (int j = 0; j < i; j++)
          {
            AnnotatedParameter localAnnotatedParameter1 = localAnnotatedMethod.getParameter(j);
            String str1 = paramAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter1);
            Object localObject = paramAnnotationIntrospector.findInjectableValueId(localAnnotatedParameter1);
            if (((str1 == null) || (str1.length() == 0)) && (localObject == null))
              throw new IllegalArgumentException("Argument #" + j + " of factory method " + localAnnotatedMethod + " has no property name annotation; must have when multiple-paramater static method annotated as Creator");
            arrayOfCreatorProperty[j] = constructCreatorProperty(paramDeserializationConfig, paramBasicBeanDescription, str1, j, localAnnotatedParameter1, localObject);
          }
          paramCreatorCollector.addPropertyCreator(localAnnotatedMethod, arrayOfCreatorProperty);
        }
      }
    }
  }

  protected JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType paramArrayType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findArrayDeserializer(paramArrayType, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramTypeDeserializer, paramJsonDeserializer);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findBeanDeserializer(paramJavaType, paramDeserializationConfig, paramDeserializerProvider, paramBasicBeanDescription, paramBeanProperty);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findCollectionDeserializer(paramCollectionType, paramDeserializationConfig, paramDeserializerProvider, paramBasicBeanDescription, paramBeanProperty, paramTypeDeserializer, paramJsonDeserializer);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType paramCollectionLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findCollectionLikeDeserializer(paramCollectionLikeType, paramDeserializationConfig, paramDeserializerProvider, paramBasicBeanDescription, paramBeanProperty, paramTypeDeserializer, paramJsonDeserializer);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> paramClass, DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findEnumDeserializer(paramClass, paramDeserializationConfig, paramBasicBeanDescription, paramBeanProperty);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<?> _findCustomMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findMapDeserializer(paramMapType, paramDeserializationConfig, paramDeserializerProvider, paramBasicBeanDescription, paramBeanProperty, paramKeyDeserializer, paramTypeDeserializer, paramJsonDeserializer);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType paramMapLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findMapLikeDeserializer(paramMapLikeType, paramDeserializationConfig, paramDeserializerProvider, paramBasicBeanDescription, paramBeanProperty, paramKeyDeserializer, paramTypeDeserializer, paramJsonDeserializer);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> paramClass, DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty)
  {
    Iterator localIterator = this._factoryConfig.deserializers().iterator();
    while (localIterator.hasNext())
    {
      JsonDeserializer localJsonDeserializer = ((Deserializers)localIterator.next()).findTreeNodeDeserializer(paramClass, paramDeserializationConfig, paramBeanProperty);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return null;
  }

  protected boolean _handleSingleArgumentConstructor(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, VisibilityChecker<?> paramVisibilityChecker, AnnotationIntrospector paramAnnotationIntrospector, CreatorCollector paramCreatorCollector, AnnotatedConstructor paramAnnotatedConstructor, boolean paramBoolean1, boolean paramBoolean2)
  {
    AnnotatedParameter localAnnotatedParameter = paramAnnotatedConstructor.getParameter(0);
    String str = paramAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter);
    Object localObject = paramAnnotationIntrospector.findInjectableValueId(localAnnotatedParameter);
    if ((localObject != null) || ((str != null) && (str.length() > 0)))
    {
      CreatorProperty[] arrayOfCreatorProperty = new CreatorProperty[1];
      arrayOfCreatorProperty[0] = constructCreatorProperty(paramDeserializationConfig, paramBasicBeanDescription, str, 0, localAnnotatedParameter, localObject);
      paramCreatorCollector.addPropertyCreator(paramAnnotatedConstructor, arrayOfCreatorProperty);
      return true;
    }
    Class localClass = paramAnnotatedConstructor.getParameterClass(0);
    if (localClass == String.class)
    {
      if ((paramBoolean1) || (paramBoolean2))
        paramCreatorCollector.addStringCreator(paramAnnotatedConstructor);
      return true;
    }
    if ((localClass == Integer.TYPE) || (localClass == Integer.class))
    {
      if ((paramBoolean1) || (paramBoolean2))
        paramCreatorCollector.addIntCreator(paramAnnotatedConstructor);
      return true;
    }
    if ((localClass == Long.TYPE) || (localClass == Long.class))
    {
      if ((paramBoolean1) || (paramBoolean2))
        paramCreatorCollector.addLongCreator(paramAnnotatedConstructor);
      return true;
    }
    if ((localClass == Double.TYPE) || (localClass == Double.class))
    {
      if ((paramBoolean1) || (paramBoolean2))
        paramCreatorCollector.addDoubleCreator(paramAnnotatedConstructor);
      return true;
    }
    if (paramBoolean1)
    {
      paramCreatorCollector.addDelegatingCreator(paramAnnotatedConstructor);
      return true;
    }
    return false;
  }

  protected boolean _handleSingleArgumentFactory(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, VisibilityChecker<?> paramVisibilityChecker, AnnotationIntrospector paramAnnotationIntrospector, CreatorCollector paramCreatorCollector, AnnotatedMethod paramAnnotatedMethod, boolean paramBoolean)
  {
    Class localClass = paramAnnotatedMethod.getParameterClass(0);
    if (localClass == String.class)
      if ((paramBoolean) || (paramVisibilityChecker.isCreatorVisible(paramAnnotatedMethod)))
        paramCreatorCollector.addStringCreator(paramAnnotatedMethod);
    do
    {
      do
      {
        do
        {
          do
          {
            return true;
            if ((localClass != Integer.TYPE) && (localClass != Integer.class))
              break;
          }
          while ((!paramBoolean) && (!paramVisibilityChecker.isCreatorVisible(paramAnnotatedMethod)));
          paramCreatorCollector.addIntCreator(paramAnnotatedMethod);
          return true;
          if ((localClass != Long.TYPE) && (localClass != Long.class))
            break;
        }
        while ((!paramBoolean) && (!paramVisibilityChecker.isCreatorVisible(paramAnnotatedMethod)));
        paramCreatorCollector.addLongCreator(paramAnnotatedMethod);
        return true;
        if ((localClass != Double.TYPE) && (localClass != Double.class))
          break;
      }
      while ((!paramBoolean) && (!paramVisibilityChecker.isCreatorVisible(paramAnnotatedMethod)));
      paramCreatorCollector.addDoubleCreator(paramAnnotatedMethod);
      return true;
      if ((localClass != Boolean.TYPE) && (localClass != Boolean.class))
        break;
    }
    while ((!paramBoolean) && (!paramVisibilityChecker.isCreatorVisible(paramAnnotatedMethod)));
    paramCreatorCollector.addBooleanCreator(paramAnnotatedMethod);
    return true;
    if (paramAnnotationIntrospector.hasCreatorAnnotation(paramAnnotatedMethod))
    {
      paramCreatorCollector.addDelegatingCreator(paramAnnotatedMethod);
      return true;
    }
    return false;
  }

  protected JavaType _mapAbstractType2(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    Class localClass = paramJavaType.getRawClass();
    if (this._factoryConfig.hasAbstractTypeResolvers())
    {
      Iterator localIterator = this._factoryConfig.abstractTypeResolvers().iterator();
      while (localIterator.hasNext())
      {
        JavaType localJavaType = ((AbstractTypeResolver)localIterator.next()).findTypeMapping(paramDeserializationConfig, paramJavaType);
        if ((localJavaType != null) && (localJavaType.getRawClass() != localClass))
          return localJavaType;
      }
    }
    return null;
  }

  protected void addBeanProps(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    List localList = paramBasicBeanDescription.findProperties();
    AnnotationIntrospector localAnnotationIntrospector = paramDeserializationConfig.getAnnotationIntrospector();
    Boolean localBoolean = localAnnotationIntrospector.findIgnoreUnknownProperties(paramBasicBeanDescription.getClassInfo());
    if (localBoolean != null)
      paramBeanDeserializerBuilder.setIgnoreUnknownProperties(localBoolean.booleanValue());
    HashSet localHashSet = ArrayBuilders.arrayToSet(localAnnotationIntrospector.findPropertiesToIgnore(paramBasicBeanDescription.getClassInfo()));
    Iterator localIterator1 = localHashSet.iterator();
    while (localIterator1.hasNext())
      paramBeanDeserializerBuilder.addIgnorable((String)localIterator1.next());
    Set localSet = paramBasicBeanDescription.getIgnoredPropertyNames();
    if (localSet != null)
    {
      Iterator localIterator4 = localSet.iterator();
      while (localIterator4.hasNext())
        paramBeanDeserializerBuilder.addIgnorable((String)localIterator4.next());
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator2 = localList.iterator();
    while (localIterator2.hasNext())
    {
      BeanPropertyDefinition localBeanPropertyDefinition2 = (BeanPropertyDefinition)localIterator2.next();
      String str2 = localBeanPropertyDefinition2.getName();
      if (!localHashSet.contains(str2))
        if (localBeanPropertyDefinition2.hasConstructorParameter())
        {
          paramBeanDeserializerBuilder.addCreatorProperty(localBeanPropertyDefinition2);
        }
        else if (localBeanPropertyDefinition2.hasSetter())
        {
          AnnotatedMethod localAnnotatedMethod3 = localBeanPropertyDefinition2.getSetter();
          if (isIgnorableType(paramDeserializationConfig, paramBasicBeanDescription, localAnnotatedMethod3.getParameterClass(0), localHashMap))
          {
            paramBeanDeserializerBuilder.addIgnorable(str2);
          }
          else
          {
            SettableBeanProperty localSettableBeanProperty2 = constructSettableProperty(paramDeserializationConfig, paramBasicBeanDescription, str2, localAnnotatedMethod3);
            if (localSettableBeanProperty2 != null)
              paramBeanDeserializerBuilder.addProperty(localSettableBeanProperty2);
          }
        }
        else if (localBeanPropertyDefinition2.hasField())
        {
          AnnotatedField localAnnotatedField = localBeanPropertyDefinition2.getField();
          if (isIgnorableType(paramDeserializationConfig, paramBasicBeanDescription, localAnnotatedField.getRawType(), localHashMap))
          {
            paramBeanDeserializerBuilder.addIgnorable(str2);
          }
          else
          {
            SettableBeanProperty localSettableBeanProperty1 = constructSettableProperty(paramDeserializationConfig, paramBasicBeanDescription, str2, localAnnotatedField);
            if (localSettableBeanProperty1 != null)
              paramBeanDeserializerBuilder.addProperty(localSettableBeanProperty1);
          }
        }
    }
    AnnotatedMethod localAnnotatedMethod1 = paramBasicBeanDescription.findAnySetter();
    if (localAnnotatedMethod1 != null)
      paramBeanDeserializerBuilder.setAnySetter(constructAnySetter(paramDeserializationConfig, paramBasicBeanDescription, localAnnotatedMethod1));
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.USE_GETTERS_AS_SETTERS))
    {
      Iterator localIterator3 = localList.iterator();
      while (localIterator3.hasNext())
      {
        BeanPropertyDefinition localBeanPropertyDefinition1 = (BeanPropertyDefinition)localIterator3.next();
        if (localBeanPropertyDefinition1.hasGetter())
        {
          String str1 = localBeanPropertyDefinition1.getName();
          if ((!paramBeanDeserializerBuilder.hasProperty(str1)) && (!localHashSet.contains(str1)))
          {
            AnnotatedMethod localAnnotatedMethod2 = localBeanPropertyDefinition1.getGetter();
            Class localClass = localAnnotatedMethod2.getRawType();
            if (((Collection.class.isAssignableFrom(localClass)) || (Map.class.isAssignableFrom(localClass))) && (!localHashSet.contains(str1)) && (!paramBeanDeserializerBuilder.hasProperty(str1)))
              paramBeanDeserializerBuilder.addProperty(constructSetterlessProperty(paramDeserializationConfig, paramBasicBeanDescription, str1, localAnnotatedMethod2));
          }
        }
      }
    }
  }

  protected void addInjectables(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    Map localMap = paramBasicBeanDescription.findInjectables();
    if (localMap != null)
    {
      boolean bool = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        AnnotatedMember localAnnotatedMember = (AnnotatedMember)localEntry.getValue();
        if (bool)
          localAnnotatedMember.fixAccess();
        paramBeanDeserializerBuilder.addInjectable(localAnnotatedMember.getName(), paramBasicBeanDescription.resolveType(localAnnotatedMember.getGenericType()), paramBasicBeanDescription.getClassAnnotations(), localAnnotatedMember, localEntry.getKey());
      }
    }
  }

  protected void addReferenceProperties(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    Map localMap = paramBasicBeanDescription.findBackReferenceProperties();
    if (localMap != null)
    {
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        AnnotatedMember localAnnotatedMember = (AnnotatedMember)localEntry.getValue();
        if ((localAnnotatedMember instanceof AnnotatedMethod))
          paramBeanDeserializerBuilder.addBackReferenceProperty(str, constructSettableProperty(paramDeserializationConfig, paramBasicBeanDescription, localAnnotatedMember.getName(), (AnnotatedMethod)localAnnotatedMember));
        else
          paramBeanDeserializerBuilder.addBackReferenceProperty(str, constructSettableProperty(paramDeserializationConfig, paramBasicBeanDescription, localAnnotatedMember.getName(), (AnnotatedField)localAnnotatedMember));
      }
    }
  }

  public JsonDeserializer<Object> buildBeanDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty)
  {
    ValueInstantiator localValueInstantiator = findValueInstantiator(paramDeserializationConfig, paramBasicBeanDescription);
    Object localObject;
    if ((paramJavaType.isAbstract()) && (!localValueInstantiator.canInstantiate()))
      localObject = new AbstractDeserializer(paramJavaType);
    JsonDeserializer localJsonDeserializer;
    while (true)
    {
      return localObject;
      BeanDeserializerBuilder localBeanDeserializerBuilder1 = constructBeanDeserializerBuilder(paramBasicBeanDescription);
      localBeanDeserializerBuilder1.setValueInstantiator(localValueInstantiator);
      addBeanProps(paramDeserializationConfig, paramBasicBeanDescription, localBeanDeserializerBuilder1);
      addReferenceProperties(paramDeserializationConfig, paramBasicBeanDescription, localBeanDeserializerBuilder1);
      addInjectables(paramDeserializationConfig, paramBasicBeanDescription, localBeanDeserializerBuilder1);
      if (this._factoryConfig.hasDeserializerModifiers())
      {
        Iterator localIterator2 = this._factoryConfig.deserializerModifiers().iterator();
        for (localBeanDeserializerBuilder2 = localBeanDeserializerBuilder1; localIterator2.hasNext(); localBeanDeserializerBuilder2 = ((BeanDeserializerModifier)localIterator2.next()).updateBuilder(paramDeserializationConfig, paramBasicBeanDescription, localBeanDeserializerBuilder2));
      }
      BeanDeserializerBuilder localBeanDeserializerBuilder2 = localBeanDeserializerBuilder1;
      localJsonDeserializer = localBeanDeserializerBuilder2.build(paramBeanProperty);
      if (!this._factoryConfig.hasDeserializerModifiers())
        break;
      Iterator localIterator1 = this._factoryConfig.deserializerModifiers().iterator();
      for (localObject = localJsonDeserializer; localIterator1.hasNext(); localObject = ((BeanDeserializerModifier)localIterator1.next()).modifyDeserializer(paramDeserializationConfig, paramBasicBeanDescription, (JsonDeserializer)localObject));
    }
    return localJsonDeserializer;
  }

  public JsonDeserializer<Object> buildThrowableDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BasicBeanDescription paramBasicBeanDescription, BeanProperty paramBeanProperty)
  {
    BeanDeserializerBuilder localBeanDeserializerBuilder1 = constructBeanDeserializerBuilder(paramBasicBeanDescription);
    localBeanDeserializerBuilder1.setValueInstantiator(findValueInstantiator(paramDeserializationConfig, paramBasicBeanDescription));
    addBeanProps(paramDeserializationConfig, paramBasicBeanDescription, localBeanDeserializerBuilder1);
    AnnotatedMethod localAnnotatedMethod = paramBasicBeanDescription.findMethod("initCause", INIT_CAUSE_PARAMS);
    if (localAnnotatedMethod != null)
    {
      SettableBeanProperty localSettableBeanProperty = constructSettableProperty(paramDeserializationConfig, paramBasicBeanDescription, "cause", localAnnotatedMethod);
      if (localSettableBeanProperty != null)
        localBeanDeserializerBuilder1.addOrReplaceProperty(localSettableBeanProperty, true);
    }
    localBeanDeserializerBuilder1.addIgnorable("localizedMessage");
    localBeanDeserializerBuilder1.addIgnorable("message");
    if (this._factoryConfig.hasDeserializerModifiers())
    {
      Iterator localIterator2 = this._factoryConfig.deserializerModifiers().iterator();
      for (localBeanDeserializerBuilder2 = localBeanDeserializerBuilder1; localIterator2.hasNext(); localBeanDeserializerBuilder2 = ((BeanDeserializerModifier)localIterator2.next()).updateBuilder(paramDeserializationConfig, paramBasicBeanDescription, localBeanDeserializerBuilder2));
    }
    BeanDeserializerBuilder localBeanDeserializerBuilder2 = localBeanDeserializerBuilder1;
    Object localObject1 = localBeanDeserializerBuilder2.build(paramBeanProperty);
    if ((localObject1 instanceof BeanDeserializer))
      localObject1 = new ThrowableDeserializer((BeanDeserializer)localObject1);
    if (this._factoryConfig.hasDeserializerModifiers())
    {
      Iterator localIterator1 = this._factoryConfig.deserializerModifiers().iterator();
      for (localObject2 = localObject1; localIterator1.hasNext(); localObject2 = ((BeanDeserializerModifier)localIterator1.next()).modifyDeserializer(paramDeserializationConfig, paramBasicBeanDescription, (JsonDeserializer)localObject2));
    }
    Object localObject2 = localObject1;
    return localObject2;
  }

  protected SettableAnyProperty constructAnySetter(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, AnnotatedMethod paramAnnotatedMethod)
  {
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
      paramAnnotatedMethod.fixAccess();
    JavaType localJavaType1 = paramBasicBeanDescription.bindingsForBeanType().resolveType(paramAnnotatedMethod.getParameterType(1));
    BeanProperty.Std localStd = new BeanProperty.Std(paramAnnotatedMethod.getName(), localJavaType1, paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedMethod);
    JavaType localJavaType2 = resolveType(paramDeserializationConfig, paramBasicBeanDescription, localJavaType1, paramAnnotatedMethod, localStd);
    JsonDeserializer localJsonDeserializer = findDeserializerFromAnnotation(paramDeserializationConfig, paramAnnotatedMethod, localStd);
    if (localJsonDeserializer != null)
      return new SettableAnyProperty(localStd, paramAnnotatedMethod, localJavaType2, localJsonDeserializer);
    return new SettableAnyProperty(localStd, paramAnnotatedMethod, modifyTypeByAnnotation(paramDeserializationConfig, paramAnnotatedMethod, localJavaType2, localStd.getName()), null);
  }

  protected BeanDeserializerBuilder constructBeanDeserializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    return new BeanDeserializerBuilder(paramBasicBeanDescription);
  }

  protected CreatorProperty constructCreatorProperty(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, String paramString, int paramInt, AnnotatedParameter paramAnnotatedParameter, Object paramObject)
  {
    JavaType localJavaType1 = paramDeserializationConfig.getTypeFactory().constructType(paramAnnotatedParameter.getParameterType(), paramBasicBeanDescription.bindingsForBeanType());
    BeanProperty.Std localStd = new BeanProperty.Std(paramString, localJavaType1, paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedParameter);
    JavaType localJavaType2 = resolveType(paramDeserializationConfig, paramBasicBeanDescription, localJavaType1, paramAnnotatedParameter, localStd);
    if (localJavaType2 != localJavaType1)
      localStd = localStd.withType(localJavaType2);
    JsonDeserializer localJsonDeserializer = findDeserializerFromAnnotation(paramDeserializationConfig, paramAnnotatedParameter, localStd);
    JavaType localJavaType3 = modifyTypeByAnnotation(paramDeserializationConfig, paramAnnotatedParameter, localJavaType2, paramString);
    TypeDeserializer localTypeDeserializer1 = (TypeDeserializer)localJavaType3.getTypeHandler();
    if (localTypeDeserializer1 == null);
    for (TypeDeserializer localTypeDeserializer2 = findTypeDeserializer(paramDeserializationConfig, localJavaType3, localStd); ; localTypeDeserializer2 = localTypeDeserializer1)
    {
      CreatorProperty localCreatorProperty = new CreatorProperty(paramString, localJavaType3, localTypeDeserializer2, paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedParameter, paramInt, paramObject);
      if (localJsonDeserializer != null)
        localCreatorProperty = localCreatorProperty.withValueDeserializer(localJsonDeserializer);
      return localCreatorProperty;
    }
  }

  protected ValueInstantiator constructDefaultValueInstantiator(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    boolean bool = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    CreatorCollector localCreatorCollector = new CreatorCollector(paramBasicBeanDescription, bool);
    AnnotationIntrospector localAnnotationIntrospector = paramDeserializationConfig.getAnnotationIntrospector();
    if (paramBasicBeanDescription.getType().isConcrete())
    {
      AnnotatedConstructor localAnnotatedConstructor = paramBasicBeanDescription.findDefaultConstructor();
      if (localAnnotatedConstructor != null)
      {
        if (bool)
          ClassUtil.checkAndFixAccess(localAnnotatedConstructor.getAnnotated());
        localCreatorCollector.setDefaultConstructor(localAnnotatedConstructor);
      }
    }
    VisibilityChecker localVisibilityChecker1 = paramDeserializationConfig.getDefaultVisibilityChecker();
    VisibilityChecker localVisibilityChecker2 = paramDeserializationConfig.getAnnotationIntrospector().findAutoDetectVisibility(paramBasicBeanDescription.getClassInfo(), localVisibilityChecker1);
    _addDeserializerFactoryMethods(paramDeserializationConfig, paramBasicBeanDescription, localVisibilityChecker2, localAnnotationIntrospector, localCreatorCollector);
    _addDeserializerConstructors(paramDeserializationConfig, paramBasicBeanDescription, localVisibilityChecker2, localAnnotationIntrospector, localCreatorCollector);
    return localCreatorCollector.constructValueInstantiator(paramDeserializationConfig);
  }

  protected SettableBeanProperty constructSettableProperty(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, String paramString, AnnotatedField paramAnnotatedField)
  {
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
      paramAnnotatedField.fixAccess();
    JavaType localJavaType1 = paramBasicBeanDescription.bindingsForBeanType().resolveType(paramAnnotatedField.getGenericType());
    BeanProperty.Std localStd = new BeanProperty.Std(paramString, localJavaType1, paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedField);
    JavaType localJavaType2 = resolveType(paramDeserializationConfig, paramBasicBeanDescription, localJavaType1, paramAnnotatedField, localStd);
    if (localJavaType2 != localJavaType1)
      localStd = localStd.withType(localJavaType2);
    JsonDeserializer localJsonDeserializer = findDeserializerFromAnnotation(paramDeserializationConfig, paramAnnotatedField, localStd);
    JavaType localJavaType3 = modifyTypeByAnnotation(paramDeserializationConfig, paramAnnotatedField, localJavaType2, paramString);
    Object localObject = new SettableBeanProperty.FieldProperty(paramString, localJavaType3, (TypeDeserializer)localJavaType3.getTypeHandler(), paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedField);
    if (localJsonDeserializer != null)
      localObject = ((SettableBeanProperty)localObject).withValueDeserializer(localJsonDeserializer);
    AnnotationIntrospector.ReferenceProperty localReferenceProperty = paramDeserializationConfig.getAnnotationIntrospector().findReferenceType(paramAnnotatedField);
    if ((localReferenceProperty != null) && (localReferenceProperty.isManagedReference()))
      ((SettableBeanProperty)localObject).setManagedReferenceName(localReferenceProperty.getName());
    return localObject;
  }

  protected SettableBeanProperty constructSettableProperty(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, String paramString, AnnotatedMethod paramAnnotatedMethod)
  {
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
      paramAnnotatedMethod.fixAccess();
    JavaType localJavaType1 = paramBasicBeanDescription.bindingsForBeanType().resolveType(paramAnnotatedMethod.getParameterType(0));
    BeanProperty.Std localStd = new BeanProperty.Std(paramString, localJavaType1, paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedMethod);
    JavaType localJavaType2 = resolveType(paramDeserializationConfig, paramBasicBeanDescription, localJavaType1, paramAnnotatedMethod, localStd);
    if (localJavaType2 != localJavaType1)
      localStd = localStd.withType(localJavaType2);
    JsonDeserializer localJsonDeserializer = findDeserializerFromAnnotation(paramDeserializationConfig, paramAnnotatedMethod, localStd);
    JavaType localJavaType3 = modifyTypeByAnnotation(paramDeserializationConfig, paramAnnotatedMethod, localJavaType2, paramString);
    Object localObject = new SettableBeanProperty.MethodProperty(paramString, localJavaType3, (TypeDeserializer)localJavaType3.getTypeHandler(), paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedMethod);
    if (localJsonDeserializer != null)
      localObject = ((SettableBeanProperty)localObject).withValueDeserializer(localJsonDeserializer);
    AnnotationIntrospector.ReferenceProperty localReferenceProperty = paramDeserializationConfig.getAnnotationIntrospector().findReferenceType(paramAnnotatedMethod);
    if ((localReferenceProperty != null) && (localReferenceProperty.isManagedReference()))
      ((SettableBeanProperty)localObject).setManagedReferenceName(localReferenceProperty.getName());
    return localObject;
  }

  protected SettableBeanProperty constructSetterlessProperty(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, String paramString, AnnotatedMethod paramAnnotatedMethod)
  {
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
      paramAnnotatedMethod.fixAccess();
    JavaType localJavaType1 = paramAnnotatedMethod.getType(paramBasicBeanDescription.bindingsForBeanType());
    JsonDeserializer localJsonDeserializer = findDeserializerFromAnnotation(paramDeserializationConfig, paramAnnotatedMethod, new BeanProperty.Std(paramString, localJavaType1, paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedMethod));
    JavaType localJavaType2 = modifyTypeByAnnotation(paramDeserializationConfig, paramAnnotatedMethod, localJavaType1, paramString);
    Object localObject = new SettableBeanProperty.SetterlessProperty(paramString, localJavaType2, (TypeDeserializer)localJavaType2.getTypeHandler(), paramBasicBeanDescription.getClassAnnotations(), paramAnnotatedMethod);
    if (localJsonDeserializer != null)
      localObject = ((SettableBeanProperty)localObject).withValueDeserializer(localJsonDeserializer);
    return localObject;
  }

  public JsonDeserializer<Object> createBeanDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    if (paramJavaType.isAbstract())
      paramJavaType = mapAbstractType(paramDeserializationConfig, paramJavaType);
    BasicBeanDescription localBasicBeanDescription1 = (BasicBeanDescription)paramDeserializationConfig.introspect(paramJavaType);
    JsonDeserializer localJsonDeserializer1 = findDeserializerFromAnnotation(paramDeserializationConfig, localBasicBeanDescription1.getClassInfo(), paramBeanProperty);
    JsonDeserializer localJsonDeserializer2;
    if (localJsonDeserializer1 != null)
    {
      localJsonDeserializer2 = localJsonDeserializer1;
      return localJsonDeserializer2;
    }
    JavaType localJavaType1 = modifyTypeByAnnotation(paramDeserializationConfig, localBasicBeanDescription1.getClassInfo(), paramJavaType, null);
    BasicBeanDescription localBasicBeanDescription2;
    if (localJavaType1.getRawClass() != paramJavaType.getRawClass())
      localBasicBeanDescription2 = (BasicBeanDescription)paramDeserializationConfig.introspect(localJavaType1);
    while (true)
    {
      localJsonDeserializer2 = _findCustomBeanDeserializer(localJavaType1, paramDeserializationConfig, paramDeserializerProvider, localBasicBeanDescription2, paramBeanProperty);
      if (localJsonDeserializer2 != null)
        break;
      if (localJavaType1.isThrowable())
        return buildThrowableDeserializer(paramDeserializationConfig, localJavaType1, localBasicBeanDescription2, paramBeanProperty);
      if (localJavaType1.isAbstract())
      {
        JavaType localJavaType2 = materializeAbstractType(paramDeserializationConfig, localBasicBeanDescription2);
        if (localJavaType2 != null)
          return buildBeanDeserializer(paramDeserializationConfig, localJavaType2, (BasicBeanDescription)paramDeserializationConfig.introspect(localJavaType2), paramBeanProperty);
      }
      localJsonDeserializer2 = findStdBeanDeserializer(paramDeserializationConfig, paramDeserializerProvider, localJavaType1, paramBeanProperty);
      if (localJsonDeserializer2 != null)
        break;
      if (!isPotentialBeanType(localJavaType1.getRawClass()))
        return null;
      return buildBeanDeserializer(paramDeserializationConfig, localJavaType1, localBasicBeanDescription2, paramBeanProperty);
      localBasicBeanDescription2 = localBasicBeanDescription1;
      localJavaType1 = paramJavaType;
    }
  }

  public KeyDeserializer createKeyDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    if (this._factoryConfig.hasKeyDeserializers())
    {
      BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectClassAnnotations(paramJavaType.getRawClass());
      Iterator localIterator = this._factoryConfig.keyDeserializers().iterator();
      while (localIterator.hasNext())
      {
        KeyDeserializer localKeyDeserializer = ((KeyDeserializers)localIterator.next()).findKeyDeserializer(paramJavaType, paramDeserializationConfig, localBasicBeanDescription, paramBeanProperty);
        if (localKeyDeserializer != null)
          return localKeyDeserializer;
      }
    }
    return null;
  }

  public ValueInstantiator findValueInstantiator(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    AnnotatedClass localAnnotatedClass = paramBasicBeanDescription.getClassInfo();
    Object localObject = paramDeserializationConfig.getAnnotationIntrospector().findValueInstantiator(localAnnotatedClass);
    ValueInstantiator localValueInstantiator1;
    if (localObject != null)
      if ((localObject instanceof ValueInstantiator))
        localValueInstantiator1 = (ValueInstantiator)localObject;
    while (this._factoryConfig.hasValueInstantiators())
    {
      Iterator localIterator = this._factoryConfig.valueInstantiators().iterator();
      localValueInstantiator2 = localValueInstantiator1;
      ValueInstantiators localValueInstantiators;
      do
      {
        if (!localIterator.hasNext())
          break;
        localValueInstantiators = (ValueInstantiators)localIterator.next();
        localValueInstantiator2 = localValueInstantiators.findValueInstantiator(paramDeserializationConfig, paramBasicBeanDescription, localValueInstantiator2);
      }
      while (localValueInstantiator2 != null);
      throw new JsonMappingException("Broken registered ValueInstantiators (of type " + localValueInstantiators.getClass().getName() + "): returned null ValueInstantiator");
      if (!(localObject instanceof Class))
        throw new IllegalStateException("Invalid value instantiator returned for type " + paramBasicBeanDescription + ": neither a Class nor ValueInstantiator");
      Class localClass = (Class)localObject;
      if (!ValueInstantiator.class.isAssignableFrom(localClass))
        throw new IllegalStateException("Invalid instantiator Class<?> returned for type " + paramBasicBeanDescription + ": " + localClass.getName() + " not a ValueInstantiator");
      localValueInstantiator1 = paramDeserializationConfig.valueInstantiatorInstance(localAnnotatedClass, localClass);
      continue;
      localValueInstantiator1 = constructDefaultValueInstantiator(paramDeserializationConfig, paramBasicBeanDescription);
    }
    ValueInstantiator localValueInstantiator2 = localValueInstantiator1;
    return localValueInstantiator2;
  }

  public final DeserializerFactory.Config getConfig()
  {
    return this._factoryConfig;
  }

  protected boolean isIgnorableType(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription, Class<?> paramClass, Map<Class<?>, Boolean> paramMap)
  {
    Boolean localBoolean = (Boolean)paramMap.get(paramClass);
    if (localBoolean == null)
    {
      BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspectClassAnnotations(paramClass);
      localBoolean = paramDeserializationConfig.getAnnotationIntrospector().isIgnorableType(localBasicBeanDescription.getClassInfo());
      if (localBoolean == null)
        localBoolean = Boolean.FALSE;
    }
    return localBoolean.booleanValue();
  }

  protected boolean isPotentialBeanType(Class<?> paramClass)
  {
    String str1 = ClassUtil.canBeABeanType(paramClass);
    if (str1 != null)
      throw new IllegalArgumentException("Can not deserialize Class " + paramClass.getName() + " (of type " + str1 + ") as a Bean");
    if (ClassUtil.isProxyType(paramClass))
      throw new IllegalArgumentException("Can not deserialize Proxy class " + paramClass.getName() + " as a Bean");
    String str2 = ClassUtil.isLocalType(paramClass, true);
    if (str2 != null)
      throw new IllegalArgumentException("Can not deserialize Class " + paramClass.getName() + " (of type " + str2 + ") as a Bean");
    return true;
  }

  public JavaType mapAbstractType(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    while (true)
    {
      JavaType localJavaType = _mapAbstractType2(paramDeserializationConfig, paramJavaType);
      if (localJavaType == null)
        return paramJavaType;
      Class localClass1 = paramJavaType.getRawClass();
      Class localClass2 = localJavaType.getRawClass();
      if ((localClass1 == localClass2) || (!localClass1.isAssignableFrom(localClass2)))
        throw new IllegalArgumentException("Invalid abstract type resolution from " + paramJavaType + " to " + localJavaType + ": latter is not a subtype of former");
      paramJavaType = localJavaType;
    }
  }

  protected JavaType materializeAbstractType(DeserializationConfig paramDeserializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    JavaType localJavaType1 = paramBasicBeanDescription.getType();
    Iterator localIterator = this._factoryConfig.abstractTypeResolvers().iterator();
    while (localIterator.hasNext())
    {
      JavaType localJavaType2 = ((AbstractTypeResolver)localIterator.next()).resolveAbstractType(paramDeserializationConfig, localJavaType1);
      if (localJavaType2 != null)
        return localJavaType2;
    }
    return null;
  }

  public DeserializerFactory withConfig(DeserializerFactory.Config paramConfig)
  {
    if (this._factoryConfig == paramConfig)
      return this;
    if (getClass() != BeanDeserializerFactory.class)
      throw new IllegalStateException("Subtype of BeanDeserializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalDeserializers': can not instantiate subtype with additional deserializer definitions");
    return new BeanDeserializerFactory(paramConfig);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.BeanDeserializerFactory
 * JD-Core Version:    0.6.2
 */