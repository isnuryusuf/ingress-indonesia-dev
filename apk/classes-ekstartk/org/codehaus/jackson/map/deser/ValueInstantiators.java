package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.DeserializationConfig;

public abstract interface ValueInstantiators
{
  public abstract ValueInstantiator findValueInstantiator(DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, ValueInstantiator paramValueInstantiator);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.ValueInstantiators
 * JD-Core Version:    0.6.2
 */