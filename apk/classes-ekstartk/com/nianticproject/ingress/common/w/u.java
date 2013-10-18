package com.nianticproject.ingress.common.w;

public final class u
{
  private static String a = "AWT-EventQueue";

  static
  {
    if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik"))
    {
      a = "GLThread";
      return;
    }
  }

  public static void a(String paramString)
  {
    if (!a())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Thread.currentThread().getName();
      throw new IllegalStateException(String.format("%s may only be called on the GLThread (%s)", arrayOfObject));
    }
  }

  public static boolean a()
  {
    return Thread.currentThread().getName().startsWith(a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.u
 * JD-Core Version:    0.6.2
 */