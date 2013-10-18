package android.support.v4.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

final class ad extends SingleLineTransformationMethod
{
  private Locale a;

  public ad(Context paramContext)
  {
    this.a = paramContext.getResources().getConfiguration().locale;
  }

  public final CharSequence getTransformation(CharSequence paramCharSequence, View paramView)
  {
    CharSequence localCharSequence = super.getTransformation(paramCharSequence, paramView);
    if (localCharSequence != null)
      return localCharSequence.toString().toUpperCase(this.a);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ad
 * JD-Core Version:    0.6.2
 */