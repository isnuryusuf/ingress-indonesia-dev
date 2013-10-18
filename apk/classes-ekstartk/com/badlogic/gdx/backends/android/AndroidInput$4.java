package com.badlogic.gdx.backends.android;

import android.app.AlertDialog.Builder;
import android.widget.EditText;
import com.badlogic.gdx.Input.TextInputListener;

class AndroidInput$4
  implements Runnable
{
  AndroidInput$4(AndroidInput paramAndroidInput, String paramString1, String paramString2, Input.TextInputListener paramTextInputListener)
  {
  }

  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.this$0.app);
    localBuilder.setTitle(this.val$title);
    EditText localEditText = new EditText(this.this$0.app);
    localEditText.setHint(this.val$placeholder);
    localEditText.setSingleLine();
    localBuilder.setView(localEditText);
    localBuilder.setPositiveButton("Ok", new AndroidInput.4.1(this, localEditText));
    localBuilder.setOnCancelListener(new AndroidInput.4.2(this));
    localBuilder.show();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.4
 * JD-Core Version:    0.6.2
 */