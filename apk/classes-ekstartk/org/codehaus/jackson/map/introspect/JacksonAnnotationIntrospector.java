package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import org.codehaus.jackson.annotate.JacksonAnnotation;
import org.codehaus.jackson.annotate.JsonAnyGetter;
import org.codehaus.jackson.annotate.JsonAnySetter;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonGetter;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.annotate.JsonIgnoreType;
import org.codehaus.jackson.annotate.JsonManagedReference;
import org.codehaus.jackson.annotate.JsonProperty;
import org.codehaus.jackson.annotate.JsonPropertyOrder;
import org.codehaus.jackson.annotate.JsonRawValue;
import org.codehaus.jackson.annotate.JsonSetter;
import org.codehaus.jackson.annotate.JsonSubTypes;
import org.codehaus.jackson.annotate.JsonSubTypes.Type;
import org.codehaus.jackson.annotate.JsonTypeInfo;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.annotate.JsonTypeInfo.None;
import org.codehaus.jackson.annotate.JsonTypeName;
import org.codehaus.jackson.annotate.JsonUnwrapped;
import org.codehaus.jackson.annotate.JsonValue;
import org.codehaus.jackson.annotate.JsonWriteNullProperties;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.AnnotationIntrospector.ReferenceProperty;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonDeserializer.None;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.JsonSerializer.None;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.KeyDeserializer.None;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.annotate.JacksonInject;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.annotate.JsonDeserialize;
import org.codehaus.jackson.map.annotate.JsonFilter;
import org.codehaus.jackson.map.annotate.JsonRootName;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.annotate.JsonSerialize.Typing;
import org.codehaus.jackson.map.annotate.JsonTypeIdResolver;
import org.codehaus.jackson.map.annotate.JsonTypeResolver;
import org.codehaus.jackson.map.annotate.JsonValueInstantiator;
import org.codehaus.jackson.map.annotate.JsonView;
import org.codehaus.jackson.map.annotate.NoClass;
import org.codehaus.jackson.map.jsontype.NamedType;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.jsontype.impl.StdTypeResolverBuilder;
import org.codehaus.jackson.map.ser.std.RawSerializer;
import org.codehaus.jackson.type.JavaType;

public class JacksonAnnotationIntrospector extends AnnotationIntrospector
{
  protected StdTypeResolverBuilder _constructStdTypeResolverBuilder()
  {
    return new StdTypeResolverBuilder();
  }

  protected TypeResolverBuilder<?> _findTypeResolver(MapperConfig<?> paramMapperConfig, Annotated paramAnnotated, JavaType paramJavaType)
  {
    JsonTypeInfo localJsonTypeInfo = (JsonTypeInfo)paramAnnotated.getAnnotation(JsonTypeInfo.class);
    JsonTypeResolver localJsonTypeResolver = (JsonTypeResolver)paramAnnotated.getAnnotation(JsonTypeResolver.class);
    Object localObject;
    JsonTypeIdResolver localJsonTypeIdResolver;
    TypeIdResolver localTypeIdResolver;
    if (localJsonTypeResolver != null)
    {
      if (localJsonTypeInfo == null)
        return null;
      localObject = paramMapperConfig.typeResolverBuilderInstance(paramAnnotated, localJsonTypeResolver.value());
      localJsonTypeIdResolver = (JsonTypeIdResolver)paramAnnotated.getAnnotation(JsonTypeIdResolver.class);
      localTypeIdResolver = null;
      if (localJsonTypeIdResolver != null)
        break label205;
    }
    TypeResolverBuilder localTypeResolverBuilder2;
    while (true)
    {
      if (localTypeIdResolver != null)
        localTypeIdResolver.init(paramJavaType);
      TypeResolverBuilder localTypeResolverBuilder1 = ((TypeResolverBuilder)localObject).init(localJsonTypeInfo.use(), localTypeIdResolver);
      JsonTypeInfo.As localAs = localJsonTypeInfo.include();
      if ((localAs == JsonTypeInfo.As.EXTERNAL_PROPERTY) && ((paramAnnotated instanceof AnnotatedClass)))
        localAs = JsonTypeInfo.As.PROPERTY;
      localTypeResolverBuilder2 = localTypeResolverBuilder1.inclusion(localAs).typeProperty(localJsonTypeInfo.property());
      Class localClass = localJsonTypeInfo.defaultImpl();
      if (localClass == JsonTypeInfo.None.class)
        break label222;
      return localTypeResolverBuilder2.defaultImpl(localClass);
      if ((localJsonTypeInfo == null) || (localJsonTypeInfo.use() == JsonTypeInfo.Id.NONE))
        return null;
      localObject = _constructStdTypeResolverBuilder();
      break;
      label205: localTypeIdResolver = paramMapperConfig.typeIdResolverInstance(paramAnnotated, localJsonTypeIdResolver.value());
    }
    label222: return localTypeResolverBuilder2;
  }

