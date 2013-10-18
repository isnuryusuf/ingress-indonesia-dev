package com.b.a.a.a;

import com.b.a.a.a.a.c;
import com.b.a.a.a.a.d;
import com.b.a.a.a.a.e;
import com.b.a.a.a.a.f;
import com.b.a.a.a.a.g;
import com.google.a.c.bl;
import com.google.a.c.cn;
import com.google.a.c.cq;
import com.google.a.c.ct;
import com.google.a.c.dc;
import com.google.a.c.dh;
import com.google.a.c.dq;
import com.google.a.c.du;
import com.google.a.c.dx;
import com.google.a.c.dz;
import com.google.a.c.eo;
import com.google.a.c.ep;
import com.google.a.c.hs;
import com.google.a.c.ht;
import com.google.a.c.jb;
import com.google.a.c.kf;
import com.google.a.c.ky;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.Deserializers.Base;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public final class a extends Deserializers.Base
{
  private static JsonDeserializer<?> a(JsonDeserializer<?> paramJsonDeserializer, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, JavaType paramJavaType)
  {
    if (paramJsonDeserializer == null)
      paramJsonDeserializer = paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, paramJavaType.getContentType(), paramBeanProperty);
    return paramJsonDeserializer;
  }

  public final JsonDeserializer<?> findCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Class localClass = paramCollectionType.getRawClass();
    if (ht.class.isAssignableFrom(localClass))
    {
      eo.class.isAssignableFrom(localClass);
      if (cn.class.isAssignableFrom(localClass))
        return new c(paramCollectionType, paramTypeDeserializer, a(paramJsonDeserializer, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramCollectionType));
      dq.class.isAssignableFrom(localClass);
      bl.class.isAssignableFrom(localClass);
      ky.class.isAssignableFrom(localClass);
      return new c(paramCollectionType, paramTypeDeserializer, a(paramJsonDeserializer, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramCollectionType));
    }
    if (ct.class.isAssignableFrom(localClass))
    {
      if (dc.class.isAssignableFrom(localClass))
        return new d(paramCollectionType, paramTypeDeserializer, a(paramJsonDeserializer, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramCollectionType));
      if (du.class.isAssignableFrom(localClass))
      {
        if (dz.class.isAssignableFrom(localClass))
        {
          if (!Comparable.class.isAssignableFrom(paramCollectionType.getContentType().getRawClass()))
            throw new IllegalArgumentException("Can not handle ImmutableSortedSet with elements that are not Comparable<?> (" + localClass.getName() + ")");
          return new g(paramCollectionType, paramTypeDeserializer, a(paramJsonDeserializer, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramCollectionType));
        }
        return new f(paramCollectionType, paramTypeDeserializer, a(paramJsonDeserializer, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramCollectionType));
      }
    }
    return null;
  }

  public final JsonDeserializer<?> findMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    Class localClass = paramMapType.getRawClass();
    if (dh.class.isAssignableFrom(localClass))
    {
      dx.class.isAssignableFrom(localClass);
      cq.class.isAssignableFrom(localClass);
      return new e(paramMapType, paramKeyDeserializer, paramTypeDeserializer, a(paramJsonDeserializer, paramDeserializationConfig, paramDeserializerProvider, paramBeanProperty, paramMapType));
    }
    if (hs.class.isAssignableFrom(localClass))
    {
      ep.class.isAssignableFrom(localClass);
      jb.class.isAssignableFrom(localClass);
      kf.class.isAssignableFrom(localClass);
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.b.a.a.a.a
 * JD-Core Version:    0.6.2
 */