package com.badlogic.gdx.utils;

public class GdxRuntimeException extends RuntimeException
{
  private static final long serialVersionUID = 6735854402467673117L;

  public GdxRuntimeException(String paramString)
  {
    super(paramString);
  }

  public GdxRuntimeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public GdxRuntimeException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.GdxRuntimeException
 * JD-Core Version:    0.6.2
 */