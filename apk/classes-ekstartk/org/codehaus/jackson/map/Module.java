package org.codehaus.jackson.map;

import org.codehaus.jackson.Version;

public abstract class Module
{
  public abstract String getModuleName();

  public abstract void setupModule(Module.SetupContext paramSetupContext);

  public abstract Version version();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.Module
 * JD-Core Version:    0.6.2
 */