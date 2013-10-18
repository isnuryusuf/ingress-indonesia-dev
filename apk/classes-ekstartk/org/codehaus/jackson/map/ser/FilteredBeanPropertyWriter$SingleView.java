package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

final class FilteredBeanPropertyWriter$SingleView extends BeanPropertyWriter
{
  protected final BeanPropertyWriter _delegate;
  protected final Class<?> _view;

  protected FilteredBeanPropertyWriter$SingleView(BeanPropertyWriter paramBeanPropertyWriter, Class<?> paramClass)
  {
    super(paramBeanPropertyWriter);
    this._delegate = paramBeanPropertyWriter;
    this._view = paramClass;
  }

  public final void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Class localClass = paramSerializerProvider.getSerializationView();
    if ((localClass == null) || (this._view.isAssignableFrom(localClass)))
      this._delegate.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
  }

  public final BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    return new SingleView(this._delegate.withSerializer(paramJsonSerializer), this._view);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.FilteredBeanPropertyWriter.SingleView
 * JD-Core Version:    0.6.2
 */