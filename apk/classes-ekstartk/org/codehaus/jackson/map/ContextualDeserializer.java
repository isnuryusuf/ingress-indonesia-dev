package org.codehaus.jackson.map;

public abstract interface ContextualDeserializer<T>
{
  public abstract JsonDeserializer<T> createContextual(DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ContextualDeserializer
 * JD-Core Version:    0.6.2
 */