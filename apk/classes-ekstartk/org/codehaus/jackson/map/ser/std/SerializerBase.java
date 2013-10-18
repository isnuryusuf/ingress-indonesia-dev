package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;

public abstract class SerializerBase<T> extends JsonSerializer<T>
{
  protected final Class<T> _handledType;

  protected SerializerBase(Class<T> paramClass)
  {
    this._handledType = paramClass;
  }

  protected SerializerBase(Class<?> paramClass, boolean paramBoolean)
  {
    this._handledType = paramClass;
  }

  protected SerializerBase(JavaType paramJavaType)
  {
    this._handledType = paramJavaType.getRawClass();
  }

  public final Class<T> handledType()
  {
    return this._handledType;
  }

  protected boolean isDefaultSerializer(JsonSerializer<?> paramJsonSerializer)
  {
    return (paramJsonSerializer != null) && (paramJsonSerializer.getClass().getAnnotation(JacksonStdImpl.class) != null);
  }

  public abstract void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);

  public void wrapAndThrow(SerializerProvider paramSerializerProvider, Throwable paramThrowable, Object paramObject, int paramInt)
  {
    for (Throwable localThrowable = paramThrowable; ((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null); localThrowable = localThrowable.getCause());
    if ((localThrowable instanceof Error))
      throw ((Error)localThrowable);
    if ((paramSerializerProvider == null) || (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRAP_EXCEPTIONS)));
    for (int i = 1; (localThrowable instanceof IOException); i = 0)
    {
      if ((i != 0) && ((localThrowable instanceof JsonMappingException)))
        break label112;
      throw ((IOException)localThrowable);
    }
    if ((i == 0) && ((localThrowable instanceof RuntimeException)))
      throw ((RuntimeException)localThrowable);
    label112: throw JsonMappingException.wrapWithPath(localThrowable, paramObject, paramInt);
  }

  public void wrapAndThrow(SerializerProvider paramSerializerProvider, Throwable paramThrowable, Object paramObject, String paramString)
  {
    for (Throwable localThrowable = paramThrowable; ((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null); localThrowable = localThrowable.getCause());
    if ((localThrowable instanceof Error))
      throw ((Error)localThrowable);
    if ((paramSerializerProvider == null) || (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRAP_EXCEPTIONS)));
    for (int i = 1; (localThrowable instanceof IOException); i = 0)
    {
      if ((i != 0) && ((localThrowable instanceof JsonMappingException)))
        break label112;
      throw ((IOException)localThrowable);
    }
    if ((i == 0) && ((localThrowable instanceof RuntimeException)))
      throw ((RuntimeException)localThrowable);
    label112: throw JsonMappingException.wrapWithPath(localThrowable, paramObject, paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.SerializerBase
 * JD-Core Version:    0.6.2
 */