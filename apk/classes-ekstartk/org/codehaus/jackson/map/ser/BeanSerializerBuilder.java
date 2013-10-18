package org.codehaus.jackson.map.ser;

import java.util.List;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;

public class BeanSerializerBuilder
{
  private static final BeanPropertyWriter[] NO_PROPERTIES = new BeanPropertyWriter[0];
  protected AnyGetterWriter _anyGetter;
  protected final BasicBeanDescription _beanDesc;
  protected Object _filterId;
  protected BeanPropertyWriter[] _filteredProperties;
  protected List<BeanPropertyWriter> _properties;

  public BeanSerializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    this._beanDesc = paramBasicBeanDescription;
  }

  public JsonSerializer<?> build()
  {
    if ((this._properties == null) || (this._properties.isEmpty()))
      if (this._anyGetter == null)
        return null;
    for (BeanPropertyWriter[] arrayOfBeanPropertyWriter = NO_PROPERTIES; ; arrayOfBeanPropertyWriter = (BeanPropertyWriter[])this._properties.toArray(new BeanPropertyWriter[this._properties.size()]))
      return new BeanSerializer(this._beanDesc.getType(), arrayOfBeanPropertyWriter, this._filteredProperties, this._anyGetter, this._filterId);
  }

  public BeanSerializer createDummy()
  {
    return BeanSerializer.createDummy(this._beanDesc.getBeanClass());
  }

  public List<BeanPropertyWriter> getProperties()
  {
    return this._properties;
  }

  public void setAnyGetter(AnyGetterWriter paramAnyGetterWriter)
  {
    this._anyGetter = paramAnyGetterWriter;
  }

  public void setFilterId(Object paramObject)
  {
    this._filterId = paramObject;
  }

  public void setFilteredProperties(BeanPropertyWriter[] paramArrayOfBeanPropertyWriter)
  {
    this._filteredProperties = paramArrayOfBeanPropertyWriter;
  }

  public void setProperties(List<BeanPropertyWriter> paramList)
  {
    this._properties = paramList;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializerBuilder
 * JD-Core Version:    0.6.2
 */