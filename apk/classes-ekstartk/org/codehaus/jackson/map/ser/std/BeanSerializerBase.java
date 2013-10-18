package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonMappingException.Reference;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.AnyGetterWriter;
import org.codehaus.jackson.map.ser.BeanPropertyFilter;
import org.codehaus.jackson.map.ser.BeanPropertyWriter;
import org.codehaus.jackson.map.ser.FilterProvider;
import org.codehaus.jackson.type.JavaType;

public abstract class BeanSerializerBase extends SerializerBase<Object>
  implements ResolvableSerializer
{
  protected static final BeanPropertyWriter[] NO_PROPS = new BeanPropertyWriter[0];
  protected final AnyGetterWriter _anyGetterWriter;
  protected final BeanPropertyWriter[] _filteredProps;
  protected final Object _propertyFilterId;
  protected final BeanPropertyWriter[] _props;

  public BeanSerializerBase(Class<?> paramClass, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramClass);
    this._props = paramArrayOfBeanPropertyWriter1;
    this._filteredProps = paramArrayOfBeanPropertyWriter2;
    this._anyGetterWriter = paramAnyGetterWriter;
    this._propertyFilterId = paramObject;
  }

  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase)
  {
    this(paramBeanSerializerBase._handledType, paramBeanSerializerBase._props, paramBeanSerializerBase._filteredProps, paramBeanSerializerBase._anyGetterWriter, paramBeanSerializerBase._propertyFilterId);
  }

  protected BeanSerializerBase(JavaType paramJavaType, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramJavaType);
    this._props = paramArrayOfBeanPropertyWriter1;
    this._filteredProps = paramArrayOfBeanPropertyWriter2;
    this._anyGetterWriter = paramAnyGetterWriter;
    this._propertyFilterId = paramObject;
  }

  protected BeanPropertyFilter findFilter(SerializerProvider paramSerializerProvider)
  {
    Object localObject = this._propertyFilterId;
    FilterProvider localFilterProvider = paramSerializerProvider.getFilterProvider();
    if (localFilterProvider == null)
      throw new JsonMappingException("Can not resolve BeanPropertyFilter with id '" + localObject + "'; no FilterProvider configured");
    return localFilterProvider.findFilter(localObject);
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    int i;
    int k;
    label18: BeanPropertyWriter localBeanPropertyWriter1;
    JavaType localJavaType;
    if (this._filteredProps == null)
    {
      i = 0;
      int j = this._props.length;
      k = 0;
      if (k >= j)
        break label221;
      localBeanPropertyWriter1 = this._props[k];
      if (!localBeanPropertyWriter1.hasSerializer())
      {
        localJavaType = localBeanPropertyWriter1.getSerializationType();
        if (localJavaType != null)
          break label110;
        localJavaType = paramSerializerProvider.constructType(localBeanPropertyWriter1.getGenericPropertyType());
        if (localJavaType.isFinal())
          break label110;
        if ((localJavaType.isContainerType()) || (localJavaType.containedTypeCount() > 0))
          localBeanPropertyWriter1.setNonTrivialBaseType(localJavaType);
      }
    }
    while (true)
    {
      k++;
      break label18;
      i = this._filteredProps.length;
      break;
      label110: Object localObject = paramSerializerProvider.findValueSerializer(localJavaType, localBeanPropertyWriter1);
      if (localJavaType.isContainerType())
      {
        TypeSerializer localTypeSerializer = (TypeSerializer)localJavaType.getContentType().getTypeHandler();
        if ((localTypeSerializer != null) && ((localObject instanceof ContainerSerializerBase)))
          localObject = ((ContainerSerializerBase)localObject).withValueTypeSerializer(localTypeSerializer);
      }
      BeanPropertyWriter localBeanPropertyWriter2 = localBeanPropertyWriter1.withSerializer((JsonSerializer)localObject);
      this._props[k] = localBeanPropertyWriter2;
      if (k < i)
      {
        BeanPropertyWriter localBeanPropertyWriter3 = this._filteredProps[k];
        if (localBeanPropertyWriter3 != null)
          this._filteredProps[k] = localBeanPropertyWriter3.withSerializer((JsonSerializer)localObject);
      }
    }
    label221: if (this._anyGetterWriter != null)
      this._anyGetterWriter.resolve(paramSerializerProvider);
  }

  protected void serializeFields(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    if ((this._filteredProps != null) && (paramSerializerProvider.getSerializationView() != null))
      arrayOfBeanPropertyWriter = this._filteredProps;
    int i;
    JsonMappingException localJsonMappingException;
    while (true)
    {
      i = 0;
      try
      {
        int j = arrayOfBeanPropertyWriter.length;
        while (true)
          if (i < j)
          {
            BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
            if (localBeanPropertyWriter != null)
              localBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
            i++;
            continue;
            arrayOfBeanPropertyWriter = this._props;
            break;
          }
        if (this._anyGetterWriter != null)
          this._anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
        return;
      }
      catch (Exception localException)
      {
        if (i == arrayOfBeanPropertyWriter.length);
        for (String str2 = "[anySetter]"; ; str2 = arrayOfBeanPropertyWriter[i].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, str2);
          return;
        }
      }
      catch (StackOverflowError localStackOverflowError)
      {
        localJsonMappingException = new JsonMappingException("Infinite recursion (StackOverflowError)");
        if (i != arrayOfBeanPropertyWriter.length);
      }
    }
    for (String str1 = "[anySetter]"; ; str1 = arrayOfBeanPropertyWriter[i].getName())
    {
      localJsonMappingException.prependPath(new JsonMappingException.Reference(paramObject, str1));
      throw localJsonMappingException;
    }
  }

  protected void serializeFieldsFiltered(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    BeanPropertyFilter localBeanPropertyFilter;
    if ((this._filteredProps != null) && (paramSerializerProvider.getSerializationView() != null))
    {
      arrayOfBeanPropertyWriter = this._filteredProps;
      localBeanPropertyFilter = findFilter(paramSerializerProvider);
      if (localBeanPropertyFilter != null)
        break label49;
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    while (true)
    {
      return;
      arrayOfBeanPropertyWriter = this._props;
      break;
      label49: int i = 0;
      try
      {
        int j = arrayOfBeanPropertyWriter.length;
        if (i < j)
        {
          BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
          if (localBeanPropertyWriter != null)
            localBeanPropertyFilter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider, localBeanPropertyWriter);
        }
        else
        {
          if (this._anyGetterWriter == null)
            continue;
          this._anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
          return;
        }
      }
      catch (Exception localException)
      {
        if (i == arrayOfBeanPropertyWriter.length);
        for (String str2 = "[anySetter]"; ; str2 = arrayOfBeanPropertyWriter[i].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, str2);
          return;
        }
      }
      catch (StackOverflowError localStackOverflowError)
      {
        while (true)
        {
          JsonMappingException localJsonMappingException = new JsonMappingException("Infinite recursion (StackOverflowError)");
          if (i == arrayOfBeanPropertyWriter.length);
          for (String str1 = "[anySetter]"; ; str1 = arrayOfBeanPropertyWriter[i].getName())
          {
            localJsonMappingException.prependPath(new JsonMappingException.Reference(paramObject, str1));
            throw localJsonMappingException;
          }
          i++;
        }
      }
    }
  }

  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
    if (this._propertyFilterId != null)
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
      return;
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.BeanSerializerBase
 * JD-Core Version:    0.6.2
 */