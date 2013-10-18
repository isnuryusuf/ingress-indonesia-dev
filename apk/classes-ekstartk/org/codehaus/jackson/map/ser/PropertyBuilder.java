package org.codehaus.jackson.map.ser;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.annotate.JsonSerialize.Typing;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.Comparators;
import org.codehaus.jackson.type.JavaType;

public class PropertyBuilder
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final BasicBeanDescription _beanDesc;
  protected final SerializationConfig _config;
  protected Object _defaultBean;
  protected final JsonSerialize.Inclusion _outputProps;

  public PropertyBuilder(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    this._config = paramSerializationConfig;
    this._beanDesc = paramBasicBeanDescription;
    this._outputProps = paramBasicBeanDescription.findSerializationInclusion(paramSerializationConfig.getSerializationInclusion());
    this._annotationIntrospector = this._config.getAnnotationIntrospector();
  }

  protected Object _throwWrapped(Exception paramException, String paramString, Object paramObject)
  {
    for (Object localObject = paramException; ((Throwable)localObject).getCause() != null; localObject = ((Throwable)localObject).getCause());
    if ((localObject instanceof Error))
      throw ((Error)localObject);
    if ((localObject instanceof RuntimeException))
      throw ((RuntimeException)localObject);
    throw new IllegalArgumentException("Failed to get property '" + paramString + "' of default " + paramObject.getClass().getName() + " instance");
  }

  protected BeanPropertyWriter buildWriter(String paramString, JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer1, TypeSerializer paramTypeSerializer2, AnnotatedMember paramAnnotatedMember, boolean paramBoolean)
  {
    Method localMethod;
    if ((paramAnnotatedMember instanceof AnnotatedField))
      localMethod = null;
    JavaType localJavaType1;
    for (Field localField = ((AnnotatedField)paramAnnotatedMember).getAnnotated(); ; localField = null)
    {
      localJavaType1 = findSerializationType(paramAnnotatedMember, paramBoolean, paramJavaType);
      if (paramTypeSerializer2 == null)
        break label382;
      if (localJavaType1 == null)
        localJavaType1 = paramJavaType;
      if (localJavaType1.getContentType() != null)
        break;
      throw new IllegalStateException("Problem trying to create BeanPropertyWriter for property '" + paramString + "' (of type " + this._beanDesc.getType() + "); serialization type " + localJavaType1 + " has no content");
      localMethod = ((AnnotatedMethod)paramAnnotatedMember).getAnnotated();
    }
    JavaType localJavaType2 = localJavaType1.withContentTypeHandler(paramTypeSerializer2);
    localJavaType2.getContentType();
    while (true)
    {
      JsonSerialize.Inclusion localInclusion = this._annotationIntrospector.findSerializationInclusion(paramAnnotatedMember, this._outputProps);
      boolean bool1 = false;
      Object localObject = null;
      int i;
      if (localInclusion != null)
      {
        i = PropertyBuilder.1.$SwitchMap$org$codehaus$jackson$map$annotate$JsonSerialize$Inclusion[localInclusion.ordinal()];
        localObject = null;
        bool1 = false;
      }
      boolean bool2;
      switch (i)
      {
      default:
        bool2 = bool1;
      case 1:
      case 2:
      case 3:
      case 4:
      }
      while (true)
      {
        BeanPropertyWriter localBeanPropertyWriter = new BeanPropertyWriter(paramAnnotatedMember, this._beanDesc.getClassAnnotations(), paramString, paramJavaType, paramJsonSerializer, paramTypeSerializer1, localJavaType2, localMethod, localField, bool2, localObject);
        Boolean localBoolean = this._annotationIntrospector.shouldUnwrapProperty(paramAnnotatedMember);
        if ((localBoolean != null) && (localBoolean.booleanValue()))
          localBeanPropertyWriter = localBeanPropertyWriter.unwrappingWriter();
        return localBeanPropertyWriter;
        localObject = getDefaultValue(paramString, localMethod, localField);
        if (localObject == null)
        {
          bool2 = true;
        }
        else
        {
          boolean bool4 = localObject.getClass().isArray();
          bool1 = false;
          if (!bool4)
            break;
          localObject = Comparators.getArrayComparator(localObject);
          bool2 = false;
          continue;
          localObject = getEmptyValueChecker(paramString, paramJavaType);
          bool2 = true;
          continue;
          bool1 = true;
          boolean bool3 = paramJavaType.isContainerType();
          localObject = null;
          if (!bool3)
            break;
          localObject = getContainerValueChecker(paramString, paramJavaType);
          bool2 = bool1;
        }
      }
      label382: localJavaType2 = localJavaType1;
    }
  }

  protected JavaType findSerializationType(Annotated paramAnnotated, boolean paramBoolean, JavaType paramJavaType)
  {
    boolean bool1 = true;
    Class localClass1 = this._annotationIntrospector.findSerializationType(paramAnnotated);
    Class localClass2;
    Object localObject;
    if (localClass1 != null)
    {
      localClass2 = paramJavaType.getRawClass();
      if (localClass1.isAssignableFrom(localClass2))
      {
        localObject = paramJavaType.widenBy(localClass1);
        paramBoolean = bool1;
      }
    }
    while (true)
    {
      JavaType localJavaType = BeanSerializerFactory.modifySecondaryTypesByAnnotation(this._config, paramAnnotated, (JavaType)localObject);
      if (localJavaType != localObject)
        localObject = localJavaType;
      for (boolean bool2 = bool1; ; bool2 = paramBoolean)
      {
        if (!bool2)
        {
          JsonSerialize.Typing localTyping = this._annotationIntrospector.findSerializationTyping(paramAnnotated);
          if (localTyping != null)
            if (localTyping != JsonSerialize.Typing.STATIC);
        }
        while (true)
        {
          if (bool1)
          {
            return localObject;
            if (!localClass2.isAssignableFrom(localClass1))
              throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + paramAnnotated.getName() + "': class " + localClass1.getName() + " not a super-type of (declared) class " + localClass2.getName());
            localObject = this._config.constructSpecializedType(paramJavaType, localClass1);
            break;
            bool1 = false;
            continue;
          }
          return null;
          bool1 = bool2;
        }
      }
      localObject = paramJavaType;
    }
  }

  public Annotations getClassAnnotations()
  {
    return this._beanDesc.getClassAnnotations();
  }

  protected Object getContainerValueChecker(String paramString, JavaType paramJavaType)
  {
    if (!this._config.isEnabled(SerializationConfig.Feature.WRITE_EMPTY_JSON_ARRAYS))
    {
      if (paramJavaType.isArrayType())
        return new PropertyBuilder.EmptyArrayChecker();
      if (Collection.class.isAssignableFrom(paramJavaType.getRawClass()))
        return new PropertyBuilder.EmptyCollectionChecker();
    }
    return null;
  }

  protected Object getDefaultBean()
  {
    if (this._defaultBean == null)
    {
      this._defaultBean = this._beanDesc.instantiateBean(this._config.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS));
      if (this._defaultBean == null)
      {
        Class localClass = this._beanDesc.getClassInfo().getAnnotated();
        throw new IllegalArgumentException("Class " + localClass.getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
      }
    }
    return this._defaultBean;
  }

  protected Object getDefaultValue(String paramString, Method paramMethod, Field paramField)
  {
    Object localObject1 = getDefaultBean();
    if (paramMethod != null);
    try
    {
      return paramMethod.invoke(localObject1, new Object[0]);
      Object localObject2 = paramField.get(localObject1);
      return localObject2;
    }
    catch (Exception localException)
    {
      return _throwWrapped(localException, paramString, localObject1);
    }
  }

  protected Object getEmptyValueChecker(String paramString, JavaType paramJavaType)
  {
    Class localClass = paramJavaType.getRawClass();
    if (localClass == String.class)
      return new PropertyBuilder.EmptyStringChecker();
    if (paramJavaType.isArrayType())
      return new PropertyBuilder.EmptyArrayChecker();
    if (Collection.class.isAssignableFrom(localClass))
      return new PropertyBuilder.EmptyCollectionChecker();
    if (Map.class.isAssignableFrom(localClass))
      return new PropertyBuilder.EmptyMapChecker();
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.PropertyBuilder
 * JD-Core Version:    0.6.2
 */