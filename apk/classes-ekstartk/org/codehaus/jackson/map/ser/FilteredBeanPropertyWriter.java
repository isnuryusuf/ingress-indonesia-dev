package org.codehaus.jackson.map.ser;

public abstract class FilteredBeanPropertyWriter
{
  public static BeanPropertyWriter constructViewBased(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    if (paramArrayOfClass.length == 1)
      return new FilteredBeanPropertyWriter.SingleView(paramBeanPropertyWriter, paramArrayOfClass[0]);
    return new FilteredBeanPropertyWriter.MultiView(paramBeanPropertyWriter, paramArrayOfClass);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.FilteredBeanPropertyWriter
 * JD-Core Version:    0.6.2
 */