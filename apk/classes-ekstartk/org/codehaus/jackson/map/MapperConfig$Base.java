package org.codehaus.jackson.map;

import java.text.DateFormat;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.type.TypeFactory;

public class MapperConfig$Base
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final ClassIntrospector<? extends BeanDescription> _classIntrospector;
  protected final DateFormat _dateFormat;
  protected final HandlerInstantiator _handlerInstantiator;
  protected final PropertyNamingStrategy _propertyNamingStrategy;
  protected final TypeFactory _typeFactory;
  protected final TypeResolverBuilder<?> _typeResolverBuilder;
  protected final VisibilityChecker<?> _visibilityChecker;

  public MapperConfig$Base(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, TypeResolverBuilder<?> paramTypeResolverBuilder, DateFormat paramDateFormat, HandlerInstantiator paramHandlerInstantiator)
  {
    this._classIntrospector = paramClassIntrospector;
    this._annotationIntrospector = paramAnnotationIntrospector;
    this._visibilityChecker = paramVisibilityChecker;
    this._propertyNamingStrategy = paramPropertyNamingStrategy;
    this._typeFactory = paramTypeFactory;
    this._typeResolverBuilder = paramTypeResolverBuilder;
    this._dateFormat = paramDateFormat;
    this._handlerInstantiator = paramHandlerInstantiator;
  }

  public AnnotationIntrospector getAnnotationIntrospector()
  {
    return this._annotationIntrospector;
  }

  public ClassIntrospector<? extends BeanDescription> getClassIntrospector()
  {
    return this._classIntrospector;
  }

  public DateFormat getDateFormat()
  {
    return this._dateFormat;
  }

  public HandlerInstantiator getHandlerInstantiator()
  {
    return this._handlerInstantiator;
  }

  public PropertyNamingStrategy getPropertyNamingStrategy()
  {
    return this._propertyNamingStrategy;
  }

  public TypeFactory getTypeFactory()
  {
    return this._typeFactory;
  }

  public TypeResolverBuilder<?> getTypeResolverBuilder()
  {
    return this._typeResolverBuilder;
  }

  public VisibilityChecker<?> getVisibilityChecker()
  {
    return this._visibilityChecker;
  }

  public Base withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
  {
    return new Base(this._classIntrospector, this._annotationIntrospector, paramVisibilityChecker, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.MapperConfig.Base
 * JD-Core Version:    0.6.2
 */