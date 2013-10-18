package com.nianticproject.ingress;

import com.nianticproject.ingress.common.n.a;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;

final class cm
  implements Callable<a>
{
  cm(NemesisApplication paramNemesisApplication, String paramString)
  {
  }

  private a a()
  {
    try
    {
      aj.a("NemesisApplication.createDiskCacheTask.call");
      try
      {
        File localFile1 = new File(this.b.getExternalCacheDir(), this.a);
        localFile1.mkdirs();
        a locala2 = a.a(localFile1);
        localObject2 = locala2;
        if (localObject2 != null);
      }
      catch (IOException localIOException1)
      {
        try
        {
          File localFile2 = new File(this.b.getCacheDir(), this.a);
          localFile2.mkdirs();
          a locala1 = a.a(localFile2);
          Object localObject2 = locala1;
          return localObject2;
          localIOException1 = localIOException1;
          localObject2 = null;
        }
        catch (IOException localIOException2)
        {
          NemesisApplication.m().c("Could not create disk tile store.");
          return null;
        }
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cm
 * JD-Core Version:    0.6.2
 */