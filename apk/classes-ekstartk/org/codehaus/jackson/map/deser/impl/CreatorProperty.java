package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedParameter;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class CreatorProperty extends SettableBeanProperty
{
  protected final AnnotatedParameter _annotated;
  protected final Object _injectableValueId;

  public CreatorProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedParameter paramAnnotatedParameter, int paramInt, Object paramObject)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    this._annotated = paramAnnotatedParameter;
    this._propertyIndex = paramInt;
    this._injectableValueId = paramObject;
  }

  protected CreatorProperty(CreatorProperty paramCreatorProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramCreatorProperty, paramJsonDeserializer);
    this._annotated = paramCreatorProperty._annotated;
    this._injectableValueId = paramCreatorProperty._injectableValueId;
  }

  public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
  }

  public Object getInjectableValueId()
  {
    return this._injectableValueId;
  }

  public AnnotatedMember getMember()
  {
    return this._annotated;
  }

  public void set(Object paramObject1, Object paramObject2)
  {
  }

  public CreatorProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new CreatorProperty(this, paramJsonDeserializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.CreatorProperty
 * JD-Core Version:    0.6.2
 */