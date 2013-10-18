package com.badlogic.gdx.backends.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;

class AndroidInput$4$1
  implements DialogInterface.OnClickListener
{
  AndroidInput$4$1(AndroidInput.4 param4, EditText paramEditText)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Gdx.app.postRunnable(new AndroidInput.4.1.1(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.4.1
 * JD-Core Version:    0.6.2
 */