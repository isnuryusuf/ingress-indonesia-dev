package com.badlogic.gdx.utils;

public class SerializationException extends RuntimeException
{
  private StringBuffer trace;

  public SerializationException()
  {
  }

  public SerializationException(String paramString)
  {
    super(paramString);
  }

  public SerializationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public SerializationException(Throwable paramThrowable)
  {
    super("", paramThrowable);
  }

  private boolean causedBy(Throwable paramThrowable, Class paramClass)
  {
    while (true)
    {
      Throwable localThrowable = paramThrowable.getCause();
      if ((localThrowable == null) || (localThrowable == paramThrowable))
        return false;
      if (paramClass.isAssignableFrom(localThrowable.getClass()))
        return true;
      paramThrowable = localThrowable;
    }
  }

  public void addTrace(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("info cannot be null.");
    if (this.trace == null)
      this.trace = new StringBuffer(512);
    this.trace.append('\n');
    this.trace.append(paramString);
  }

  public boolean causedBy(Class paramClass)
  {
    return causedBy(this, paramClass);
  }

  public String getMessage()
  {
    if (this.trace == null)
      return super.getMessage();
    StringBuffer localStringBuffer = new StringBuffer(512);
    localStringBuffer.append(super.getMessage());
    if (localStringBuffer.length() > 0)
      localStringBuffer.append('\n');
    localStringBuffer.append("Serialization trace:");
    localStringBuffer.append(this.trace);
    return localStringBuffer.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.SerializationException
 * JD-Core Version:    0.6.2
 */