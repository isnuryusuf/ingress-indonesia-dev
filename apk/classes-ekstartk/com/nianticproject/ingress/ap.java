package com.nianticproject.ingress;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.nianticproject.ingress.o.f;

final class ap
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ap(ConfirmSubmitPhotoActivity paramConfirmSubmitPhotoActivity)
  {
  }

  public final void onGlobalLayout()
  {
    ConfirmSubmitPhotoActivity.a(this.a);
    f.a(ConfirmSubmitPhotoActivity.b(this.a), this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ap
 * JD-Core Version:    0.6.2
 */