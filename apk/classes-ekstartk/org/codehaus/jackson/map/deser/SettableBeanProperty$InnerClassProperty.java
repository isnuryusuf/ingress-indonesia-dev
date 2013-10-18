package org.codehaus.jackson.map.deser;

import java.lang.reflect.Constructor;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.ClassUtil;

public final class SettableBeanProperty$InnerClassProperty extends SettableBeanProperty
{
  protected final Constructor<?> _creator;
  protected final SettableBeanProperty _delegate;

  protected SettableBeanProperty$InnerClassProperty(InnerClassProperty paramInnerClassProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramInnerClassProperty, paramJsonDeserializer);
    this._delegate = paramInnerClassProperty._delegate.withValueDeserializer(paramJsonDeserializer);
    this._creator = paramInnerClassProperty._creator;
  }

  public SettableBeanProperty$InnerClassProperty(SettableBeanProperty paramSettableBeanProperty, Constructor<?> paramConstructor)
  {
    super(paramSettableBeanProperty);
    this._delegate = paramSettableBeanProperty;
    this._creator = paramConstructor;
  }

  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    Object localObject1;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      SettableBeanProperty.NullProvider localNullProvider = this._nullProvider;
      localObject1 = null;
      if (localNullProvider != null);
    }
    while (true)
    {
      set(paramObject, localObject1);
      return;
      localObject1 = this._nullProvider.nullValue(paramDeserializationContext);
      continue;
      if (this._valueTypeDeserializer != null)
      {
        localObject1 = this._valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, this._valueTypeDeserializer);
        continue;
      }
      try
      {
        Object localObject2 = this._creator.newInstance(new Object[] { paramObject });
        localObject1 = localObject2;
        this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject1);
      }
      catch (Exception localException)
      {
        while (true)
        {
          ClassUtil.unwrapAndThrowAsIAE(localException, "Failed to instantiate class " + this._creator.getDeclaringClass().getName() + ", problem: " + localException.getMessage());
          localObject1 = null;
        }
      }
    }
  }

  public final AnnotatedMember getMember()
  {
    return this._delegate.getMember();
  }

  public final void set(Object paramObject1, Object paramObject2)
  {
    this._delegate.set(paramObject1, paramObject2);
  }

  public final InnerClassProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new InnerClassProperty(this, paramJsonDeserializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.InnerClassProperty
 * JD-Core Version:    0.6.2
 */