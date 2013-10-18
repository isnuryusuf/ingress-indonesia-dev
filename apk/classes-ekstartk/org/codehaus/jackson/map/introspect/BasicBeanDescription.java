package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.AnnotationIntrospector.ReferenceProperty;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class BasicBeanDescription extends BeanDescription
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected AnnotatedMethod _anyGetterMethod;
  protected AnnotatedMethod _anySetterMethod;
  protected TypeBindings _bindings;
  protected final AnnotatedClass _classInfo;
  protected final MapperConfig<?> _config;
  protected Set<String> _ignoredPropertyNames;
  protected Map<Object, AnnotatedMember> _injectables;
  protected AnnotatedMethod _jsonValueMethod;
  protected final List<BeanPropertyDefinition> _properties;

  protected BasicBeanDescription(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, AnnotatedClass paramAnnotatedClass, List<BeanPropertyDefinition> paramList)
  {
    super(paramJavaType);
    this._config = paramMapperConfig;
    if (paramMapperConfig == null);
    for (AnnotationIntrospector localAnnotationIntrospector = null; ; localAnnotationIntrospector = paramMapperConfig.getAnnotationIntrospector())
    {
      this._annotationIntrospector = localAnnotationIntrospector;
      this._classInfo = paramAnnotatedClass;
      this._properties = paramList;
      return;
    }
  }

  public static BasicBeanDescription forDeserialization(POJOPropertiesCollector paramPOJOPropertiesCollector)
  {
    BasicBeanDescription localBasicBeanDescription = new BasicBeanDescription(paramPOJOPropertiesCollector.getConfig(), paramPOJOPropertiesCollector.getType(), paramPOJOPropertiesCollector.getClassDef(), paramPOJOPropertiesCollector.getProperties());
    localBasicBeanDescription._anySetterMethod = paramPOJOPropertiesCollector.getAnySetterMethod();
    localBasicBeanDescription._ignoredPropertyNames = paramPOJOPropertiesCollector.getIgnoredPropertyNames();
    localBasicBeanDescription._injectables = paramPOJOPropertiesCollector.getInjectables();
    return localBasicBeanDescription;
  }

  public static BasicBeanDescription forOtherUse(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, AnnotatedClass paramAnnotatedClass)
  {
    return new BasicBeanDescription(paramMapperConfig, paramJavaType, paramAnnotatedClass, Collections.emptyList());
  }

  public static BasicBeanDescription forSerialization(POJOPropertiesCollector paramPOJOPropertiesCollector)
  {
    BasicBeanDescription localBasicBeanDescription = new BasicBeanDescription(paramPOJOPropertiesCollector.getConfig(), paramPOJOPropertiesCollector.getType(), paramPOJOPropertiesCollector.getClassDef(), paramPOJOPropertiesCollector.getProperties());
    localBasicBeanDescription._jsonValueMethod = paramPOJOPropertiesCollector.getJsonValueMethod();
    localBasicBeanDescription._anyGetterMethod = paramPOJOPropertiesCollector.getAnyGetterMethod();
    return localBasicBeanDescription;
  }

  public TypeBindings bindingsForBeanType()
  {
    if (this._bindings == null)
      this._bindings = new TypeBindings(this._config.getTypeFactory(), this._type);
    return this._bindings;
  }

  public AnnotatedMethod findAnyGetter()
  {
    if ((this._anyGetterMethod != null) && (!Map.class.isAssignableFrom(this._anyGetterMethod.getRawType())))
      throw new IllegalArgumentException("Invalid 'any-getter' annotation on method " + this._anyGetterMethod.getName() + "(): return type is not instance of java.util.Map");
    return this._anyGetterMethod;
  }

  public AnnotatedMethod findAnySetter()
  {
    if (this._anySetterMethod != null)
    {
      Class localClass = this._anySetterMethod.getParameterClass(0);
      if ((localClass != String.class) && (localClass != Object.class))
        throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + this._anySetterMethod.getName() + "(): first argument not of type String or Object, but " + localClass.getName());
    }
    return this._anySetterMethod;
  }

  public Map<String, AnnotatedMember> findBackReferenceProperties()
  {
    Object localObject1 = null;
    Iterator localIterator = this._properties.iterator();
    while (true)
    {
      AnnotatedMember localAnnotatedMember;
      AnnotationIntrospector.ReferenceProperty localReferenceProperty;
      if (localIterator.hasNext())
      {
        localAnnotatedMember = ((BeanPropertyDefinition)localIterator.next()).getMutator();
        if (localAnnotatedMember != null)
        {
          localReferenceProperty = this._annotationIntrospector.findReferenceType(localAnnotatedMember);
          if ((localReferenceProperty != null) && (localReferenceProperty.isBackReference()))
            if (localObject1 != null);
        }
      }
      else
      {
        for (Object localObject2 = new HashMap(); ; localObject2 = localObject1)
        {
          String str = localReferenceProperty.getName();
          if (((HashMap)localObject2).put(str, localAnnotatedMember) == null)
            break;
          throw new IllegalArgumentException("Multiple back-reference properties with name '" + str + "'");
          return localObject1;
        }
        localObject1 = localObject2;
      }
    }
  }

  public AnnotatedConstructor findDefaultConstructor()
  {
    return this._classInfo.getDefaultConstructor();
  }

  public Method findFactoryMethod(Class<?>[] paramArrayOfClass)
  {
    Iterator localIterator = this._classInfo.getStaticMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (isFactoryMethod(localAnnotatedMethod))
      {
        Class localClass = localAnnotatedMethod.getParameterClass(0);
        int i = paramArrayOfClass.length;
        for (int j = 0; j < i; j++)
          if (localClass.isAssignableFrom(paramArrayOfClass[j]))
            return localAnnotatedMethod.getAnnotated();
      }
    }
    return null;
  }

  public Map<Object, AnnotatedMember> findInjectables()
  {
    return this._injectables;
  }

  public AnnotatedMethod findJsonValueMethod()
  {
    return this._jsonValueMethod;
  }

  public AnnotatedMethod findMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    return this._classInfo.findMethod(paramString, paramArrayOfClass);
  }

  public List<BeanPropertyDefinition> findProperties()
  {
    return this._properties;
  }

  public JsonSerialize.Inclusion findSerializationInclusion(JsonSerialize.Inclusion paramInclusion)
  {
    if (this._annotationIntrospector == null)
      return paramInclusion;
    return this._annotationIntrospector.findSerializationInclusion(this._classInfo, paramInclusion);
  }

  public Constructor<?> findSingleArgConstructor(Class<?>[] paramArrayOfClass)
  {
    Iterator localIterator = this._classInfo.getConstructors().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedConstructor localAnnotatedConstructor = (AnnotatedConstructor)localIterator.next();
      if (localAnnotatedConstructor.getParameterCount() == 1)
      {
        Class localClass = localAnnotatedConstructor.getParameterClass(0);
        int i = paramArrayOfClass.length;
        for (int j = 0; j < i; j++)
          if (paramArrayOfClass[j] == localClass)
            return localAnnotatedConstructor.getAnnotated();
      }
    }
    return null;
  }

  public Annotations getClassAnnotations()
  {
    return this._classInfo.getAnnotations();
  }

  public AnnotatedClass getClassInfo()
  {
    return this._classInfo;
  }

  public List<AnnotatedConstructor> getConstructors()
  {
    return this._classInfo.getConstructors();
  }

  public List<AnnotatedMethod> getFactoryMethods()
  {
    List localList = this._classInfo.getStaticMethods();
    if (localList.isEmpty())
      return localList;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (isFactoryMethod(localAnnotatedMethod))
        localArrayList.add(localAnnotatedMethod);
    }
    return localArrayList;
  }

  public Set<String> getIgnoredPropertyNames()
  {
    if (this._ignoredPropertyNames == null)
      return Collections.emptySet();
    return this._ignoredPropertyNames;
  }

  public boolean hasKnownClassAnnotations()
  {
    return this._classInfo.hasAnnotations();
  }

  public Object instantiateBean(boolean paramBoolean)
  {
    AnnotatedConstructor localAnnotatedConstructor = this._classInfo.getDefaultConstructor();
    if (localAnnotatedConstructor == null)
      return null;
    if (paramBoolean)
      localAnnotatedConstructor.fixAccess();
    try
    {
      Object localObject = localAnnotatedConstructor.getAnnotated().newInstance(new Object[0]);
      return localObject;
      label38: Throwable localThrowable;
      while (localThrowable.getCause() != null)
        localThrowable = localThrowable.getCause();
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      throw new IllegalArgumentException("Failed to instantiate bean of type " + this._classInfo.getAnnotated().getName() + ": (" + localThrowable.getClass().getName() + ") " + localThrowable.getMessage(), localThrowable);
    }
    catch (Exception localException)
    {
      break label38;
    }
  }

  protected boolean isFactoryMethod(AnnotatedMethod paramAnnotatedMethod)
  {
    Class localClass = paramAnnotatedMethod.getRawType();
    if (!getBeanClass().isAssignableFrom(localClass));
    do
    {
      return false;
      if (this._annotationIntrospector.hasCreatorAnnotation(paramAnnotatedMethod))
        return true;
    }
    while (!"valueOf".equals(paramAnnotatedMethod.getName()));
    return true;
  }

  public JavaType resolveType(Type paramType)
  {
    if (paramType == null)
      return null;
    return bindingsForBeanType().resolveType(paramType);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicBeanDescription
 * JD-Core Version:    0.6.2
 */