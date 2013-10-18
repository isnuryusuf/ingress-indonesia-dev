package org.codehaus.jackson.map.deser;

import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public final class SettableBeanProperty$MethodProperty extends SettableBeanProperty
{
  protected final AnnotatedMethod _annotated;
  protected final Method _setter;

  public SettableBeanProperty$MethodProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    this._annotated = paramAnnotatedMethod;
    this._setter = paramAnnotatedMethod.getAnnotated();
  }

  protected SettableBeanProperty$MethodProperty(MethodProperty paramMethodProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramMethodProperty, paramJsonDeserializer);
    this._annotated = paramMethodProperty._annotated;
    this._setter = paramMethodProperty._setter;
  }

  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
  }

  public final AnnotatedMember getMember()
  {
    return this._annotated;
  }

  public final void set(Object paramObject1, Object paramObject2)
  {
    try
    {
      this._setter.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    catch (Exception localException)
    {
      _throwAsIOE(localException, paramObject2);
    }
  }

  public final MethodProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new MethodProperty(this, paramJsonDeserializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.MethodProperty
 * JD-Core Version:    0.6.2
 */