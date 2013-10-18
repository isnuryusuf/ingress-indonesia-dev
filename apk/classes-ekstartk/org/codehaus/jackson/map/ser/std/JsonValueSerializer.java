package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class JsonValueSerializer extends SerializerBase<Object>
  implements ResolvableSerializer
{
  protected final Method _accessorMethod;
  protected boolean _forceTypeInformation;
  protected final BeanProperty _property;
  protected JsonSerializer<Object> _valueSerializer;

  public JsonValueSerializer(Method paramMethod, JsonSerializer<Object> paramJsonSerializer, BeanProperty paramBeanProperty)
  {
    super(Object.class);
    this._accessorMethod = paramMethod;
    this._valueSerializer = paramJsonSerializer;
    this._property = paramBeanProperty;
  }

  protected boolean isNaturalTypeWithStdHandling(JavaType paramJavaType, JsonSerializer<?> paramJsonSerializer)
  {
    Class localClass = paramJavaType.getRawClass();
    if (paramJavaType.isPrimitive())
      if ((localClass == Integer.TYPE) || (localClass == Boolean.TYPE) || (localClass == Double.TYPE))
        break label59;
    label59: 
    while (paramJsonSerializer.getClass().getAnnotation(JacksonStdImpl.class) == null)
      do
        return false;
      while ((localClass != String.class) && (localClass != Integer.class) && (localClass != Boolean.class) && (localClass != Double.class));
    return true;
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    if ((this._valueSerializer == null) && ((paramSerializerProvider.isEnabled(SerializationConfig.Feature.USE_STATIC_TYPING)) || (Modifier.isFinal(this._accessorMethod.getReturnType().getModifiers()))))
    {
      JavaType localJavaType = paramSerializerProvider.constructType(this._accessorMethod.getGenericReturnType());
      this._valueSerializer = paramSerializerProvider.findTypedValueSerializer(localJavaType, false, this._property);
      this._forceTypeInformation = isNaturalTypeWithStdHandling(localJavaType, this._valueSerializer);
    }
  }

  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    try
    {
      Object localObject = this._accessorMethod.invoke(paramObject, new Object[0]);
      if (localObject == null)
      {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        return;
      }
      JsonSerializer localJsonSerializer = this._valueSerializer;
      if (localJsonSerializer == null)
        localJsonSerializer = paramSerializerProvider.findTypedValueSerializer(localObject.getClass(), true, this._property);
      localJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
      Throwable localThrowable;
      while (((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null))
        localThrowable = localThrowable.getCause();
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      throw JsonMappingException.wrapWithPath(localThrowable, paramObject, this._accessorMethod.getName() + "()");
    }
    catch (Exception localException)
    {
      label67: break label67;
    }
  }

  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    try
    {
      localObject = this._accessorMethod.invoke(paramObject, new Object[0]);
      if (localObject == null)
      {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        return;
      }
      JsonSerializer localJsonSerializer = this._valueSerializer;
      if (localJsonSerializer != null)
      {
        if (this._forceTypeInformation)
          paramTypeSerializer.writeTypePrefixForScalar(paramObject, paramJsonGenerator);
        localJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
        if (!this._forceTypeInformation)
          return;
        paramTypeSerializer.writeTypeSuffixForScalar(paramObject, paramJsonGenerator);
      }
    }
    catch (IOException localIOException)
    {
      Object localObject;
      throw localIOException;
      paramSerializerProvider.findTypedValueSerializer(localObject.getClass(), true, this._property).serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    catch (Exception localException)
    {
      Throwable localThrowable;
      while (((localException instanceof InvocationTargetException)) && (localException.getCause() != null))
        localThrowable = localException.getCause();
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      throw JsonMappingException.wrapWithPath(localThrowable, paramObject, this._accessorMethod.getName() + "()");
    }
  }

  public String toString()
  {
    return "(@JsonValue serializer for method " + this._accessorMethod.getDeclaringClass() + "#" + this._accessorMethod.getName() + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.JsonValueSerializer
 * JD-Core Version:    0.6.2
 */