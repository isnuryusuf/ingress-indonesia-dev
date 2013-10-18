package org.codehaus.jackson.map.deser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.map.deser.impl.ValueInjector;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class BeanDeserializerBuilder
{
  protected SettableAnyProperty _anySetter;
  protected HashMap<String, SettableBeanProperty> _backRefProperties;
  protected final BasicBeanDescription _beanDesc;
  protected HashSet<String> _ignorableProps;
  protected boolean _ignoreAllUnknown;
  protected List<ValueInjector> _injectables;
  protected final HashMap<String, SettableBeanProperty> _properties = new LinkedHashMap();
  protected ValueInstantiator _valueInstantiator;

  public BeanDeserializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    this._beanDesc = paramBasicBeanDescription;
  }

  public void addBackReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty)
  {
    if (this._backRefProperties == null)
      this._backRefProperties = new HashMap(4);
    this._backRefProperties.put(paramString, paramSettableBeanProperty);
    if (this._properties != null)
      this._properties.remove(paramSettableBeanProperty.getName());
  }

  public void addCreatorProperty(BeanPropertyDefinition paramBeanPropertyDefinition)
  {
  }

  public void addIgnorable(String paramString)
  {
    if (this._ignorableProps == null)
      this._ignorableProps = new HashSet();
    this._ignorableProps.add(paramString);
  }

  public void addInjectable(String paramString, JavaType paramJavaType, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember, Object paramObject)
  {
    if (this._injectables == null)
      this._injectables = new ArrayList();
    this._injectables.add(new ValueInjector(paramString, paramJavaType, paramAnnotations, paramAnnotatedMember, paramObject));
  }

  public void addOrReplaceProperty(SettableBeanProperty paramSettableBeanProperty, boolean paramBoolean)
  {
    this._properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
  }

  public void addProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)this._properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
    if ((localSettableBeanProperty != null) && (localSettableBeanProperty != paramSettableBeanProperty))
      throw new IllegalArgumentException("Duplicate property '" + paramSettableBeanProperty.getName() + "' for " + this._beanDesc.getType());
  }

  public JsonDeserializer<?> build(BeanProperty paramBeanProperty)
  {
    BeanPropertyMap localBeanPropertyMap = new BeanPropertyMap(this._properties.values());
    localBeanPropertyMap.assignIndexes();
    return new BeanDeserializer(this._beanDesc, paramBeanProperty, this._valueInstantiator, localBeanPropertyMap, this._backRefProperties, this._ignorableProps, this._ignoreAllUnknown, this._anySetter, this._injectables);
  }

  public boolean hasProperty(String paramString)
  {
    return this._properties.containsKey(paramString);
  }

  public void setAnySetter(SettableAnyProperty paramSettableAnyProperty)
  {
    if ((this._anySetter != null) && (paramSettableAnyProperty != null))
      throw new IllegalStateException("_anySetter already set to non-null");
    this._anySetter = paramSettableAnyProperty;
  }

  public void setIgnoreUnknownProperties(boolean paramBoolean)
  {
    this._ignoreAllUnknown = paramBoolean;
  }

  public void setValueInstantiator(ValueInstantiator paramValueInstantiator)
  {
    this._valueInstantiator = paramValueInstantiator;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.BeanDeserializerBuilder
 * JD-Core Version:    0.6.2
 */