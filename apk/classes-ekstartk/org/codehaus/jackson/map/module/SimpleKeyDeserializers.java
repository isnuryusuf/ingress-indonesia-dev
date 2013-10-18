package org.codehaus.jackson.map.module;

import java.util.HashMap;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.KeyDeserializers;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.type.JavaType;

public class SimpleKeyDeserializers
  implements KeyDeserializers
{
  protected HashMap<ClassKey, KeyDeserializer> _classMappings = null;

  public SimpleKeyDeserializers addDeserializer(Class<?> paramClass, KeyDeserializer paramKeyDeserializer)
  {
    if (this._classMappings == null)
      this._classMappings = new HashMap();
    this._classMappings.put(new ClassKey(paramClass), paramKeyDeserializer);
    return this;
  }

  public KeyDeserializer findKeyDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    if (this._classMappings == null)
      return null;
    return (KeyDeserializer)this._classMappings.get(new ClassKey(paramJavaType.getRawClass()));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleKeyDeserializers
 * JD-Core Version:    0.6.2
 */