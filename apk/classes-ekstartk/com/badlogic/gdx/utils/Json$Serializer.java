package com.badlogic.gdx.utils;

public abstract interface Json$Serializer<T>
{
  public abstract T read(Json paramJson, Object paramObject, Class paramClass);

  public abstract void write(Json paramJson, T paramT, Class paramClass);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Json.Serializer
 * JD-Core Version:    0.6.2
 */