package com.badlogic.gdx.backends.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;

class AndroidInput$3$2
  implements DialogInterface.OnClickListener
{
  AndroidInput$3$2(AndroidInput.3 param3)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Gdx.app.postRunnable(new AndroidInput.3.2.1(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.3.2
 * JD-Core Version:    0.6.2
 */