  protected boolean _isIgnorable(Annotated paramAnnotated)
  {
    JsonIgnore localJsonIgnore = (JsonIgnore)paramAnnotated.getAnnotation(JsonIgnore.class);
    return (localJsonIgnore != null) && (localJsonIgnore.value());
  }

  public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass paramAnnotatedClass, VisibilityChecker<?> paramVisibilityChecker)
  {
    JsonAutoDetect localJsonAutoDetect = (JsonAutoDetect)paramAnnotatedClass.getAnnotation(JsonAutoDetect.class);
    if (localJsonAutoDetect == null)
      return paramVisibilityChecker;
    return paramVisibilityChecker.with(localJsonAutoDetect);
  }

  public Boolean findCachability(AnnotatedClass paramAnnotatedClass)
  {
    JsonCachable localJsonCachable = (JsonCachable)paramAnnotatedClass.getAnnotation(JsonCachable.class);
    if (localJsonCachable == null)
      return null;
    if (localJsonCachable.value())
      return Boolean.TRUE;
    return Boolean.FALSE;
  }

  public Class<? extends JsonDeserializer<?>> findContentDeserializer(Annotated paramAnnotated)
  {
    JsonDeserialize localJsonDeserialize = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (localJsonDeserialize != null)
    {
      Class localClass = localJsonDeserialize.contentUsing();
      if (localClass != JsonDeserializer.None.class)
        return localClass;
    }
    return null;
  }

  public Class<? extends JsonSerializer<?>> findContentSerializer(Annotated paramAnnotated)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
    {
      Class localClass = localJsonSerialize.contentUsing();
      if (localClass != JsonSerializer.None.class)
        return localClass;
    }
    return null;
  }

  public String findDeserializablePropertyName(AnnotatedField paramAnnotatedField)
  {
    JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedField.getAnnotation(JsonProperty.class);
    if (localJsonProperty != null)
      return localJsonProperty.value();
    if ((paramAnnotatedField.hasAnnotation(JsonDeserialize.class)) || (paramAnnotatedField.hasAnnotation(JsonView.class)) || (paramAnnotatedField.hasAnnotation(JsonBackReference.class)) || (paramAnnotatedField.hasAnnotation(JsonManagedReference.class)))
      return "";
    return null;
  }

  public Class<?> findDeserializationContentType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    JsonDeserialize localJsonDeserialize = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (localJsonDeserialize != null)
    {
      Class localClass = localJsonDeserialize.contentAs();
      if (localClass != NoClass.class)
        return localClass;
    }
    return null;
  }

  public Class<?> findDeserializationKeyType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    JsonDeserialize localJsonDeserialize = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (localJsonDeserialize != null)
    {
      Class localClass = localJsonDeserialize.keyAs();
      if (localClass != NoClass.class)
        return localClass;
    }
    return null;
  }

  public Class<?> findDeserializationType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    JsonDeserialize localJsonDeserialize = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (localJsonDeserialize != null)
    {
      Class localClass = localJsonDeserialize.as();
      if (localClass != NoClass.class)
        return localClass;
    }
    return null;
  }

  public Class<? extends JsonDeserializer<?>> findDeserializer(Annotated paramAnnotated)
  {
    JsonDeserialize localJsonDeserialize = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (localJsonDeserialize != null)
    {
      Class localClass = localJsonDeserialize.using();
      if (localClass != JsonDeserializer.None.class)
        return localClass;
    }
    return null;
  }

  public String findEnumValue(Enum<?> paramEnum)
  {
    return paramEnum.name();
  }

  public Object findFilterId(AnnotatedClass paramAnnotatedClass)
  {
    JsonFilter localJsonFilter = (JsonFilter)paramAnnotatedClass.getAnnotation(JsonFilter.class);
    if (localJsonFilter != null)
    {
      String str = localJsonFilter.value();
      if (str.length() > 0)
        return str;
    }
    return null;
  }

  public String findGettablePropertyName(AnnotatedMethod paramAnnotatedMethod)
  {
    JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedMethod.getAnnotation(JsonProperty.class);
    if (localJsonProperty != null)
      return localJsonProperty.value();
    JsonGetter localJsonGetter = (JsonGetter)paramAnnotatedMethod.getAnnotation(JsonGetter.class);
    if (localJsonGetter != null)
      return localJsonGetter.value();
    if ((paramAnnotatedMethod.hasAnnotation(JsonSerialize.class)) || (paramAnnotatedMethod.hasAnnotation(JsonView.class)))
      return "";
    return null;
  }

  public Boolean findIgnoreUnknownProperties(AnnotatedClass paramAnnotatedClass)
  {
    JsonIgnoreProperties localJsonIgnoreProperties = (JsonIgnoreProperties)paramAnnotatedClass.getAnnotation(JsonIgnoreProperties.class);
    if (localJsonIgnoreProperties == null)
      return null;
    return Boolean.valueOf(localJsonIgnoreProperties.ignoreUnknown());
  }

  public Object findInjectableValueId(AnnotatedMember paramAnnotatedMember)
  {
    JacksonInject localJacksonInject = (JacksonInject)paramAnnotatedMember.getAnnotation(JacksonInject.class);
    Object localObject;
    if (localJacksonInject == null)
      localObject = null;
    do
    {
      return localObject;
      localObject = localJacksonInject.value();
    }
    while (((String)localObject).length() != 0);
    if (!(paramAnnotatedMember instanceof AnnotatedMethod))
      return paramAnnotatedMember.getRawType().getName();
    AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)paramAnnotatedMember;
    if (localAnnotatedMethod.getParameterCount() == 0)
      return paramAnnotatedMember.getRawType().getName();
    return localAnnotatedMethod.getParameterClass(0).getName();
  }

  public Class<? extends KeyDeserializer> findKeyDeserializer(Annotated paramAnnotated)
  {
    JsonDeserialize localJsonDeserialize = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (localJsonDeserialize != null)
    {
      Class localClass = localJsonDeserialize.keyUsing();
      if (localClass != KeyDeserializer.None.class)
        return localClass;
    }
    return null;
  }

  public Class<? extends JsonSerializer<?>> findKeySerializer(Annotated paramAnnotated)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
    {
      Class localClass = localJsonSerialize.keyUsing();
      if (localClass != JsonSerializer.None.class)
        return localClass;
    }
    return null;
  }

  public String[] findPropertiesToIgnore(AnnotatedClass paramAnnotatedClass)
  {
    JsonIgnoreProperties localJsonIgnoreProperties = (JsonIgnoreProperties)paramAnnotatedClass.getAnnotation(JsonIgnoreProperties.class);
    if (localJsonIgnoreProperties == null)
      return null;
    return localJsonIgnoreProperties.value();
  }

  public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedMember paramAnnotatedMember, JavaType paramJavaType)
  {
    if (!paramJavaType.isContainerType())
      throw new IllegalArgumentException("Must call method with a container type (got " + paramJavaType + ")");
    return _findTypeResolver(paramMapperConfig, paramAnnotatedMember, paramJavaType);
  }

  public String findPropertyNameForParam(AnnotatedParameter paramAnnotatedParameter)
  {
    if (paramAnnotatedParameter != null)
    {
      JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedParameter.getAnnotation(JsonProperty.class);
      if (localJsonProperty != null)
        return localJsonProperty.value();
    }
    return null;
  }

  public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedMember paramAnnotatedMember, JavaType paramJavaType)
  {
    if (paramJavaType.isContainerType())
      return null;
    return _findTypeResolver(paramMapperConfig, paramAnnotatedMember, paramJavaType);
  }

  public AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember paramAnnotatedMember)
  {
    JsonManagedReference localJsonManagedReference = (JsonManagedReference)paramAnnotatedMember.getAnnotation(JsonManagedReference.class);
    if (localJsonManagedReference != null)
      return AnnotationIntrospector.ReferenceProperty.managed(localJsonManagedReference.value());
    JsonBackReference localJsonBackReference = (JsonBackReference)paramAnnotatedMember.getAnnotation(JsonBackReference.class);
    if (localJsonBackReference != null)
      return AnnotationIntrospector.ReferenceProperty.back(localJsonBackReference.value());
    return null;
  }

  public String findRootName(AnnotatedClass paramAnnotatedClass)
  {
    JsonRootName localJsonRootName = (JsonRootName)paramAnnotatedClass.getAnnotation(JsonRootName.class);
    if (localJsonRootName == null)
      return null;
    return localJsonRootName.value();
  }

  public String findSerializablePropertyName(AnnotatedField paramAnnotatedField)
  {
    JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedField.getAnnotation(JsonProperty.class);
    if (localJsonProperty != null)
      return localJsonProperty.value();
    if ((paramAnnotatedField.hasAnnotation(JsonSerialize.class)) || (paramAnnotatedField.hasAnnotation(JsonView.class)))
      return "";
    return null;
  }

  public Class<?> findSerializationContentType(Annotated paramAnnotated, JavaType paramJavaType)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
    {
      Class localClass = localJsonSerialize.contentAs();
      if (localClass != NoClass.class)
        return localClass;
    }
    return null;
  }

  public JsonSerialize.Inclusion findSerializationInclusion(Annotated paramAnnotated, JsonSerialize.Inclusion paramInclusion)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
      paramInclusion = localJsonSerialize.include();
    JsonWriteNullProperties localJsonWriteNullProperties;
    do
    {
      return paramInclusion;
      localJsonWriteNullProperties = (JsonWriteNullProperties)paramAnnotated.getAnnotation(JsonWriteNullProperties.class);
    }
    while (localJsonWriteNullProperties == null);
    if (localJsonWriteNullProperties.value())
      return JsonSerialize.Inclusion.ALWAYS;
    return JsonSerialize.Inclusion.NON_NULL;
  }

  public Class<?> findSerializationKeyType(Annotated paramAnnotated, JavaType paramJavaType)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
    {
      Class localClass = localJsonSerialize.keyAs();
      if (localClass != NoClass.class)
        return localClass;
    }
    return null;
  }

  public String[] findSerializationPropertyOrder(AnnotatedClass paramAnnotatedClass)
  {
    JsonPropertyOrder localJsonPropertyOrder = (JsonPropertyOrder)paramAnnotatedClass.getAnnotation(JsonPropertyOrder.class);
    if (localJsonPropertyOrder == null)
      return null;
    return localJsonPropertyOrder.value();
  }

  public Boolean findSerializationSortAlphabetically(AnnotatedClass paramAnnotatedClass)
  {
    JsonPropertyOrder localJsonPropertyOrder = (JsonPropertyOrder)paramAnnotatedClass.getAnnotation(JsonPropertyOrder.class);
    if (localJsonPropertyOrder == null)
      return null;
    return Boolean.valueOf(localJsonPropertyOrder.alphabetic());
  }

  public Class<?> findSerializationType(Annotated paramAnnotated)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
    {
      Class localClass = localJsonSerialize.as();
      if (localClass != NoClass.class)
        return localClass;
    }
    return null;
  }

  public JsonSerialize.Typing findSerializationTyping(Annotated paramAnnotated)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize == null)
      return null;
    return localJsonSerialize.typing();
  }

  public Class<?>[] findSerializationViews(Annotated paramAnnotated)
  {
    JsonView localJsonView = (JsonView)paramAnnotated.getAnnotation(JsonView.class);
    if (localJsonView == null)
      return null;
    return localJsonView.value();
  }

  public Object findSerializer(Annotated paramAnnotated)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null)
    {
      Class localClass = localJsonSerialize.using();
      if (localClass != JsonSerializer.None.class)
        return localClass;
    }
    JsonRawValue localJsonRawValue = (JsonRawValue)paramAnnotated.getAnnotation(JsonRawValue.class);
    if ((localJsonRawValue != null) && (localJsonRawValue.value()))
      return new RawSerializer(paramAnnotated.getRawType());
    return null;
  }

  public String findSettablePropertyName(AnnotatedMethod paramAnnotatedMethod)
  {
    JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedMethod.getAnnotation(JsonProperty.class);
    if (localJsonProperty != null)
      return localJsonProperty.value();
    JsonSetter localJsonSetter = (JsonSetter)paramAnnotatedMethod.getAnnotation(JsonSetter.class);
    if (localJsonSetter != null)
      return localJsonSetter.value();
    if ((paramAnnotatedMethod.hasAnnotation(JsonDeserialize.class)) || (paramAnnotatedMethod.hasAnnotation(JsonView.class)) || (paramAnnotatedMethod.hasAnnotation(JsonBackReference.class)) || (paramAnnotatedMethod.hasAnnotation(JsonManagedReference.class)))
      return "";
    return null;
  }

  public List<NamedType> findSubtypes(Annotated paramAnnotated)
  {
    JsonSubTypes localJsonSubTypes = (JsonSubTypes)paramAnnotated.getAnnotation(JsonSubTypes.class);
    Object localObject;
    if (localJsonSubTypes == null)
      localObject = null;
    while (true)
    {
      return localObject;
      JsonSubTypes.Type[] arrayOfType = localJsonSubTypes.value();
      localObject = new ArrayList(arrayOfType.length);
      int i = arrayOfType.length;
      for (int j = 0; j < i; j++)
      {
        JsonSubTypes.Type localType = arrayOfType[j];
        ((ArrayList)localObject).add(new NamedType(localType.value(), localType.name()));
      }
    }
  }

  public String findTypeName(AnnotatedClass paramAnnotatedClass)
  {
    JsonTypeName localJsonTypeName = (JsonTypeName)paramAnnotatedClass.getAnnotation(JsonTypeName.class);
    if (localJsonTypeName == null)
      return null;
    return localJsonTypeName.value();
  }

  public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedClass paramAnnotatedClass, JavaType paramJavaType)
  {
    return _findTypeResolver(paramMapperConfig, paramAnnotatedClass, paramJavaType);
  }

  public Object findValueInstantiator(AnnotatedClass paramAnnotatedClass)
  {
    JsonValueInstantiator localJsonValueInstantiator = (JsonValueInstantiator)paramAnnotatedClass.getAnnotation(JsonValueInstantiator.class);
    if (localJsonValueInstantiator == null)
      return null;
    return localJsonValueInstantiator.value();
  }

  public boolean hasAnyGetterAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    return paramAnnotatedMethod.hasAnnotation(JsonAnyGetter.class);
  }

  public boolean hasAnySetterAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    return paramAnnotatedMethod.hasAnnotation(JsonAnySetter.class);
  }

  public boolean hasAsValueAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    JsonValue localJsonValue = (JsonValue)paramAnnotatedMethod.getAnnotation(JsonValue.class);
    return (localJsonValue != null) && (localJsonValue.value());
  }

  public boolean hasCreatorAnnotation(Annotated paramAnnotated)
  {
    return paramAnnotated.hasAnnotation(JsonCreator.class);
  }

  public boolean hasIgnoreMarker(AnnotatedMember paramAnnotatedMember)
  {
    return _isIgnorable(paramAnnotatedMember);
  }

  public boolean isHandled(Annotation paramAnnotation)
  {
    return paramAnnotation.annotationType().getAnnotation(JacksonAnnotation.class) != null;
  }

  public boolean isIgnorableConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    return _isIgnorable(paramAnnotatedConstructor);
  }

  public boolean isIgnorableField(AnnotatedField paramAnnotatedField)
  {
    return _isIgnorable(paramAnnotatedField);
  }

  public boolean isIgnorableMethod(AnnotatedMethod paramAnnotatedMethod)
  {
    return _isIgnorable(paramAnnotatedMethod);
  }

  public Boolean isIgnorableType(AnnotatedClass paramAnnotatedClass)
  {
    JsonIgnoreType localJsonIgnoreType = (JsonIgnoreType)paramAnnotatedClass.getAnnotation(JsonIgnoreType.class);
    if (localJsonIgnoreType == null)
      return null;
    return Boolean.valueOf(localJsonIgnoreType.value());
  }

  public Boolean shouldUnwrapProperty(AnnotatedMember paramAnnotatedMember)
  {
    JsonUnwrapped localJsonUnwrapped = (JsonUnwrapped)paramAnnotatedMember.getAnnotation(JsonUnwrapped.class);
    if ((localJsonUnwrapped != null) && (localJsonUnwrapped.enabled()))
      return Boolean.TRUE;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.JacksonAnnotationIntrospector
 * JD-Core Version:    0.6.2
 */