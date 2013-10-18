package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.map.deser.impl.ExternalTypeHandler;
import org.codehaus.jackson.map.deser.impl.ExternalTypeHandler.Builder;
import org.codehaus.jackson.map.deser.impl.PropertyBasedCreator;
import org.codehaus.jackson.map.deser.impl.PropertyValueBuffer;
import org.codehaus.jackson.map.deser.impl.UnwrappedPropertyHandler;
import org.codehaus.jackson.map.deser.impl.ValueInjector;
import org.codehaus.jackson.map.deser.std.ContainerDeserializerBase;
import org.codehaus.jackson.map.deser.std.StdDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.TokenBuffer;

@JsonCachable
public class BeanDeserializer extends StdDeserializer<Object>
  implements ResolvableDeserializer
{
  protected SettableAnyProperty _anySetter;
  protected final Map<String, SettableBeanProperty> _backRefs;
  protected final BeanPropertyMap _beanProperties;
  protected final JavaType _beanType;
  protected JsonDeserializer<Object> _delegateDeserializer;
  protected ExternalTypeHandler _externalTypeIdHandler;
  protected final AnnotatedClass _forClass;
  protected final HashSet<String> _ignorableProps;
  protected final boolean _ignoreAllUnknown;
  protected final ValueInjector[] _injectables;
  protected boolean _nonStandardCreation;
  protected final BeanProperty _property;
  protected final PropertyBasedCreator _propertyBasedCreator;
  protected HashMap<ClassKey, JsonDeserializer<Object>> _subDeserializers;
  protected UnwrappedPropertyHandler _unwrappedPropertyHandler;
  protected final ValueInstantiator _valueInstantiator;

  public BeanDeserializer(BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, ValueInstantiator paramValueInstantiator, BeanPropertyMap paramBeanPropertyMap, Map<String, SettableBeanProperty> paramMap, HashSet<String> paramHashSet, boolean paramBoolean, SettableAnyProperty paramSettableAnyProperty, List<ValueInjector> paramList)
  {
    this(paramBeanDescription.getClassInfo(), paramBeanDescription.getType(), paramBeanProperty, paramValueInstantiator, paramBeanPropertyMap, paramMap, paramHashSet, paramBoolean, paramSettableAnyProperty, paramList);
  }

  protected BeanDeserializer(BeanDeserializer paramBeanDeserializer)
  {
    this(paramBeanDeserializer, paramBeanDeserializer._ignoreAllUnknown);
  }

  protected BeanDeserializer(BeanDeserializer paramBeanDeserializer, boolean paramBoolean)
  {
    super(paramBeanDeserializer._beanType);
    this._forClass = paramBeanDeserializer._forClass;
    this._beanType = paramBeanDeserializer._beanType;
    this._property = paramBeanDeserializer._property;
    this._valueInstantiator = paramBeanDeserializer._valueInstantiator;
    this._delegateDeserializer = paramBeanDeserializer._delegateDeserializer;
    this._propertyBasedCreator = paramBeanDeserializer._propertyBasedCreator;
    this._beanProperties = paramBeanDeserializer._beanProperties;
    this._backRefs = paramBeanDeserializer._backRefs;
    this._ignorableProps = paramBeanDeserializer._ignorableProps;
    this._ignoreAllUnknown = paramBoolean;
    this._anySetter = paramBeanDeserializer._anySetter;
    this._injectables = paramBeanDeserializer._injectables;
    this._nonStandardCreation = paramBeanDeserializer._nonStandardCreation;
    this._unwrappedPropertyHandler = paramBeanDeserializer._unwrappedPropertyHandler;
  }

  protected BeanDeserializer(AnnotatedClass paramAnnotatedClass, JavaType paramJavaType, BeanProperty paramBeanProperty, ValueInstantiator paramValueInstantiator, BeanPropertyMap paramBeanPropertyMap, Map<String, SettableBeanProperty> paramMap, HashSet<String> paramHashSet, boolean paramBoolean, SettableAnyProperty paramSettableAnyProperty, List<ValueInjector> paramList)
  {
    super(paramJavaType);
    this._forClass = paramAnnotatedClass;
    this._beanType = paramJavaType;
    this._property = paramBeanProperty;
    this._valueInstantiator = paramValueInstantiator;
    ValueInjector[] arrayOfValueInjector;
    if (paramValueInstantiator.canCreateFromObjectWith())
    {
      this._propertyBasedCreator = new PropertyBasedCreator(paramValueInstantiator);
      this._beanProperties = paramBeanPropertyMap;
      this._backRefs = paramMap;
      this._ignorableProps = paramHashSet;
      this._ignoreAllUnknown = paramBoolean;
      this._anySetter = paramSettableAnyProperty;
      arrayOfValueInjector = null;
      if (paramList != null)
      {
        boolean bool2 = paramList.isEmpty();
        arrayOfValueInjector = null;
        if (!bool2)
          break label156;
      }
      label102: this._injectables = arrayOfValueInjector;
      if ((!paramValueInstantiator.canCreateUsingDelegate()) && (this._propertyBasedCreator == null) && (paramValueInstantiator.canCreateUsingDefault()) && (this._unwrappedPropertyHandler == null))
        break label181;
    }
    label156: label181: for (boolean bool1 = true; ; bool1 = false)
    {
      this._nonStandardCreation = bool1;
      return;
      this._propertyBasedCreator = null;
      break;
      arrayOfValueInjector = (ValueInjector[])paramList.toArray(new ValueInjector[paramList.size()]);
      break label102;
    }
  }

  protected final Object _deserializeUsingPropertyBased(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyBasedCreator localPropertyBasedCreator = this._propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext);
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    TokenBuffer localTokenBuffer = null;
    String str;
    Object localObject3;
    while (true)
      if (localJsonToken == JsonToken.FIELD_NAME)
      {
        str = paramJsonParser.getCurrentName();
        paramJsonParser.nextToken();
        SettableBeanProperty localSettableBeanProperty1 = localPropertyBasedCreator.findCreatorProperty(str);
        if (localSettableBeanProperty1 != null)
        {
          Object localObject2 = localSettableBeanProperty1.deserialize(paramJsonParser, paramDeserializationContext);
          if (localPropertyValueBuffer.assignParameter(localSettableBeanProperty1.getPropertyIndex(), localObject2))
          {
            paramJsonParser.nextToken();
            try
            {
              localObject3 = localPropertyBasedCreator.build(localPropertyValueBuffer);
              if (localObject3.getClass() == this._beanType.getRawClass())
                break label144;
              return handlePolymorphic(paramJsonParser, paramDeserializationContext, localObject3, localTokenBuffer);
            }
            catch (Exception localException2)
            {
              wrapAndThrow(localException2, this._beanType.getRawClass(), str, paramDeserializationContext);
            }
          }
          else
          {
            localJsonToken = paramJsonParser.nextToken();
            continue;
          }
          label144: if (localTokenBuffer == null)
            break label356;
        }
      }
    label353: label356: for (Object localObject4 = handleUnknownProperties(paramDeserializationContext, localObject3, localTokenBuffer); ; localObject4 = localObject3)
    {
      return deserialize(paramJsonParser, paramDeserializationContext, localObject4);
      SettableBeanProperty localSettableBeanProperty2 = this._beanProperties.find(str);
      if (localSettableBeanProperty2 != null)
      {
        localPropertyValueBuffer.bufferProperty(localSettableBeanProperty2, localSettableBeanProperty2.deserialize(paramJsonParser, paramDeserializationContext));
        break;
      }
      if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
      {
        paramJsonParser.skipChildren();
        break;
      }
      if (this._anySetter != null)
      {
        localPropertyValueBuffer.bufferAnyProperty(this._anySetter, str, this._anySetter.deserialize(paramJsonParser, paramDeserializationContext));
        break;
      }
      if (localTokenBuffer == null)
        localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
      localTokenBuffer.writeFieldName(str);
      localTokenBuffer.copyCurrentStructure(paramJsonParser);
      break;
      Object localObject1;
      try
      {
        localObject1 = localPropertyBasedCreator.build(localPropertyValueBuffer);
        if (localTokenBuffer == null)
          break label353;
        if (localObject1.getClass() != this._beanType.getRawClass())
          return handlePolymorphic(null, paramDeserializationContext, localObject1, localTokenBuffer);
      }
      catch (Exception localException1)
      {
        wrapInstantiationProblem(localException1, paramDeserializationContext);
        return null;
      }
      return handleUnknownProperties(paramDeserializationContext, localObject1, localTokenBuffer);
      return localObject1;
    }
  }

  protected JsonDeserializer<Object> _findSubclassDeserializer(DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
  {
    Object localObject2;
    try
    {
      if (this._subDeserializers == null);
      for (localObject2 = null; ; localObject2 = (JsonDeserializer)this._subDeserializers.get(new ClassKey(paramObject.getClass())))
      {
        if (localObject2 == null)
          break;
        return localObject2;
      }
    }
    finally
    {
    }
    DeserializerProvider localDeserializerProvider = paramDeserializationContext.getDeserializerProvider();
    if (localDeserializerProvider != null)
    {
      JavaType localJavaType = paramDeserializationContext.constructType(paramObject.getClass());
      localObject2 = localDeserializerProvider.findValueDeserializer(paramDeserializationContext.getConfig(), localJavaType, this._property);
      if (localObject2 != null)
        try
        {
          if (this._subDeserializers == null)
            this._subDeserializers = new HashMap();
          this._subDeserializers.put(new ClassKey(paramObject.getClass()), localObject2);
          return localObject2;
        }
        finally
        {
        }
    }
    return localObject2;
  }

  protected SettableBeanProperty _resolveInnerClassValuedProperty(DeserializationConfig paramDeserializationConfig, SettableBeanProperty paramSettableBeanProperty)
  {
    JsonDeserializer localJsonDeserializer = paramSettableBeanProperty.getValueDeserializer();
    Class localClass2;
    Constructor[] arrayOfConstructor;
    int i;
    if (((localJsonDeserializer instanceof BeanDeserializer)) && (!((BeanDeserializer)localJsonDeserializer).getValueInstantiator().canCreateUsingDefault()))
    {
      Class localClass1 = paramSettableBeanProperty.getType().getRawClass();
      localClass2 = ClassUtil.getOuterClass(localClass1);
      if ((localClass2 != null) && (localClass2 == this._beanType.getRawClass()))
      {
        arrayOfConstructor = localClass1.getConstructors();
        i = arrayOfConstructor.length;
      }
    }
    for (int j = 0; ; j++)
      if (j < i)
      {
        Constructor localConstructor = arrayOfConstructor[j];
        Class[] arrayOfClass = localConstructor.getParameterTypes();
        if ((arrayOfClass.length == 1) && (arrayOfClass[0] == localClass2))
        {
          if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
            ClassUtil.checkAndFixAccess(localConstructor);
          paramSettableBeanProperty = new SettableBeanProperty.InnerClassProperty(paramSettableBeanProperty, localConstructor);
        }
      }
      else
      {
        return paramSettableBeanProperty;
      }
  }

  protected SettableBeanProperty _resolveManagedReferenceProperty(DeserializationConfig paramDeserializationConfig, SettableBeanProperty paramSettableBeanProperty)
  {
    String str = paramSettableBeanProperty.getManagedReferenceName();
    if (str == null)
      return paramSettableBeanProperty;
    JsonDeserializer localJsonDeserializer1 = paramSettableBeanProperty.getValueDeserializer();
    boolean bool = false;
    SettableBeanProperty localSettableBeanProperty;
    if ((localJsonDeserializer1 instanceof BeanDeserializer))
      localSettableBeanProperty = ((BeanDeserializer)localJsonDeserializer1).findBackReference(str);
    while (localSettableBeanProperty == null)
    {
      throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': no back reference property found from type " + paramSettableBeanProperty.getType());
      if ((localJsonDeserializer1 instanceof ContainerDeserializerBase))
      {
        JsonDeserializer localJsonDeserializer2 = ((ContainerDeserializerBase)localJsonDeserializer1).getContentDeserializer();
        if (!(localJsonDeserializer2 instanceof BeanDeserializer))
          throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer  (instead it's of type " + localJsonDeserializer2.getClass().getName() + ")");
        localSettableBeanProperty = ((BeanDeserializer)localJsonDeserializer2).findBackReference(str);
        bool = true;
      }
      else
      {
        if ((localJsonDeserializer1 instanceof AbstractDeserializer))
          throw new IllegalArgumentException("Can not handle managed/back reference for abstract types (property " + this._beanType.getRawClass().getName() + "." + paramSettableBeanProperty.getName() + ")");
        throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but " + localJsonDeserializer1.getClass().getName());
      }
    }
    JavaType localJavaType1 = this._beanType;
    JavaType localJavaType2 = localSettableBeanProperty.getType();
    if (!localJavaType2.getRawClass().isAssignableFrom(localJavaType1.getRawClass()))
      throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': back reference type (" + localJavaType2.getRawClass().getName() + ") not compatible with managed type (" + localJavaType1.getRawClass().getName() + ")");
    return new SettableBeanProperty.ManagedReferenceProperty(str, paramSettableBeanProperty, localSettableBeanProperty, this._forClass.getAnnotations(), bool);
  }

  protected SettableBeanProperty _resolveUnwrappedProperty(DeserializationConfig paramDeserializationConfig, SettableBeanProperty paramSettableBeanProperty)
  {
    AnnotatedMember localAnnotatedMember = paramSettableBeanProperty.getMember();
    if ((localAnnotatedMember != null) && (paramDeserializationConfig.getAnnotationIntrospector().shouldUnwrapProperty(localAnnotatedMember) == Boolean.TRUE))
    {
      JsonDeserializer localJsonDeserializer1 = paramSettableBeanProperty.getValueDeserializer();
      JsonDeserializer localJsonDeserializer2 = localJsonDeserializer1.unwrappingDeserializer();
      if ((localJsonDeserializer2 != localJsonDeserializer1) && (localJsonDeserializer2 != null))
        return paramSettableBeanProperty.withValueDeserializer(localJsonDeserializer2);
    }
    return null;
  }

  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.START_OBJECT)
    {
      paramJsonParser.nextToken();
      return deserializeFromObject(paramJsonParser, paramDeserializationContext);
    }
    switch (BeanDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken.ordinal()])
    {
    default:
      throw paramDeserializationContext.mappingException(getBeanClass());
    case 1:
      return deserializeFromString(paramJsonParser, paramDeserializationContext);
    case 2:
      return deserializeFromNumber(paramJsonParser, paramDeserializationContext);
    case 3:
      return deserializeFromDouble(paramJsonParser, paramDeserializationContext);
    case 4:
      return paramJsonParser.getEmbeddedObject();
    case 5:
    case 6:
      return deserializeFromBoolean(paramJsonParser, paramDeserializationContext);
    case 7:
      return deserializeFromArray(paramJsonParser, paramDeserializationContext);
    case 8:
    case 9:
    }
    return deserializeFromObject(paramJsonParser, paramDeserializationContext);
  }

  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    if (this._injectables != null)
      injectValues(paramDeserializationContext, paramObject);
    if (this._unwrappedPropertyHandler != null)
      paramObject = deserializeWithUnwrapped(paramJsonParser, paramDeserializationContext, paramObject);
    JsonToken localJsonToken;
    do
    {
      return paramObject;
      if (this._externalTypeIdHandler != null)
        return deserializeWithExternalTypeId(paramJsonParser, paramDeserializationContext, paramObject);
      localJsonToken = paramJsonParser.getCurrentToken();
      if (localJsonToken == JsonToken.START_OBJECT)
        localJsonToken = paramJsonParser.nextToken();
    }
    while (localJsonToken != JsonToken.FIELD_NAME);
    String str = paramJsonParser.getCurrentName();
    paramJsonParser.nextToken();
    SettableBeanProperty localSettableBeanProperty = this._beanProperties.find(str);
    if (localSettableBeanProperty != null);
    while (true)
    {
      try
      {
        localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
        localJsonToken = paramJsonParser.nextToken();
      }
      catch (Exception localException)
      {
        wrapAndThrow(localException, paramObject, str, paramDeserializationContext);
        continue;
      }
      if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
        paramJsonParser.skipChildren();
      else if (this._anySetter != null)
        this._anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, str);
      else
        handleUnknownProperty(paramJsonParser, paramDeserializationContext, paramObject, str);
    }
  }

  public Object deserializeFromArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._delegateDeserializer != null)
      try
      {
        Object localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
        if (this._injectables != null)
          injectValues(paramDeserializationContext, localObject);
        return localObject;
      }
      catch (Exception localException)
      {
        wrapInstantiationProblem(localException, paramDeserializationContext);
      }
    throw paramDeserializationContext.mappingException(getBeanClass());
  }

  public Object deserializeFromBoolean(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((this._delegateDeserializer != null) && (!this._valueInstantiator.canCreateFromBoolean()))
    {
      Object localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      if (this._injectables != null)
        injectValues(paramDeserializationContext, localObject);
      return localObject;
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_TRUE);
    for (boolean bool = true; ; bool = false)
      return this._valueInstantiator.createFromBoolean(bool);
  }

  public Object deserializeFromDouble(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject;
    switch (BeanDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
    {
    default:
      if (this._delegateDeserializer != null)
        localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      break;
    case 3:
    case 4:
      do
      {
        return localObject;
        if ((this._delegateDeserializer == null) || (this._valueInstantiator.canCreateFromDouble()))
          break;
        localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      }
      while (this._injectables == null);
      injectValues(paramDeserializationContext, localObject);
      return localObject;
      return this._valueInstantiator.createFromDouble(paramJsonParser.getDoubleValue());
    }
    throw paramDeserializationContext.instantiationException(getBeanClass(), "no suitable creator method found to deserialize from JSON floating-point number");
  }

  public Object deserializeFromNumber(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject;
    switch (BeanDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
    {
    default:
      if (this._delegateDeserializer == null)
        break label193;
      localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      if (this._injectables != null)
        injectValues(paramDeserializationContext, localObject);
      break;
    case 1:
    case 2:
    }
    do
    {
      do
      {
        return localObject;
        if ((this._delegateDeserializer == null) || (this._valueInstantiator.canCreateFromInt()))
          break;
        localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      }
      while (this._injectables == null);
      injectValues(paramDeserializationContext, localObject);
      return localObject;
      return this._valueInstantiator.createFromInt(paramJsonParser.getIntValue());
      if ((this._delegateDeserializer == null) || (this._valueInstantiator.canCreateFromInt()))
        break;
      localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    while (this._injectables == null);
    injectValues(paramDeserializationContext, localObject);
    return localObject;
    return this._valueInstantiator.createFromLong(paramJsonParser.getLongValue());
    label193: throw paramDeserializationContext.instantiationException(getBeanClass(), "no suitable creator method found to deserialize from JSON integer number");
  }

  public Object deserializeFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject;
    if (this._nonStandardCreation)
      if (this._unwrappedPropertyHandler != null)
        localObject = deserializeWithUnwrapped(paramJsonParser, paramDeserializationContext);
    do
    {
      return localObject;
      if (this._externalTypeIdHandler != null)
        return deserializeWithExternalTypeId(paramJsonParser, paramDeserializationContext);
      return deserializeFromObjectUsingNonDefault(paramJsonParser, paramDeserializationContext);
      localObject = this._valueInstantiator.createUsingDefault();
      if (this._injectables != null)
        injectValues(paramDeserializationContext, localObject);
    }
    while (paramJsonParser.getCurrentToken() == JsonToken.END_OBJECT);
    String str = paramJsonParser.getCurrentName();
    paramJsonParser.nextToken();
    SettableBeanProperty localSettableBeanProperty = this._beanProperties.find(str);
    if (localSettableBeanProperty != null);
    while (true)
    {
      try
      {
        localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject);
        paramJsonParser.nextToken();
      }
      catch (Exception localException2)
      {
        wrapAndThrow(localException2, localObject, str, paramDeserializationContext);
        continue;
      }
      if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
        paramJsonParser.skipChildren();
      else if (this._anySetter != null)
        try
        {
          this._anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject, str);
        }
        catch (Exception localException1)
        {
          wrapAndThrow(localException1, localObject, str, paramDeserializationContext);
        }
      else
        handleUnknownProperty(paramJsonParser, paramDeserializationContext, localObject, str);
    }
  }

  protected Object deserializeFromObjectUsingNonDefault(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._delegateDeserializer != null)
      return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    if (this._propertyBasedCreator != null)
      return _deserializeUsingPropertyBased(paramJsonParser, paramDeserializationContext);
    if (this._beanType.isAbstract())
      throw JsonMappingException.from(paramJsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
    throw JsonMappingException.from(paramJsonParser, "No suitable constructor found for type " + this._beanType + ": can not instantiate from JSON object (need to add/enable type information?)");
  }

  public Object deserializeFromString(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((this._delegateDeserializer != null) && (!this._valueInstantiator.canCreateFromString()))
    {
      Object localObject = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      if (this._injectables != null)
        injectValues(paramDeserializationContext, localObject);
      return localObject;
    }
    return this._valueInstantiator.createFromString(paramJsonParser.getText());
  }

  protected Object deserializeUsingPropertyBasedWithExternalTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    ExternalTypeHandler localExternalTypeHandler = this._externalTypeIdHandler.start();
    PropertyBasedCreator localPropertyBasedCreator = this._propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext);
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.writeStartObject();
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty1 = localPropertyBasedCreator.findCreatorProperty(str);
      Object localObject3;
      if (localSettableBeanProperty1 != null)
      {
        Object localObject2 = localSettableBeanProperty1.deserialize(paramJsonParser, paramDeserializationContext);
        if (localPropertyValueBuffer.assignParameter(localSettableBeanProperty1.getPropertyIndex(), localObject2))
        {
          JsonToken localJsonToken2 = paramJsonParser.nextToken();
          try
          {
            localObject3 = localPropertyBasedCreator.build(localPropertyValueBuffer);
            while (localJsonToken2 == JsonToken.FIELD_NAME)
            {
              paramJsonParser.nextToken();
              localTokenBuffer.copyCurrentStructure(paramJsonParser);
              localJsonToken2 = paramJsonParser.nextToken();
            }
          }
          catch (Exception localException2)
          {
            wrapAndThrow(localException2, this._beanType.getRawClass(), str, paramDeserializationContext);
          }
        }
      }
      while (true)
      {
        localJsonToken1 = paramJsonParser.nextToken();
        break;
        if (localObject3.getClass() != this._beanType.getRawClass())
          throw paramDeserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
        return localExternalTypeHandler.complete(paramJsonParser, paramDeserializationContext, localObject3);
        SettableBeanProperty localSettableBeanProperty2 = this._beanProperties.find(str);
        if (localSettableBeanProperty2 != null)
          localPropertyValueBuffer.bufferProperty(localSettableBeanProperty2, localSettableBeanProperty2.deserialize(paramJsonParser, paramDeserializationContext));
        else if (!localExternalTypeHandler.handleToken(paramJsonParser, paramDeserializationContext, str, null))
          if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
            paramJsonParser.skipChildren();
          else if (this._anySetter != null)
            localPropertyValueBuffer.bufferAnyProperty(this._anySetter, str, this._anySetter.deserialize(paramJsonParser, paramDeserializationContext));
      }
    }
    try
    {
      Object localObject1 = localPropertyBasedCreator.build(localPropertyValueBuffer);
      return localExternalTypeHandler.complete(paramJsonParser, paramDeserializationContext, localObject1);
    }
    catch (Exception localException1)
    {
      wrapInstantiationProblem(localException1, paramDeserializationContext);
    }
    return null;
  }

  protected Object deserializeUsingPropertyBasedWithUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyBasedCreator localPropertyBasedCreator = this._propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext);
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.writeStartObject();
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty1 = localPropertyBasedCreator.findCreatorProperty(str);
      Object localObject3;
      if (localSettableBeanProperty1 != null)
      {
        Object localObject2 = localSettableBeanProperty1.deserialize(paramJsonParser, paramDeserializationContext);
        if (localPropertyValueBuffer.assignParameter(localSettableBeanProperty1.getPropertyIndex(), localObject2))
        {
          JsonToken localJsonToken2 = paramJsonParser.nextToken();
          try
          {
            localObject3 = localPropertyBasedCreator.build(localPropertyValueBuffer);
            while (localJsonToken2 == JsonToken.FIELD_NAME)
            {
              paramJsonParser.nextToken();
              localTokenBuffer.copyCurrentStructure(paramJsonParser);
              localJsonToken2 = paramJsonParser.nextToken();
            }
          }
          catch (Exception localException2)
          {
            wrapAndThrow(localException2, this._beanType.getRawClass(), str, paramDeserializationContext);
          }
        }
      }
      while (true)
      {
        localJsonToken1 = paramJsonParser.nextToken();
        break;
        localTokenBuffer.writeEndObject();
        if (localObject3.getClass() != this._beanType.getRawClass())
          throw paramDeserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
        return this._unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, localObject3, localTokenBuffer);
        SettableBeanProperty localSettableBeanProperty2 = this._beanProperties.find(str);
        if (localSettableBeanProperty2 != null)
        {
          localPropertyValueBuffer.bufferProperty(localSettableBeanProperty2, localSettableBeanProperty2.deserialize(paramJsonParser, paramDeserializationContext));
        }
        else if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
        {
          paramJsonParser.skipChildren();
        }
        else
        {
          localTokenBuffer.writeFieldName(str);
          localTokenBuffer.copyCurrentStructure(paramJsonParser);
          if (this._anySetter != null)
            localPropertyValueBuffer.bufferAnyProperty(this._anySetter, str, this._anySetter.deserialize(paramJsonParser, paramDeserializationContext));
        }
      }
    }
    try
    {
      Object localObject1 = localPropertyBasedCreator.build(localPropertyValueBuffer);
      return this._unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, localObject1, localTokenBuffer);
    }
    catch (Exception localException1)
    {
      wrapInstantiationProblem(localException1, paramDeserializationContext);
    }
    return null;
  }

  protected Object deserializeWithExternalTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._propertyBasedCreator != null)
      return deserializeUsingPropertyBasedWithExternalTypeId(paramJsonParser, paramDeserializationContext);
    return deserializeWithExternalTypeId(paramJsonParser, paramDeserializationContext, this._valueInstantiator.createUsingDefault());
  }

  protected Object deserializeWithExternalTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    ExternalTypeHandler localExternalTypeHandler = this._externalTypeIdHandler.start();
    if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
    {
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty = this._beanProperties.find(str);
      if (localSettableBeanProperty != null);
      while (true)
      {
        try
        {
          localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
          paramJsonParser.nextToken();
        }
        catch (Exception localException2)
        {
          wrapAndThrow(localException2, paramObject, str, paramDeserializationContext);
          continue;
        }
        if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
          paramJsonParser.skipChildren();
        else if (!localExternalTypeHandler.handleToken(paramJsonParser, paramDeserializationContext, str, paramObject))
          if (this._anySetter != null)
            try
            {
              this._anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, str);
            }
            catch (Exception localException1)
            {
              wrapAndThrow(localException1, paramObject, str, paramDeserializationContext);
            }
          else
            handleUnknownProperty(paramJsonParser, paramDeserializationContext, paramObject, str);
      }
    }
    return localExternalTypeHandler.complete(paramJsonParser, paramDeserializationContext, paramObject);
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }

  protected Object deserializeWithUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._delegateDeserializer != null)
      return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    if (this._propertyBasedCreator != null)
      return deserializeUsingPropertyBasedWithUnwrapped(paramJsonParser, paramDeserializationContext);
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.writeStartObject();
    Object localObject = this._valueInstantiator.createUsingDefault();
    if (this._injectables != null)
      injectValues(paramDeserializationContext, localObject);
    if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
    {
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty = this._beanProperties.find(str);
      if (localSettableBeanProperty != null);
      while (true)
      {
        try
        {
          localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject);
          paramJsonParser.nextToken();
        }
        catch (Exception localException2)
        {
          wrapAndThrow(localException2, localObject, str, paramDeserializationContext);
          continue;
        }
        if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
        {
          paramJsonParser.skipChildren();
        }
        else
        {
          localTokenBuffer.writeFieldName(str);
          localTokenBuffer.copyCurrentStructure(paramJsonParser);
          if (this._anySetter != null)
            try
            {
              this._anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject, str);
            }
            catch (Exception localException1)
            {
              wrapAndThrow(localException1, localObject, str, paramDeserializationContext);
            }
        }
      }
    }
    localTokenBuffer.writeEndObject();
    this._unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, localObject, localTokenBuffer);
    return localObject;
  }

  protected Object deserializeWithUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.START_OBJECT)
      localJsonToken = paramJsonParser.nextToken();
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.writeStartObject();
    if (localJsonToken == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      SettableBeanProperty localSettableBeanProperty = this._beanProperties.find(str);
      paramJsonParser.nextToken();
      if (localSettableBeanProperty != null);
      while (true)
      {
        try
        {
          localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
          localJsonToken = paramJsonParser.nextToken();
        }
        catch (Exception localException)
        {
          wrapAndThrow(localException, paramObject, str, paramDeserializationContext);
          continue;
        }
        if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
        {
          paramJsonParser.skipChildren();
        }
        else
        {
          localTokenBuffer.writeFieldName(str);
          localTokenBuffer.copyCurrentStructure(paramJsonParser);
          if (this._anySetter != null)
            this._anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, str);
        }
      }
    }
    localTokenBuffer.writeEndObject();
    this._unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, paramObject, localTokenBuffer);
    return paramObject;
  }

  public SettableBeanProperty findBackReference(String paramString)
  {
    if (this._backRefs == null)
      return null;
    return (SettableBeanProperty)this._backRefs.get(paramString);
  }

  public final Class<?> getBeanClass()
  {
    return this._beanType.getRawClass();
  }

  public ValueInstantiator getValueInstantiator()
  {
    return this._valueInstantiator;
  }

  protected Object handlePolymorphic(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
  {
    JsonDeserializer localJsonDeserializer = _findSubclassDeserializer(paramDeserializationContext, paramObject, paramTokenBuffer);
    JsonParser localJsonParser;
    if (localJsonDeserializer != null)
    {
      if (paramTokenBuffer == null)
        break label101;
      paramTokenBuffer.writeEndObject();
      localJsonParser = paramTokenBuffer.asParser();
      localJsonParser.nextToken();
    }
    label101: for (Object localObject = localJsonDeserializer.deserialize(localJsonParser, paramDeserializationContext, paramObject); ; localObject = paramObject)
    {
      if (paramJsonParser != null)
        localObject = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject);
      while (true)
      {
        return localObject;
        if (paramTokenBuffer != null);
        for (localObject = handleUnknownProperties(paramDeserializationContext, paramObject, paramTokenBuffer); paramJsonParser != null; localObject = paramObject)
          return deserialize(paramJsonParser, paramDeserializationContext, localObject);
      }
    }
  }

  protected Object handleUnknownProperties(DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
  {
    paramTokenBuffer.writeEndObject();
    JsonParser localJsonParser = paramTokenBuffer.asParser();
    while (localJsonParser.nextToken() != JsonToken.END_OBJECT)
    {
      String str = localJsonParser.getCurrentName();
      localJsonParser.nextToken();
      handleUnknownProperty(localJsonParser, paramDeserializationContext, paramObject, str);
    }
    return paramObject;
  }

  protected void handleUnknownProperty(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
  {
    if ((this._ignoreAllUnknown) || ((this._ignorableProps != null) && (this._ignorableProps.contains(paramString))))
    {
      paramJsonParser.skipChildren();
      return;
    }
    super.handleUnknownProperty(paramJsonParser, paramDeserializationContext, paramObject, paramString);
  }

  protected void injectValues(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    ValueInjector[] arrayOfValueInjector = this._injectables;
    int i = arrayOfValueInjector.length;
    for (int j = 0; j < i; j++)
      arrayOfValueInjector[j].inject(paramDeserializationContext, paramObject);
  }

  public void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
  {
    Iterator localIterator1 = this._beanProperties.allProperties();
    Object localObject1 = null;
    UnwrappedPropertyHandler localUnwrappedPropertyHandler = null;
    SettableBeanProperty localSettableBeanProperty2;
    if (localIterator1.hasNext())
    {
      localSettableBeanProperty2 = (SettableBeanProperty)localIterator1.next();
      if (localSettableBeanProperty2.hasValueDeserializer())
        break label490;
    }
    label490: for (SettableBeanProperty localSettableBeanProperty3 = localSettableBeanProperty2.withValueDeserializer(findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localSettableBeanProperty2.getType(), localSettableBeanProperty2)); ; localSettableBeanProperty3 = localSettableBeanProperty2)
    {
      SettableBeanProperty localSettableBeanProperty4 = _resolveManagedReferenceProperty(paramDeserializationConfig, localSettableBeanProperty3);
      SettableBeanProperty localSettableBeanProperty5 = _resolveUnwrappedProperty(paramDeserializationConfig, localSettableBeanProperty4);
      if (localSettableBeanProperty5 != null)
      {
        if (localUnwrappedPropertyHandler == null)
          localUnwrappedPropertyHandler = new UnwrappedPropertyHandler();
        localUnwrappedPropertyHandler.addProperty(localSettableBeanProperty5);
      }
      while (true)
      {
        SettableBeanProperty localSettableBeanProperty6 = _resolveInnerClassValuedProperty(paramDeserializationConfig, localSettableBeanProperty5);
        if (localSettableBeanProperty6 != localSettableBeanProperty2)
          this._beanProperties.replace(localSettableBeanProperty6);
        if (!localSettableBeanProperty6.hasValueTypeDeserializer())
          break;
        TypeDeserializer localTypeDeserializer = localSettableBeanProperty6.getValueTypeDeserializer();
        if (localTypeDeserializer.getTypeInclusion() != JsonTypeInfo.As.EXTERNAL_PROPERTY)
          break;
        if (localObject1 == null);
        for (Object localObject2 = new ExternalTypeHandler.Builder(); ; localObject2 = localObject1)
        {
          ((ExternalTypeHandler.Builder)localObject2).addExternal(localSettableBeanProperty6, localTypeDeserializer.getPropertyName());
          this._beanProperties.remove(localSettableBeanProperty6);
          localObject1 = localObject2;
          break;
          if ((this._anySetter != null) && (!this._anySetter.hasValueDeserializer()))
            this._anySetter = this._anySetter.withValueDeserializer(findDeserializer(paramDeserializationConfig, paramDeserializerProvider, this._anySetter.getType(), this._anySetter.getProperty()));
          if (this._valueInstantiator.canCreateUsingDelegate())
          {
            JavaType localJavaType = this._valueInstantiator.getDelegateType();
            if (localJavaType == null)
              throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._beanType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            AnnotatedWithParams localAnnotatedWithParams = this._valueInstantiator.getDelegateCreator();
            this._delegateDeserializer = findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localJavaType, new BeanProperty.Std(null, localJavaType, this._forClass.getAnnotations(), localAnnotatedWithParams));
          }
          if (this._propertyBasedCreator != null)
          {
            Iterator localIterator2 = this._propertyBasedCreator.getCreatorProperties().iterator();
            while (localIterator2.hasNext())
            {
              SettableBeanProperty localSettableBeanProperty1 = (SettableBeanProperty)localIterator2.next();
              if (!localSettableBeanProperty1.hasValueDeserializer())
                this._propertyBasedCreator.assignDeserializer(localSettableBeanProperty1, findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localSettableBeanProperty1.getType(), localSettableBeanProperty1));
            }
          }
          if (localObject1 != null)
          {
            this._externalTypeIdHandler = localObject1.build();
            this._nonStandardCreation = true;
          }
          this._unwrappedPropertyHandler = localUnwrappedPropertyHandler;
          if (localUnwrappedPropertyHandler != null)
            this._nonStandardCreation = true;
          return;
        }
        localSettableBeanProperty5 = localSettableBeanProperty4;
      }
    }
  }

  public JsonDeserializer<Object> unwrappingDeserializer()
  {
    if (getClass() != BeanDeserializer.class)
      return this;
    return new BeanDeserializer(this, true);
  }

  public void wrapAndThrow(Throwable paramThrowable, Object paramObject, String paramString, DeserializationContext paramDeserializationContext)
  {
    for (Throwable localThrowable = paramThrowable; ((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null); localThrowable = localThrowable.getCause());
    if ((localThrowable instanceof Error))
      throw ((Error)localThrowable);
    if ((paramDeserializationContext == null) || (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS)));
    for (int i = 1; (localThrowable instanceof IOException); i = 0)
    {
      if ((i != 0) && ((localThrowable instanceof JsonMappingException)))
        break label114;
      throw ((IOException)localThrowable);
    }
    if ((i == 0) && ((localThrowable instanceof RuntimeException)))
      throw ((RuntimeException)localThrowable);
    label114: throw JsonMappingException.wrapWithPath(localThrowable, paramObject, paramString);
  }

  protected void wrapInstantiationProblem(Throwable paramThrowable, DeserializationContext paramDeserializationContext)
  {
    for (Throwable localThrowable = paramThrowable; ((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null); localThrowable = localThrowable.getCause());
    if ((localThrowable instanceof Error))
      throw ((Error)localThrowable);
    if ((paramDeserializationContext == null) || (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS)));
    for (int i = 1; (localThrowable instanceof IOException); i = 0)
      throw ((IOException)localThrowable);
    if ((i == 0) && ((localThrowable instanceof RuntimeException)))
      throw ((RuntimeException)localThrowable);
    throw paramDeserializationContext.instantiationException(this._beanType.getRawClass(), localThrowable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.BeanDeserializer
 * JD-Core Version:    0.6.2
 */