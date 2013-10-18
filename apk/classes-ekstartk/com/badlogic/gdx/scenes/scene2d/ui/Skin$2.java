package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.Json.ReadOnlySerializer;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectMap.Entries;
import com.badlogic.gdx.utils.ObjectMap.Entry;
import com.badlogic.gdx.utils.SerializationException;
import java.util.Iterator;

class Skin$2 extends Json.ReadOnlySerializer<Skin>
{
  Skin$2(Skin paramSkin1, Skin paramSkin2)
  {
  }

  private void readNamedObjects(Json paramJson, Class paramClass, ObjectMap<String, ObjectMap> paramObjectMap)
  {
    if (paramClass == Skin.TintedDrawable.class);
    for (Object localObject1 = Drawable.class; ; localObject1 = paramClass)
    {
      Iterator localIterator = paramObjectMap.entries().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          return;
        ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator.next();
        String str = (String)localEntry.key;
        Object localObject2 = paramJson.readValue(paramClass, localEntry.value);
        if (localObject2 != null)
          try
          {
            this.this$0.add(str, localObject2, (Class)localObject1);
          }
          catch (Exception localException)
          {
            throw new SerializationException("Error reading " + paramClass.getSimpleName() + ": " + (String)localEntry.key, localException);
          }
      }
    }
  }

  public Skin read(Json paramJson, Object paramObject, Class paramClass)
  {
    Iterator localIterator = ((ObjectMap)paramObject).entries().iterator();
    while (localIterator.hasNext())
    {
      ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator.next();
      String str = (String)localEntry.key;
      ObjectMap localObjectMap = (ObjectMap)localEntry.value;
      try
      {
        readNamedObjects(paramJson, Class.forName(str), localObjectMap);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new SerializationException(localClassNotFoundException);
      }
    }
    return this.val$skin;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Skin.2
 * JD-Core Version:    0.6.2
 */