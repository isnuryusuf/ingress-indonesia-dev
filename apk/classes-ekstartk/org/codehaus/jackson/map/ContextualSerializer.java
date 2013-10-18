package org.codehaus.jackson.map;

public abstract interface ContextualSerializer<T>
{
  public abstract JsonSerializer<T> createContextual(SerializationConfig paramSerializationConfig, BeanProperty paramBeanProperty);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ContextualSerializer
 * JD-Core Version:    0.6.2
 */