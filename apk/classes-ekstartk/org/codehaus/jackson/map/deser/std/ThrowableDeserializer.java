package org.codehaus.jackson.map.deser.std;

import java.util.HashSet;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.deser.BeanDeserializer;
import org.codehaus.jackson.map.deser.SettableAnyProperty;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.type.JavaType;

public class ThrowableDeserializer extends BeanDeserializer
{
  public ThrowableDeserializer(BeanDeserializer paramBeanDeserializer)
  {
    super(paramBeanDeserializer);
  }

  protected ThrowableDeserializer(BeanDeserializer paramBeanDeserializer, boolean paramBoolean)
  {
    super(paramBeanDeserializer, paramBoolean);
  }

  public Object deserializeFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._propertyBasedCreator != null)
      localObject2 = _deserializeUsingPropertyBased(paramJsonParser, paramDeserializationContext);
    boolean bool1;
    int i;
    Object localObject1;
    do
    {
      return localObject2;
      if (this._delegateDeserializer != null)
        return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      if (this._beanType.isAbstract())
        throw JsonMappingException.from(paramJsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
      bool1 = this._valueInstantiator.canCreateFromString();
      boolean bool2 = this._valueInstantiator.canCreateUsingDefault();
      if ((!bool1) && (!bool2))
        throw new JsonMappingException("Can not deserialize Throwable of type " + this._beanType + " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator");
      i = 0;
      localObject1 = null;
      localObject2 = null;
      if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
      {
        String str = paramJsonParser.getCurrentName();
        SettableBeanProperty localSettableBeanProperty = this._beanProperties.find(str);
        paramJsonParser.nextToken();
        int k;
        Object localObject3;
        Object localObject4;
        if (localSettableBeanProperty != null)
          if (localObject2 != null)
          {
            localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2);
            k = i;
            localObject3 = localObject1;
            localObject4 = localObject2;
          }
        while (true)
        {
          paramJsonParser.nextToken();
          localObject2 = localObject4;
          localObject1 = localObject3;
          i = k;
          break;
          if (localObject1 == null)
          {
            int i1 = this._beanProperties.size();
            localObject1 = new Object[i1 + i1];
          }
          int n = i + 1;
          localObject1[i] = localSettableBeanProperty;
          k = n + 1;
          localObject1[n] = localSettableBeanProperty.deserialize(paramJsonParser, paramDeserializationContext);
          localObject3 = localObject1;
          localObject4 = localObject2;
          continue;
          if (("message".equals(str)) && (bool1))
          {
            localObject2 = this._valueInstantiator.createFromString(paramJsonParser.getText());
            if (localObject1 != null)
            {
              for (int m = 0; m < i; m += 2)
                ((SettableBeanProperty)localObject1[m]).set(localObject2, localObject1[(m + 1)]);
              k = i;
              localObject4 = localObject2;
              localObject3 = null;
            }
          }
          else if ((this._ignorableProps != null) && (this._ignorableProps.contains(str)))
          {
            paramJsonParser.skipChildren();
            k = i;
            localObject3 = localObject1;
            localObject4 = localObject2;
          }
          else if (this._anySetter != null)
          {
            this._anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2, str);
            k = i;
            localObject3 = localObject1;
            localObject4 = localObject2;
          }
          else
          {
            handleUnknownProperty(paramJsonParser, paramDeserializationContext, localObject2, str);
            k = i;
            localObject3 = localObject1;
            localObject4 = localObject2;
          }
        }
      }
    }
    while (localObject2 != null);
    if (bool1);
    for (Object localObject2 = this._valueInstantiator.createFromString(null); ; localObject2 = this._valueInstantiator.createUsingDefault())
    {
      int j = 0;
      if (localObject1 == null)
        break;
      while (j < i)
      {
        ((SettableBeanProperty)localObject1[j]).set(localObject2, localObject1[(j + 1)]);
        j += 2;
      }
      break;
    }
  }

  public JsonDeserializer<Object> unwrappingDeserializer()
  {
    if (getClass() != ThrowableDeserializer.class)
      return this;
    return new ThrowableDeserializer(this, true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ThrowableDeserializer
 * JD-Core Version:    0.6.2
 */