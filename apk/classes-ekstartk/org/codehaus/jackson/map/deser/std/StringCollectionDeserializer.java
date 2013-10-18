package org.codehaus.jackson.map.deser.std;

import java.util.Collection;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public final class StringCollectionDeserializer extends ContainerDeserializerBase<Collection<String>>
  implements ResolvableDeserializer
{
  protected final JavaType _collectionType;
  protected JsonDeserializer<Object> _delegateDeserializer;
  protected final boolean _isDefaultDeserializer;
  protected final JsonDeserializer<String> _valueDeserializer;
  protected final ValueInstantiator _valueInstantiator;

  public StringCollectionDeserializer(JavaType paramJavaType, JsonDeserializer<?> paramJsonDeserializer, ValueInstantiator paramValueInstantiator)
  {
    super(paramJavaType.getRawClass());
    this._collectionType = paramJavaType;
    this._valueDeserializer = paramJsonDeserializer;
    this._valueInstantiator = paramValueInstantiator;
    this._isDefaultDeserializer = isDefaultSerializer(paramJsonDeserializer);
  }

  private Collection<String> deserializeUsingCustom(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
  {
    JsonDeserializer localJsonDeserializer = this._valueDeserializer;
    JsonToken localJsonToken = paramJsonParser.nextToken();
    if (localJsonToken != JsonToken.END_ARRAY)
    {
      if (localJsonToken == JsonToken.VALUE_NULL);
      for (Object localObject = null; ; localObject = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext))
      {
        paramCollection.add(localObject);
        break;
      }
    }
    return paramCollection;
  }

  private final Collection<String> handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
  {
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._collectionType.getRawClass());
    JsonDeserializer localJsonDeserializer = this._valueDeserializer;
    Object localObject;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
      localObject = null;
    while (true)
    {
      paramCollection.add(localObject);
      return paramCollection;
      if (localJsonDeserializer == null)
        localObject = paramJsonParser.getText();
      else
        localObject = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
    }
  }

  public final Collection<String> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._delegateDeserializer != null)
      return (Collection)this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    return deserialize(paramJsonParser, paramDeserializationContext, (Collection)this._valueInstantiator.createUsingDefault());
  }

  public final Collection<String> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      paramCollection = handleNonArray(paramJsonParser, paramDeserializationContext, paramCollection);
    JsonToken localJsonToken;
    do
    {
      return paramCollection;
      if (!this._isDefaultDeserializer)
        return deserializeUsingCustom(paramJsonParser, paramDeserializationContext, paramCollection);
      localJsonToken = paramJsonParser.nextToken();
    }
    while (localJsonToken == JsonToken.END_ARRAY);
    if (localJsonToken == JsonToken.VALUE_NULL);
    for (Object localObject = null; ; localObject = paramJsonParser.getText())
    {
      paramCollection.add(localObject);
      break;
    }
  }

  public final Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }

  public final JsonDeserializer<Object> getContentDeserializer()
  {
    return this._valueDeserializer;
  }

  public final void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
  {
    AnnotatedWithParams localAnnotatedWithParams = this._valueInstantiator.getDelegateCreator();
    if (localAnnotatedWithParams != null)
    {
      JavaType localJavaType = this._valueInstantiator.getDelegateType();
      this._delegateDeserializer = findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localJavaType, new BeanProperty.Std(null, localJavaType, null, localAnnotatedWithParams));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StringCollectionDeserializer
 * JD-Core Version:    0.6.2
 */