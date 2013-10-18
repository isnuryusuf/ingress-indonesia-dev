package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.c.a;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final HashMap<String, Class<?>> a = new HashMap();
  int A;
  k B;
  FragmentActivity C;
  int D;
  int E;
  String F;
  boolean G;
  boolean H;
  boolean I;
  boolean J;
  boolean K;
  boolean L = true;
  boolean M;
  int N;
  ViewGroup O;
  View P;
  View Q;
  boolean R;
  boolean S = true;
  y T;
  boolean U;
  boolean V;
  int j = 0;
  View k;
  int l;
  Bundle m;
  SparseArray<Parcelable> n;
  int o = -1;
  String p;
  Bundle q;
  Fragment r;
  int s = -1;
  int t;
  boolean u;
  boolean v;
  boolean w;
  boolean x;
  boolean y;
  boolean z;

  public static Fragment a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, null);
  }

  public static Fragment a(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass = (Class)a.get(paramString);
      if (localClass == null)
      {
        localClass = paramContext.getClassLoader().loadClass(paramString);
        a.put(paramString, localClass);
      }
      Fragment localFragment = (Fragment)localClass.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(localFragment.getClass().getClassLoader());
        localFragment.q = paramBundle;
      }
      return localFragment;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new e("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localClassNotFoundException);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new e("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new e("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localIllegalAccessException);
    }
  }

  private boolean b()
  {
    return (this.C != null) && (this.u);
  }

  public static void k()
  {
  }

  public static void n()
  {
  }

  public static Animation o()
  {
    return null;
  }

  public static void u()
  {
  }

  public static void v()
  {
  }

  public static void w()
  {
  }

  public static boolean x()
  {
    return false;
  }

  public static void y()
  {
  }

  public static boolean z()
  {
    return false;
  }

  final void A()
  {
    c();
    if (this.T != null)
      this.T.h();
  }

  final void B()
  {
    d();
  }

  public void B_()
  {
    this.M = true;
  }

  final void C()
  {
    if (this.U)
    {
      this.U = false;
      if (!this.V)
      {
        this.V = true;
        this.T = this.C.getLoaderManager(this.o, this.U, false);
      }
      if (this.T != null)
      {
        if (this.C.mRetaining)
          break label69;
        this.T.d();
      }
    }
    return;
    label69: this.T.e();
  }

  final void D()
  {
    e();
    if (this.T != null)
      this.T.g();
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }

  final void a(int paramInt)
  {
    this.o = paramInt;
    this.p = ("android:fragment:" + this.o);
  }

  public void a(Activity paramActivity)
  {
    this.M = true;
  }

  public void a(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.M = true;
  }

  public void a(Bundle paramBundle)
  {
    this.M = true;
  }

  public final void a(Fragment.SavedState paramSavedState)
  {
    if (this.o >= 0)
      throw new IllegalStateException("Fragment already active");
    if ((paramSavedState != null) && (paramSavedState.a != null));
    for (Bundle localBundle = paramSavedState.a; ; localBundle = null)
    {
      this.m = localBundle;
      return;
    }
  }

  public void a(View paramView, Bundle paramBundle)
  {
  }

  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.D));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(this.E));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.F);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.j);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.o);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.p);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.A);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.u);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.v);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(this.w);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.x);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.y);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.G);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.H);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.L);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.K);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.I);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(this.J);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.S);
    if (this.B != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.B);
    }
    if (this.C != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mActivity=");
      paramPrintWriter.println(this.C);
    }
    if (this.q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.q);
    }
    if (this.m != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.m);
    }
    if (this.n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.n);
    }
    if (this.r != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(this.r);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.t);
    }
    if (this.N != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(this.N);
    }
    if (this.O != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.O);
    }
    if (this.P != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.P);
    }
    if (this.Q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(this.P);
    }
    if (this.k != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(this.k);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(this.l);
    }
    if (this.T != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      this.T.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.L != paramBoolean)
    {
      this.L = paramBoolean;
      if ((this.K) && (b()) && (!this.G))
        this.C.supportInvalidateOptionsMenu();
    }
  }

  public LayoutInflater b(Bundle paramBundle)
  {
    return this.C.getLayoutInflater();
  }

  public final String b(int paramInt)
  {
    if (this.C == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    return this.C.getResources().getString(paramInt);
  }

  public final void b(boolean paramBoolean)
  {
    if ((!this.S) && (paramBoolean) && (this.j < 4))
      this.B.b(this);
    this.S = paramBoolean;
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.R = bool;
      return;
    }
  }

  public void c()
  {
    this.M = true;
    if (!this.U)
    {
      this.U = true;
      if (!this.V)
      {
        this.V = true;
        this.T = this.C.getLoaderManager(this.o, this.U, false);
      }
      if (this.T != null)
        this.T.c();
    }
  }

  public void c(Bundle paramBundle)
  {
    this.M = true;
  }

  public void d()
  {
    this.M = true;
  }

  public void d(Bundle paramBundle)
  {
  }

  public void e()
  {
    this.M = true;
  }

  public void e(Bundle paramBundle)
  {
    if (this.o >= 0)
      throw new IllegalStateException("Fragment already active");
    this.q = paramBundle;
  }

  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }

  final void f()
  {
    if (this.n != null)
    {
      this.Q.restoreHierarchyState(this.n);
      this.n = null;
    }
  }

  final boolean g()
  {
    return this.A > 0;
  }

  public final Bundle h()
  {
    return this.q;
  }

  public final int hashCode()
  {
    return super.hashCode();
  }

  public final FragmentActivity i()
  {
    return this.C;
  }

  public final boolean j()
  {
    return (b()) && (!this.G) && (this.P != null) && (this.P.getWindowToken() != null) && (this.P.getVisibility() == 0);
  }

  public final void l()
  {
    this.I = true;
  }

  public final w m()
  {
    if (this.T != null)
      return this.T;
    if (this.C == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    this.V = true;
    this.T = this.C.getLoaderManager(this.o, this.U, true);
    return this.T;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.M = true;
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.C.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public void onLowMemory()
  {
    this.M = true;
  }

  public final View p()
  {
    return this.P;
  }

  public void q()
  {
    this.M = true;
  }

  public void r()
  {
    this.M = true;
  }

  public void s()
  {
    this.M = true;
    if (!this.V)
    {
      this.V = true;
      this.T = this.C.getLoaderManager(this.o, this.U, false);
    }
    if (this.T != null)
      this.T.i();
  }

  final void t()
  {
    this.o = -1;
    this.p = null;
    this.u = false;
    this.v = false;
    this.w = false;
    this.x = false;
    this.y = false;
    this.z = false;
    this.A = 0;
    this.B = null;
    this.C = null;
    this.D = 0;
    this.E = 0;
    this.F = null;
    this.G = false;
    this.H = false;
    this.J = false;
    this.T = null;
    this.U = false;
    this.V = false;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    a.a(this, localStringBuilder);
    if (this.o >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.o);
    }
    if (this.D != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.D));
    }
    if (this.F != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.F);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.Fragment
 * JD-Core Version:    0.6.2
 */