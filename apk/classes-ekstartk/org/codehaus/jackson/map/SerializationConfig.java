package org.codehaus.jackson.map;

import java.util.HashMap;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.ser.FilterProvider;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public class SerializationConfig extends MapperConfig.Impl<SerializationConfig.Feature, SerializationConfig>
{
  protected FilterProvider _filterProvider;
  protected JsonSerialize.Inclusion _serializationInclusion = null;
  protected Class<?> _serializationView;

  public SerializationConfig(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator)
  {
    super(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramSubtypeResolver, paramPropertyNamingStrategy, paramTypeFactory, paramHandlerInstantiator, collectFeatureDefaults(SerializationConfig.Feature.class));
    this._filterProvider = null;
  }

  protected SerializationConfig(SerializationConfig paramSerializationConfig, HashMap<ClassKey, Class<?>> paramHashMap, SubtypeResolver paramSubtypeResolver)
  {
    this(paramSerializationConfig, paramSerializationConfig._base);
    this._mixInAnnotations = paramHashMap;
    this._subtypeResolver = paramSubtypeResolver;
  }

  protected SerializationConfig(SerializationConfig paramSerializationConfig, MapperConfig.Base paramBase)
  {
    super(paramSerializationConfig, paramBase, paramSerializationConfig._subtypeResolver);
    this._serializationInclusion = paramSerializationConfig._serializationInclusion;
    this._serializationView = paramSerializationConfig._serializationView;
    this._filterProvider = paramSerializationConfig._filterProvider;
  }

  public boolean canOverrideAccessModifiers()
  {
    return isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
  }

  public SerializationConfig createUnshared(SubtypeResolver paramSubtypeResolver)
  {
    HashMap localHashMap = this._mixInAnnotations;
    this._mixInAnnotationsShared = true;
    return new SerializationConfig(this, localHashMap, paramSubtypeResolver);
  }

  @Deprecated
  public void disable(SerializationConfig.Feature paramFeature)
  {
    super.disable(paramFeature);
  }

  @Deprecated
  public void enable(SerializationConfig.Feature paramFeature)
  {
    super.enable(paramFeature);
  }

  public AnnotationIntrospector getAnnotationIntrospector()
  {
    if (isEnabled(SerializationConfig.Feature.USE_ANNOTATIONS))
      return super.getAnnotationIntrospector();
    return AnnotationIntrospector.nopInstance();
  }

  public VisibilityChecker<?> getDefaultVisibilityChecker()
  {
    VisibilityChecker localVisibilityChecker = super.getDefaultVisibilityChecker();
    if (!isEnabled(SerializationConfig.Feature.AUTO_DETECT_GETTERS))
      localVisibilityChecker = localVisibilityChecker.withGetterVisibility(JsonAutoDetect.Visibility.NONE);
    if (!isEnabled(SerializationConfig.Feature.AUTO_DETECT_IS_GETTERS))
      localVisibilityChecker = localVisibilityChecker.withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
    if (!isEnabled(SerializationConfig.Feature.AUTO_DETECT_FIELDS))
      localVisibilityChecker = localVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.NONE);
    return localVisibilityChecker;
  }

  public FilterProvider getFilterProvider()
  {
    return this._filterProvider;
  }

  public JsonSerialize.Inclusion getSerializationInclusion()
  {
    if (this._serializationInclusion != null)
      return this._serializationInclusion;
    if (isEnabled(SerializationConfig.Feature.WRITE_NULL_PROPERTIES))
      return JsonSerialize.Inclusion.ALWAYS;
    return JsonSerialize.Inclusion.NON_NULL;
  }

  public Class<?> getSerializationView()
  {
    return this._serializationView;
  }

  public <T extends BeanDescription> T introspect(JavaType paramJavaType)
  {
    return getClassIntrospector().forSerialization(this, paramJavaType, this);
  }

  public <T extends BeanDescription> T introspectClassAnnotations(JavaType paramJavaType)
  {
    return getClassIntrospector().forClassAnnotations(this, paramJavaType, this);
  }

  public boolean isAnnotationProcessingEnabled()
  {
    return isEnabled(SerializationConfig.Feature.USE_ANNOTATIONS);
  }

  public boolean isEnabled(SerializationConfig.Feature paramFeature)
  {
    return (this._featureFlags & paramFeature.getMask()) != 0;
  }

  public JsonSerializer<Object> serializerInstance(Annotated paramAnnotated, Class<? extends JsonSerializer<?>> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      JsonSerializer localJsonSerializer = localHandlerInstantiator.serializerInstance(this, paramAnnotated, paramClass);
      if (localJsonSerializer != null)
        return localJsonSerializer;
    }
    return (JsonSerializer)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }

  @Deprecated
  public void set(SerializationConfig.Feature paramFeature, boolean paramBoolean)
  {
    super.set(paramFeature, paramBoolean);
  }

  public boolean shouldSortPropertiesAlphabetically()
  {
    return isEnabled(SerializationConfig.Feature.SORT_PROPERTIES_ALPHABETICALLY);
  }

  public String toString()
  {
    return "[SerializationConfig: flags=0x" + Integer.toHexString(this._featureFlags) + "]";
  }

  public SerializationConfig withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
  {
    return new SerializationConfig(this, this._base.withVisibilityChecker(paramVisibilityChecker));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.SerializationConfig
 * JD-Core Version:    0.6.2
 */