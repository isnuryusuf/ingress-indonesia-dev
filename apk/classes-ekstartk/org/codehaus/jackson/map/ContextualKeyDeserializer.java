package org.codehaus.jackson.map;

public abstract interface ContextualKeyDeserializer
{
  public abstract KeyDeserializer createContextual(DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ContextualKeyDeserializer
 * JD-Core Version:    0.6.2
 */