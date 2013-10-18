package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;

public final class ej extends fw
{
  private fo b;

  public ej(eg parameg, fo paramfo)
  {
    this.b = paramfo;
  }

  public final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    if ((paramInt == 0) && (paramBundle != null) && (paramBundle.containsKey("loaded_person")))
      eg.a(this.a, eq.a(paramBundle.getByteArray("loaded_person")));
    this.b.a(paramInt, paramIBinder, paramBundle);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ej
 * JD-Core Version:    0.6.2
 */