package com.badlogic.gdx.backends.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;

class AndroidInput$4$2
  implements DialogInterface.OnCancelListener
{
  AndroidInput$4$2(AndroidInput.4 param4)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    Gdx.app.postRunnable(new AndroidInput.4.2.1(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.4.2
 * JD-Core Version:    0.6.2
 */