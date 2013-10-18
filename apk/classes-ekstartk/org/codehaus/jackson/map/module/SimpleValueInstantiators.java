package org.codehaus.jackson.map.module;

import java.util.HashMap;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.ValueInstantiators.Base;
import org.codehaus.jackson.map.type.ClassKey;

public class SimpleValueInstantiators extends ValueInstantiators.Base
{
  protected HashMap<ClassKey, ValueInstantiator> _classMappings;

  public ValueInstantiator findValueInstantiator(DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, ValueInstantiator paramValueInstantiator)
  {
    ValueInstantiator localValueInstantiator = (ValueInstantiator)this._classMappings.get(new ClassKey(paramBeanDescription.getBeanClass()));
    if (localValueInstantiator == null)
      return paramValueInstantiator;
    return localValueInstantiator;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleValueInstantiators
 * JD-Core Version:    0.6.2
 */