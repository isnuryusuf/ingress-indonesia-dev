package org.codehaus.jackson.map.deser.impl;

import java.util.Collection;
import java.util.HashMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public final class PropertyBasedCreator
{
  protected final Object[] _defaultValues;
  protected final HashMap<String, SettableBeanProperty> _properties;
  protected final SettableBeanProperty[] _propertiesWithInjectables;
  protected final ValueInstantiator _valueInstantiator;

  public PropertyBasedCreator(ValueInstantiator paramValueInstantiator)
  {
    this._valueInstantiator = paramValueInstantiator;
    this._properties = new HashMap();
    SettableBeanProperty[] arrayOfSettableBeanProperty1 = paramValueInstantiator.getFromObjectArguments();
    int i = arrayOfSettableBeanProperty1.length;
    int j = 0;
    SettableBeanProperty[] arrayOfSettableBeanProperty2 = null;
    while (j < i)
    {
      SettableBeanProperty localSettableBeanProperty = arrayOfSettableBeanProperty1[j];
      this._properties.put(localSettableBeanProperty.getName(), localSettableBeanProperty);
      if (localSettableBeanProperty.getType().isPrimitive())
      {
        if (arrayOfObject == null)
          arrayOfObject = new Object[i];
        arrayOfObject[j] = ClassUtil.defaultValue(localSettableBeanProperty.getType().getRawClass());
      }
      if (localSettableBeanProperty.getInjectableValueId() != null)
      {
        if (arrayOfSettableBeanProperty2 == null)
          arrayOfSettableBeanProperty2 = new SettableBeanProperty[i];
        arrayOfSettableBeanProperty2[j] = localSettableBeanProperty;
      }
      j++;
    }
    this._defaultValues = arrayOfObject;
    this._propertiesWithInjectables = arrayOfSettableBeanProperty2;
  }

  public final void assignDeserializer(SettableBeanProperty paramSettableBeanProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    SettableBeanProperty localSettableBeanProperty = paramSettableBeanProperty.withValueDeserializer(paramJsonDeserializer);
    this._properties.put(localSettableBeanProperty.getName(), localSettableBeanProperty);
  }

  public final Object build(PropertyValueBuffer paramPropertyValueBuffer)
  {
    Object localObject = this._valueInstantiator.createFromObjectWith(paramPropertyValueBuffer.getParameters(this._defaultValues));
    for (PropertyValue localPropertyValue = paramPropertyValueBuffer.buffered(); localPropertyValue != null; localPropertyValue = localPropertyValue.next)
      localPropertyValue.assign(localObject);
    return localObject;
  }

  public final SettableBeanProperty findCreatorProperty(String paramString)
  {
    return (SettableBeanProperty)this._properties.get(paramString);
  }

  public final Collection<SettableBeanProperty> getCreatorProperties()
  {
    return this._properties.values();
  }

  public final PropertyValueBuffer startBuilding(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyValueBuffer localPropertyValueBuffer = new PropertyValueBuffer(paramJsonParser, paramDeserializationContext, this._properties.size());
    if (this._propertiesWithInjectables != null)
      localPropertyValueBuffer.inject(this._propertiesWithInjectables);
    return localPropertyValueBuffer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyBasedCreator
 * JD-Core Version:    0.6.2
 */