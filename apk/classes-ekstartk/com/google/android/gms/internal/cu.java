package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;

public final class cu
{
  public static void a(Bundle paramBundle, String paramString, Parcelable paramParcelable)
  {
    Bundle localBundle = paramBundle.getBundle("map_state");
    if (localBundle == null)
      localBundle = new Bundle();
    localBundle.setClassLoader(cu.class.getClassLoader());
    localBundle.putParcelable(paramString, paramParcelable);
    paramBundle.putBundle("map_state", localBundle);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cu
 * JD-Core Version:    0.6.2
 */