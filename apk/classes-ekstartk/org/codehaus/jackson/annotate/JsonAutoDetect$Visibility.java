package org.codehaus.jackson.annotate;

import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

public enum JsonAutoDetect$Visibility
{
  static
  {
    NONE = new Visibility("NONE", 4);
    DEFAULT = new Visibility("DEFAULT", 5);
    Visibility[] arrayOfVisibility = new Visibility[6];
    arrayOfVisibility[0] = ANY;
    arrayOfVisibility[1] = NON_PRIVATE;
    arrayOfVisibility[2] = PROTECTED_AND_PUBLIC;
    arrayOfVisibility[3] = PUBLIC_ONLY;
    arrayOfVisibility[4] = NONE;
    arrayOfVisibility[5] = DEFAULT;
  }

  public final boolean isVisible(Member paramMember)
  {
    boolean bool = true;
    switch (JsonAutoDetect.1.$SwitchMap$org$codehaus$jackson$annotate$JsonAutoDetect$Visibility[ordinal()])
    {
    default:
      bool = false;
    case 1:
    case 2:
    case 3:
    case 4:
      do
      {
        do
        {
          return bool;
          return false;
        }
        while (!Modifier.isPrivate(paramMember.getModifiers()));
        return false;
      }
      while (Modifier.isProtected(paramMember.getModifiers()));
    case 5:
    }
    return Modifier.isPublic(paramMember.getModifiers());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.annotate.JsonAutoDetect.Visibility
 * JD-Core Version:    0.6.2
 */