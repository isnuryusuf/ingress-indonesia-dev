package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

final class FilteredBeanPropertyWriter$MultiView extends BeanPropertyWriter
{
  protected final BeanPropertyWriter _delegate;
  protected final Class<?>[] _views;

  protected FilteredBeanPropertyWriter$MultiView(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    super(paramBeanPropertyWriter);
    this._delegate = paramBeanPropertyWriter;
    this._views = paramArrayOfClass;
  }

  public final void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Class localClass = paramSerializerProvider.getSerializationView();
    if (localClass != null)
    {
      int i = 0;
      int j = this._views.length;
      while ((i < j) && (!this._views[i].isAssignableFrom(localClass)))
        i++;
      if (i == j)
        return;
    }
    this._delegate.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
  }

  public final BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    return new MultiView(this._delegate.withSerializer(paramJsonSerializer), this._views);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.FilteredBeanPropertyWriter.MultiView
 * JD-Core Version:    0.6.2
 */