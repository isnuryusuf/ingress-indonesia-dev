package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

final class aa extends FrameLayout
{
  private aa(Context paramContext)
  {
    super(paramContext);
  }

  static ViewGroup a(View paramView)
  {
    aa localaa = new aa(paramView.getContext());
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams != null)
      localaa.setLayoutParams(localLayoutParams);
    paramView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    localaa.addView(paramView);
    return localaa;
  }

  protected final void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }

  protected final void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.aa
 * JD-Core Version:    0.6.2
 */