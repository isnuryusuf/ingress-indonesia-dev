package org.codehaus.jackson.map;

import java.text.DateFormat;
import java.util.HashMap;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.jsontype.impl.StdSubtypeResolver;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.StdDateFormat;
import org.codehaus.jackson.type.JavaType;

public abstract class MapperConfig<T extends MapperConfig<T>>
  implements ClassIntrospector.MixInResolver
{
  protected static final DateFormat DEFAULT_DATE_FORMAT = StdDateFormat.instance;
  protected MapperConfig.Base _base;
  protected HashMap<ClassKey, Class<?>> _mixInAnnotations;
  protected boolean _mixInAnnotationsShared;
  protected SubtypeResolver _subtypeResolver;

  protected MapperConfig(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator)
  {
    this._base = new MapperConfig.Base(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramPropertyNamingStrategy, paramTypeFactory, null, DEFAULT_DATE_FORMAT, paramHandlerInstantiator);
    this._subtypeResolver = paramSubtypeResolver;
    this._mixInAnnotationsShared = true;
  }

  protected MapperConfig(MapperConfig<T> paramMapperConfig, MapperConfig.Base paramBase, SubtypeResolver paramSubtypeResolver)
  {
    this._base = paramBase;
    this._subtypeResolver = paramSubtypeResolver;
    this._mixInAnnotationsShared = true;
    this._mixInAnnotations = paramMapperConfig._mixInAnnotations;
  }

  public final void addMixInAnnotations(Class<?> paramClass1, Class<?> paramClass2)
  {
    if (this._mixInAnnotations == null)
    {
      this._mixInAnnotationsShared = false;
      this._mixInAnnotations = new HashMap();
    }
    while (true)
    {
      this._mixInAnnotations.put(new ClassKey(paramClass1), paramClass2);
      return;
      if (this._mixInAnnotationsShared)
      {
        this._mixInAnnotationsShared = false;
        this._mixInAnnotations = new HashMap(this._mixInAnnotations);
      }
    }
  }

  public abstract boolean canOverrideAccessModifiers();

  public JavaType constructSpecializedType(JavaType paramJavaType, Class<?> paramClass)
  {
    return getTypeFactory().constructSpecializedType(paramJavaType, paramClass);
  }

  public final JavaType constructType(Class<?> paramClass)
  {
    return getTypeFactory().constructType(paramClass, null);
  }

  public final Class<?> findMixInClassFor(Class<?> paramClass)
  {
    if (this._mixInAnnotations == null)
      return null;
    return (Class)this._mixInAnnotations.get(new ClassKey(paramClass));
  }

  public AnnotationIntrospector getAnnotationIntrospector()
  {
    return this._base.getAnnotationIntrospector();
  }

  public ClassIntrospector<? extends BeanDescription> getClassIntrospector()
  {
    return this._base.getClassIntrospector();
  }

  public final DateFormat getDateFormat()
  {
    return this._base.getDateFormat();
  }

  public final TypeResolverBuilder<?> getDefaultTyper(JavaType paramJavaType)
  {
    return this._base.getTypeResolverBuilder();
  }

  public VisibilityChecker<?> getDefaultVisibilityChecker()
  {
    return this._base.getVisibilityChecker();
  }

  public final HandlerInstantiator getHandlerInstantiator()
  {
    return this._base.getHandlerInstantiator();
  }

  public final PropertyNamingStrategy getPropertyNamingStrategy()
  {
    return this._base.getPropertyNamingStrategy();
  }

  public final SubtypeResolver getSubtypeResolver()
  {
    if (this._subtypeResolver == null)
      this._subtypeResolver = new StdSubtypeResolver();
    return this._subtypeResolver;
  }

  public final TypeFactory getTypeFactory()
  {
    return this._base.getTypeFactory();
  }

  public <DESC extends BeanDescription> DESC introspectClassAnnotations(Class<?> paramClass)
  {
    return introspectClassAnnotations(constructType(paramClass));
  }

  public abstract <DESC extends BeanDescription> DESC introspectClassAnnotations(JavaType paramJavaType);

  public abstract boolean isAnnotationProcessingEnabled();

  public abstract boolean shouldSortPropertiesAlphabetically();

  public TypeIdResolver typeIdResolverInstance(Annotated paramAnnotated, Class<? extends TypeIdResolver> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      TypeIdResolver localTypeIdResolver = localHandlerInstantiator.typeIdResolverInstance(this, paramAnnotated, paramClass);
      if (localTypeIdResolver != null)
        return localTypeIdResolver;
    }
    return (TypeIdResolver)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }

  public TypeResolverBuilder<?> typeResolverBuilderInstance(Annotated paramAnnotated, Class<? extends TypeResolverBuilder<?>> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      TypeResolverBuilder localTypeResolverBuilder = localHandlerInstantiator.typeResolverBuilderInstance(this, paramAnnotated, paramClass);
      if (localTypeResolverBuilder != null)
        return localTypeResolverBuilder;
    }
    return (TypeResolverBuilder)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.MapperConfig
 * JD-Core Version:    0.6.2
 */