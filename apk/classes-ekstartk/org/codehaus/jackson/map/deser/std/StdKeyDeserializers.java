package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.EnumResolver;
import org.codehaus.jackson.type.JavaType;

public class StdKeyDeserializers
{
  protected final HashMap<JavaType, KeyDeserializer> _keyDeserializers = new HashMap();

  protected StdKeyDeserializers()
  {
    add(new StdKeyDeserializer.BoolKD());
    add(new StdKeyDeserializer.ByteKD());
    add(new StdKeyDeserializer.CharKD());
    add(new StdKeyDeserializer.ShortKD());
    add(new StdKeyDeserializer.IntKD());
    add(new StdKeyDeserializer.LongKD());
    add(new StdKeyDeserializer.FloatKD());
    add(new StdKeyDeserializer.DoubleKD());
    add(new StdKeyDeserializer.DateKD());
    add(new StdKeyDeserializer.CalendarKD());
    add(new StdKeyDeserializer.UuidKD());
  }

  private void add(StdKeyDeserializer paramStdKeyDeserializer)
  {
    Class localClass = paramStdKeyDeserializer.getKeyClass();
    this._keyDeserializers.put(TypeFactory.defaultInstance().constructType(localClass), paramStdKeyDeserializer);
  }

  public static HashMap<JavaType, KeyDeserializer> constructAll()
  {
    return new StdKeyDeserializers()._keyDeserializers;
  }

  public static KeyDeserializer constructEnumKeyDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    return new StdKeyDeserializer.EnumKD(EnumResolver.constructUnsafe(paramJavaType.getRawClass(), paramDeserializationConfig.getAnnotationIntrospector()));
  }

  public static KeyDeserializer findStringBasedKeyDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramDeserializationConfig.introspect(paramJavaType);
    Constructor localConstructor = localBasicBeanDescription.findSingleArgConstructor(new Class[] { String.class });
    if (localConstructor != null)
    {
      if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
        ClassUtil.checkAndFixAccess(localConstructor);
      return new StdKeyDeserializer.StringCtorKeyDeserializer(localConstructor);
    }
    Method localMethod = localBasicBeanDescription.findFactoryMethod(new Class[] { String.class });
    if (localMethod != null)
    {
      if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
        ClassUtil.checkAndFixAccess(localMethod);
      return new StdKeyDeserializer.StringFactoryKeyDeserializer(localMethod);
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializers
 * JD-Core Version:    0.6.2
 */