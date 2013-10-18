package com.badlogic.gdx.backends.android;

import android.widget.EditText;
import com.badlogic.gdx.Input.TextInputListener;

class AndroidInput$3$1$1
  implements Runnable
{
  AndroidInput$3$1$1(AndroidInput.3.1 param1)
  {
  }

  public void run()
  {
    this.this$2.this$1.val$listener.input(this.this$2.val$input.getText().toString());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.3.1.1
 * JD-Core Version:    0.6.2
 */