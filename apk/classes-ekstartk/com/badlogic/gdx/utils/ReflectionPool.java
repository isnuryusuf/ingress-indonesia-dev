package com.badlogic.gdx.utils;

import java.lang.reflect.Constructor;

public class ReflectionPool<T> extends Pool<T>
{
  private final Class<T> type;

  public ReflectionPool(Class<T> paramClass)
  {
    this.type = paramClass;
  }

  public ReflectionPool(Class<T> paramClass, int paramInt)
  {
    super(paramInt);
    this.type = paramClass;
  }

  public ReflectionPool(Class<T> paramClass, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.type = paramClass;
  }

  protected T newObject()
  {
    try
    {
      Object localObject2 = this.type.newInstance();
      return localObject2;
    }
    catch (Exception localException1)
    {
      try
      {
        Constructor localConstructor2 = this.type.getConstructor(null);
        localConstructor1 = localConstructor2;
      }
      catch (Exception localException2)
      {
        try
        {
          while (true)
          {
            Constructor localConstructor1;
            Object localObject1 = localConstructor1.newInstance(new Object[0]);
            return localObject1;
            localException2 = localException2;
            try
            {
              localConstructor1 = this.type.getDeclaredConstructor(null);
              localConstructor1.setAccessible(true);
            }
            catch (NoSuchMethodException localNoSuchMethodException)
            {
              throw new RuntimeException("Class cannot be created (missing no-arg constructor): " + this.type.getName());
            }
          }
        }
        catch (Exception localException3)
        {
        }
      }
      throw new GdxRuntimeException("Unable to create new instance: " + this.type.getName(), localException1);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ReflectionPool
 * JD-Core Version:    0.6.2
 */