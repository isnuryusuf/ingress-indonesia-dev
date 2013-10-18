package com.google.android.youtube.player.internal;

import android.os.IBinder;
import java.lang.reflect.Field;

public final class be<T> extends bc
{
  private final T a;

  private be(T paramT)
  {
    this.a = paramT;
  }

  public static <T> bb a(T paramT)
  {
    return new be(paramT);
  }

  public static <T> T a(bb parambb)
  {
    if ((parambb instanceof be))
      return ((be)parambb).a;
    IBinder localIBinder = parambb.asBinder();
    Field[] arrayOfField = localIBinder.getClass().getDeclaredFields();
    if (arrayOfField.length == 1)
    {
      Field localField = arrayOfField[0];
      if (!localField.isAccessible())
      {
        localField.setAccessible(true);
        try
        {
          Object localObject = localField.get(localIBinder);
          return localObject;
        }
        catch (NullPointerException localNullPointerException)
        {
          throw new IllegalArgumentException("Binder object is null.", localNullPointerException);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw new IllegalArgumentException("remoteBinder is the wrong class.", localIllegalArgumentException);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", localIllegalAccessException);
        }
      }
      throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.be
 * JD-Core Version:    0.6.2
 */