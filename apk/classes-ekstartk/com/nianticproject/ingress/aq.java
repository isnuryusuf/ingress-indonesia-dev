package com.nianticproject.ingress;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.nianticproject.ingress.service.NemesisService;

final class aq
  implements View.OnClickListener
{
  aq(ConfirmSubmitPhotoActivity paramConfirmSubmitPhotoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (!ConfirmSubmitPhotoActivity.c(this.a).isEnabled())
      return;
    ConfirmSubmitPhotoActivity.c(this.a).setEnabled(false);
    NemesisService.a(paramView.getContext(), ConfirmSubmitPhotoActivity.d(this.a), Math.max(ConfirmSubmitPhotoActivity.b(this.a).getWidth(), ConfirmSubmitPhotoActivity.b(this.a).getHeight()));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.aq
 * JD-Core Version:    0.6.2
 */