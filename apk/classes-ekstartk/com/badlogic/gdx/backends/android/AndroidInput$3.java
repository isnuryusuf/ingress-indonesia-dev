package com.badlogic.gdx.backends.android;

import android.app.AlertDialog.Builder;
import android.widget.EditText;
import com.badlogic.gdx.Input.TextInputListener;

class AndroidInput$3
  implements Runnable
{
  AndroidInput$3(AndroidInput paramAndroidInput, String paramString1, String paramString2, Input.TextInputListener paramTextInputListener)
  {
  }

  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.this$0.app);
    localBuilder.setTitle(this.val$title);
    EditText localEditText = new EditText(this.this$0.app);
    localEditText.setText(this.val$text);
    localEditText.setSingleLine();
    localBuilder.setView(localEditText);
    localBuilder.setPositiveButton("Ok", new AndroidInput.3.1(this, localEditText));
    localBuilder.setNegativeButton("Cancel", new AndroidInput.3.2(this));
    localBuilder.setOnCancelListener(new AndroidInput.3.3(this));
    localBuilder.show();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.3
 * JD-Core Version:    0.6.2
 */