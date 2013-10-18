package com.b.a.a.a;

import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.Module;
import org.codehaus.jackson.map.Module.SetupContext;

public final class b extends Module
{
  private static final Version b = new Version(0, 1, 0, null);
  private final String a = "GuavaModule";

  public final String getModuleName()
  {
    return "GuavaModule";
  }

  public final void setupModule(Module.SetupContext paramSetupContext)
  {
    paramSetupContext.addDeserializers(new a());
  }

  public final Version version()
  {
    return b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.b.a.a.a.b
 * JD-Core Version:    0.6.2
 */