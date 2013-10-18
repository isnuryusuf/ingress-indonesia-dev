package org.codehaus.jackson.map.ser.std;

import java.util.Collection;
import org.codehaus.jackson.map.BeanProperty;

public abstract class StaticListSerializerBase<T extends Collection<?>> extends SerializerBase<T>
{
  protected final BeanProperty _property;

  protected StaticListSerializerBase(Class<?> paramClass, BeanProperty paramBeanProperty)
  {
    super(paramClass, false);
    this._property = paramBeanProperty;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StaticListSerializerBase
 * JD-Core Version:    0.6.2
 */