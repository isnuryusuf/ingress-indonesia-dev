package org.codehaus.jackson.map;

import java.util.HashMap;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.Base64Variants;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.NopAnnotationIntrospector;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.LinkedNode;
import org.codehaus.jackson.node.JsonNodeFactory;
import org.codehaus.jackson.type.JavaType;

public class DeserializationConfig extends MapperConfig.Impl<DeserializationConfig.Feature, DeserializationConfig>
{
  protected final JsonNodeFactory _nodeFactory;
  protected LinkedNode<DeserializationProblemHandler> _problemHandlers;
  protected boolean _sortPropertiesAlphabetically;

  public DeserializationConfig(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator)
  {
    super(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramSubtypeResolver, paramPropertyNamingStrategy, paramTypeFactory, paramHandlerInstantiator, collectFeatureDefaults(DeserializationConfig.Feature.class));
    this._nodeFactory = JsonNodeFactory.instance;
  }

  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, HashMap<ClassKey, Class<?>> paramHashMap, SubtypeResolver paramSubtypeResolver)
  {
    this(paramDeserializationConfig, paramDeserializationConfig._base);
    this._mixInAnnotations = paramHashMap;
    this._subtypeResolver = paramSubtypeResolver;
  }

  protected DeserializationConfig(DeserializationConfig paramDeserializationConfig, MapperConfig.Base paramBase)
  {
    super(paramDeserializationConfig, paramBase, paramDeserializationConfig._subtypeResolver);
    this._problemHandlers = paramDeserializationConfig._problemHandlers;
    this._nodeFactory = paramDeserializationConfig._nodeFactory;
    this._sortPropertiesAlphabetically = paramDeserializationConfig._sortPropertiesAlphabetically;
  }

  public boolean canOverrideAccessModifiers()
  {
    return isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
  }

  public DeserializationConfig createUnshared(SubtypeResolver paramSubtypeResolver)
  {
    HashMap localHashMap = this._mixInAnnotations;
    this._mixInAnnotationsShared = true;
    return new DeserializationConfig(this, localHashMap, paramSubtypeResolver);
  }

  public JsonDeserializer<Object> deserializerInstance(Annotated paramAnnotated, Class<? extends JsonDeserializer<?>> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      JsonDeserializer localJsonDeserializer = localHandlerInstantiator.deserializerInstance(this, paramAnnotated, paramClass);
      if (localJsonDeserializer != null)
        return localJsonDeserializer;
    }
    return (JsonDeserializer)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }

  @Deprecated
  public void disable(DeserializationConfig.Feature paramFeature)
  {
    super.disable(paramFeature);
  }

  @Deprecated
  public void enable(DeserializationConfig.Feature paramFeature)
  {
    super.enable(paramFeature);
  }

  public AnnotationIntrospector getAnnotationIntrospector()
  {
    if (isEnabled(DeserializationConfig.Feature.USE_ANNOTATIONS))
      return super.getAnnotationIntrospector();
    return NopAnnotationIntrospector.instance;
  }

  public Base64Variant getBase64Variant()
  {
    return Base64Variants.getDefaultVariant();
  }

  public VisibilityChecker<?> getDefaultVisibilityChecker()
  {
    VisibilityChecker localVisibilityChecker = super.getDefaultVisibilityChecker();
    if (!isEnabled(DeserializationConfig.Feature.AUTO_DETECT_SETTERS))
      localVisibilityChecker = localVisibilityChecker.withSetterVisibility(JsonAutoDetect.Visibility.NONE);
    if (!isEnabled(DeserializationConfig.Feature.AUTO_DETECT_CREATORS))
      localVisibilityChecker = localVisibilityChecker.withCreatorVisibility(JsonAutoDetect.Visibility.NONE);
    if (!isEnabled(DeserializationConfig.Feature.AUTO_DETECT_FIELDS))
      localVisibilityChecker = localVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.NONE);
    return localVisibilityChecker;
  }

  public final JsonNodeFactory getNodeFactory()
  {
    return this._nodeFactory;
  }

  public LinkedNode<DeserializationProblemHandler> getProblemHandlers()
  {
    return this._problemHandlers;
  }

  public <T extends BeanDescription> T introspect(JavaType paramJavaType)
  {
    return getClassIntrospector().forDeserialization(this, paramJavaType, this);
  }

  public <T extends BeanDescription> T introspectClassAnnotations(JavaType paramJavaType)
  {
    return getClassIntrospector().forClassAnnotations(this, paramJavaType, this);
  }

  public <T extends BeanDescription> T introspectForCreation(JavaType paramJavaType)
  {
    return getClassIntrospector().forCreation(this, paramJavaType, this);
  }

  public boolean isAnnotationProcessingEnabled()
  {
    return isEnabled(DeserializationConfig.Feature.USE_ANNOTATIONS);
  }

  public boolean isEnabled(DeserializationConfig.Feature paramFeature)
  {
    return (this._featureFlags & paramFeature.getMask()) != 0;
  }

  public KeyDeserializer keyDeserializerInstance(Annotated paramAnnotated, Class<? extends KeyDeserializer> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      KeyDeserializer localKeyDeserializer = localHandlerInstantiator.keyDeserializerInstance(this, paramAnnotated, paramClass);
      if (localKeyDeserializer != null)
        return localKeyDeserializer;
    }
    return (KeyDeserializer)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }

  protected DeserializationConfig passSerializationFeatures(int paramInt)
  {
    if ((paramInt & SerializationConfig.Feature.SORT_PROPERTIES_ALPHABETICALLY.getMask()) != 0);
    for (boolean bool = true; ; bool = false)
    {
      this._sortPropertiesAlphabetically = bool;
      return this;
    }
  }

  @Deprecated
  public void set(DeserializationConfig.Feature paramFeature, boolean paramBoolean)
  {
    super.set(paramFeature, paramBoolean);
  }

  public boolean shouldSortPropertiesAlphabetically()
  {
    return this._sortPropertiesAlphabetically;
  }

  public ValueInstantiator valueInstantiatorInstance(Annotated paramAnnotated, Class<? extends ValueInstantiator> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      ValueInstantiator localValueInstantiator = localHandlerInstantiator.valueInstantiatorInstance(this, paramAnnotated, paramClass);
      if (localValueInstantiator != null)
        return localValueInstantiator;
    }
    return (ValueInstantiator)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }

  public DeserializationConfig withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
  {
    return new DeserializationConfig(this, this._base.withVisibilityChecker(paramVisibilityChecker));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.DeserializationConfig
 * JD-Core Version:    0.6.2
 */