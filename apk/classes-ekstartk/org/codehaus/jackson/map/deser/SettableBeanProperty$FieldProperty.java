package org.codehaus.jackson.map.deser;

import java.lang.reflect.Field;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public final class SettableBeanProperty$FieldProperty extends SettableBeanProperty
{
  protected final AnnotatedField _annotated;
  protected final Field _field;

  public SettableBeanProperty$FieldProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedField paramAnnotatedField)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    this._annotated = paramAnnotatedField;
    this._field = paramAnnotatedField.getAnnotated();
  }

  protected SettableBeanProperty$FieldProperty(FieldProperty paramFieldProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramFieldProperty, paramJsonDeserializer);
    this._annotated = paramFieldProperty._annotated;
    this._field = paramFieldProperty._field;
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
      this._field.set(paramObject1, paramObject2);
      return;
    }
    catch (Exception localException)
    {
      _throwAsIOE(localException, paramObject2);
    }
  }

  public final FieldProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new FieldProperty(this, paramJsonDeserializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.FieldProperty
 * JD-Core Version:    0.6.2
 */