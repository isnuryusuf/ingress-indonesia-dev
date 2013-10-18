package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.SettableAnyProperty;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public final class PropertyValueBuffer
{
  private PropertyValue _buffered;
  final DeserializationContext _context;
  final Object[] _creatorParameters;
  private int _paramsNeeded;
  final JsonParser _parser;

  public PropertyValueBuffer(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, int paramInt)
  {
    this._parser = paramJsonParser;
    this._context = paramDeserializationContext;
    this._paramsNeeded = paramInt;
    this._creatorParameters = new Object[paramInt];
  }

  public final boolean assignParameter(int paramInt, Object paramObject)
  {
    this._creatorParameters[paramInt] = paramObject;
    int i = -1 + this._paramsNeeded;
    this._paramsNeeded = i;
    return i <= 0;
  }

  public final void bufferAnyProperty(SettableAnyProperty paramSettableAnyProperty, String paramString, Object paramObject)
  {
    this._buffered = new PropertyValue.Any(this._buffered, paramObject, paramSettableAnyProperty, paramString);
  }

  public final void bufferMapProperty(Object paramObject1, Object paramObject2)
  {
    this._buffered = new PropertyValue.Map(this._buffered, paramObject2, paramObject1);
  }

  public final void bufferProperty(SettableBeanProperty paramSettableBeanProperty, Object paramObject)
  {
    this._buffered = new PropertyValue.Regular(this._buffered, paramObject, paramSettableBeanProperty);
  }

  protected final PropertyValue buffered()
  {
    return this._buffered;
  }

  protected final Object[] getParameters(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null)
    {
      int i = 0;
      int j = this._creatorParameters.length;
      while (i < j)
      {
        if (this._creatorParameters[i] == null)
        {
          Object localObject = paramArrayOfObject[i];
          if (localObject != null)
            this._creatorParameters[i] = localObject;
        }
        i++;
      }
    }
    return this._creatorParameters;
  }

  public final void inject(SettableBeanProperty[] paramArrayOfSettableBeanProperty)
  {
    int i = 0;
    int j = paramArrayOfSettableBeanProperty.length;
    while (i < j)
    {
      SettableBeanProperty localSettableBeanProperty = paramArrayOfSettableBeanProperty[i];
      if (localSettableBeanProperty != null)
        this._creatorParameters[i] = this._context.findInjectableValue(localSettableBeanProperty.getInjectableValueId(), localSettableBeanProperty, null);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValueBuffer
 * JD-Core Version:    0.6.2
 */