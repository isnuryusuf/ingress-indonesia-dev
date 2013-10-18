package com.nianticproject.ingress.common.b;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.ObjectMap;
import java.io.File;

public final class p
  implements a
{
  public final q a;
  private final String b;
  private final Json c;

  public p(String paramString, q paramq)
  {
    this.b = paramString;
    this.a = paramq;
    this.c = new Json();
  }

  public final FileHandle a(String paramString)
  {
    FileHandle localFileHandle1 = a.y(paramString);
    if (localFileHandle1 != null)
      return localFileHandle1;
    ObjectMap localObjectMap;
    int i;
    String str2;
    label88: String str1;
    if (paramString.startsWith("{"))
    {
      localObjectMap = (ObjectMap)this.c.fromJson(ObjectMap.class, paramString);
      i = q.a(this.a);
      if (i >= 0)
      {
        str2 = (String)localObjectMap.get("data-" + q.values()[i].a());
        if (str2 != null)
        {
          if (str2 != null)
            break label154;
          str1 = null;
        }
      }
    }
    while (true)
    {
      if (str1 != null)
        break label193;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = this.a;
      throw new b(String.format("getAssetPath failed for path=%s density=%s", arrayOfObject2));
      i--;
      break;
      str2 = (String)localObjectMap.get("data");
      break label88;
      label154: str1 = new File(this.b, str2).toString();
      continue;
      str1 = new File(this.b, paramString).toString();
    }
    label193: FileHandle localFileHandle2 = Gdx.files.internal(str1);
    if (!localFileHandle2.exists())
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = str1;
      arrayOfObject1[1] = this.a;
      throw new b(String.format("path=%s density=%s", arrayOfObject1));
    }
    return localFileHandle2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b.p
 * JD-Core Version:    0.6.2
 */