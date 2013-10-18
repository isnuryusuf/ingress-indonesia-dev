package android.support.v4.app;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class t extends Fragment
{
  private final Runnable W = new u(this);
  private final AdapterView.OnItemClickListener X = new v(this);
  ListAdapter a;
  ListView b;
  View c;
  TextView d;
  View e;
  View f;
  CharSequence g;
  boolean h;
  private final Handler i = new Handler();

  private void G()
  {
    if (this.b != null)
      return;
    View localView1 = this.P;
    if (localView1 == null)
      throw new IllegalStateException("Content view not yet created");
    if ((localView1 instanceof ListView))
    {
      this.b = ((ListView)localView1);
      this.h = true;
      this.b.setOnItemClickListener(this.X);
      if (this.a == null)
        break label256;
      ListAdapter localListAdapter = this.a;
      this.a = null;
      a(localListAdapter);
    }
    while (true)
    {
      this.i.post(this.W);
      return;
      this.d = ((TextView)localView1.findViewById(16711681));
      if (this.d == null)
        this.c = localView1.findViewById(16908292);
      View localView2;
      while (true)
      {
        this.e = localView1.findViewById(16711682);
        this.f = localView1.findViewById(16711683);
        localView2 = localView1.findViewById(16908298);
        if ((localView2 instanceof ListView))
          break label195;
        if (localView2 != null)
          break;
        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
        this.d.setVisibility(8);
      }
      throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
      label195: this.b = ((ListView)localView2);
      if (this.c != null)
      {
        this.b.setEmptyView(this.c);
        break;
      }
      if (this.g == null)
        break;
      this.d.setText(this.g);
      this.b.setEmptyView(this.d);
      break;
      label256: if (this.e != null)
        a(false, false);
    }
  }

  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    G();
    if (this.e == null)
      throw new IllegalStateException("Can't be used with a custom content view");
    if (this.h == paramBoolean1)
      return;
    this.h = paramBoolean1;
    if (paramBoolean1)
    {
      if (paramBoolean2)
      {
        this.e.startAnimation(AnimationUtils.loadAnimation(this.C, 17432577));
        this.f.startAnimation(AnimationUtils.loadAnimation(this.C, 17432576));
      }
      while (true)
      {
        this.e.setVisibility(8);
        this.f.setVisibility(0);
        return;
        this.e.clearAnimation();
        this.f.clearAnimation();
      }
    }
    if (paramBoolean2)
    {
      this.e.startAnimation(AnimationUtils.loadAnimation(this.C, 17432576));
      this.f.startAnimation(AnimationUtils.loadAnimation(this.C, 17432577));
    }
    while (true)
    {
      this.e.setVisibility(0);
      this.f.setVisibility(8);
      return;
      this.e.clearAnimation();
      this.f.clearAnimation();
    }
  }

  public static void b()
  {
  }

  public final ListView E()
  {
    G();
    return this.b;
  }

  public final ListAdapter F()
  {
    return this.a;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FragmentActivity localFragmentActivity = this.C;
    FrameLayout localFrameLayout1 = new FrameLayout(localFragmentActivity);
    LinearLayout localLinearLayout = new LinearLayout(localFragmentActivity);
    localLinearLayout.setId(16711682);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setVisibility(8);
    localLinearLayout.setGravity(17);
    localLinearLayout.addView(new ProgressBar(localFragmentActivity, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
    localFrameLayout1.addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
    FrameLayout localFrameLayout2 = new FrameLayout(localFragmentActivity);
    localFrameLayout2.setId(16711683);
    TextView localTextView = new TextView(this.C);
    localTextView.setId(16711681);
    localTextView.setGravity(17);
    localFrameLayout2.addView(localTextView, new FrameLayout.LayoutParams(-1, -1));
    ListView localListView = new ListView(this.C);
    localListView.setId(16908298);
    localListView.setDrawSelectorOnTop(false);
    localFrameLayout2.addView(localListView, new FrameLayout.LayoutParams(-1, -1));
    localFrameLayout1.addView(localFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
    localFrameLayout1.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return localFrameLayout1;
  }

  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    G();
  }

  public final void a(ListAdapter paramListAdapter)
  {
    if (this.a != null);
    for (int j = 1; ; j = 0)
    {
      this.a = paramListAdapter;
      if (this.b != null)
      {
        this.b.setAdapter(paramListAdapter);
        if ((!this.h) && (j == 0))
        {
          IBinder localIBinder = this.P.getWindowToken();
          boolean bool = false;
          if (localIBinder != null)
            bool = true;
          a(true, bool);
        }
      }
      return;
    }
  }

  public final void e()
  {
    this.i.removeCallbacks(this.W);
    this.b = null;
    this.h = false;
    this.f = null;
    this.e = null;
    this.c = null;
    this.d = null;
    super.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.t
 * JD-Core Version:    0.6.2
 */