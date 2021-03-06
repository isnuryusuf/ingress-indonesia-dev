package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class ValueInjector extends BeanProperty.Std
{
  protected final Object _valueId;

  public ValueInjector(String paramString, JavaType paramJavaType, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember, Object paramObject)
  {
    super(paramString, paramJavaType, paramAnnotations, paramAnnotatedMember);
    this._valueId = paramObject;
  }

  public Object findValue(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    return paramDeserializationContext.findInjectableValue(this._valueId, this, paramObject);
  }

  public void inject(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    this._member.setValue(paramObject, findValue(paramDeserializationContext, paramObject));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ValueInjector
 * JD-Core Version:    0.6.2
 */