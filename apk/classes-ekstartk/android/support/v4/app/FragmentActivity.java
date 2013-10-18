package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.c.d;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

public class FragmentActivity extends Activity
{
  private static final String FRAGMENTS_TAG = "android:support:fragments";
  private static final int HONEYCOMB = 11;
  static final int MSG_REALLY_STOPPED = 1;
  static final int MSG_RESUME_PENDING = 2;
  private static final String TAG = "FragmentActivity";
  d<y> mAllLoaderManagers;
  boolean mCheckedForLoaderManager;
  boolean mCreated;
  final k mFragments = new k();
  final Handler mHandler = new g(this);
  y mLoaderManager;
  boolean mLoadersStarted;
  boolean mOptionsMenuInvalidated;
  boolean mReallyStopped;
  boolean mResumed;
  boolean mRetaining;
  boolean mStopped;

  void doReallyStop(boolean paramBoolean)
  {
    if (!this.mReallyStopped)
    {
      this.mReallyStopped = true;
      this.mRetaining = paramBoolean;
      this.mHandler.removeMessages(1);
      onReallyStop();
    }
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.mCreated);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.mResumed);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.mStopped);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.mReallyStopped);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(this.mLoadersStarted);
    if (this.mLoaderManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
      paramPrintWriter.println(":");
      this.mLoaderManager.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.mFragments.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }

  public Object getLastCustomNonConfigurationInstance()
  {
    i locali = (i)getLastNonConfigurationInstance();
    if (locali != null)
      return locali.b;
    return null;
  }

  y getLoaderManager(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mAllLoaderManagers == null)
      this.mAllLoaderManagers = new d();
    y localy = (y)this.mAllLoaderManagers.a(paramInt);
    if (localy == null)
    {
      if (paramBoolean2)
      {
        localy = new y(this, paramBoolean1);
        this.mAllLoaderManagers.a(paramInt, localy);
      }
      return localy;
    }
    localy.a(this);
    return localy;
  }

  public j getSupportFragmentManager()
  {
    return this.mFragments;
  }

  public w getSupportLoaderManager()
  {
    if (this.mLoaderManager != null)
      return this.mLoaderManager;
    this.mCheckedForLoaderManager = true;
    this.mLoaderManager = getLoaderManager(-1, this.mLoadersStarted, true);
    return this.mLoaderManager;
  }

  void invalidateSupportFragmentIndex(int paramInt)
  {
    if (this.mAllLoaderManagers != null)
    {
      y localy = (y)this.mAllLoaderManagers.a(paramInt);
      if ((localy != null) && (!localy.f))
      {
        localy.i();
        this.mAllLoaderManagers.b(paramInt);
      }
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = paramInt1 >> 16;
    if (i != 0)
    {
      int j = i - 1;
      if ((this.mFragments.f == null) || (j < 0) || (j >= this.mFragments.f.size()))
      {
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      if ((Fragment)this.mFragments.f.get(j) == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      Fragment.n();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onAttachFragment(Fragment paramFragment)
  {
  }

  public void onBackPressed()
  {
    if (!this.mFragments.c())
      finish();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mFragments.a(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.mFragments.a(this);
    if (getLayoutInflater().getFactory() == null)
      getLayoutInflater().setFactory(this);
    super.onCreate(paramBundle);
    i locali = (i)getLastNonConfigurationInstance();
    if (locali != null)
      this.mAllLoaderManagers = locali.e;
    Parcelable localParcelable;
    k localk;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localk = this.mFragments;
      if (locali == null)
        break label94;
    }
    label94: for (ArrayList localArrayList = locali.d; ; localArrayList = null)
    {
      localk.a(localParcelable, localArrayList);
      this.mFragments.i();
      return;
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      k localk = this.mFragments;
      getMenuInflater();
      boolean bool2 = bool1 | localk.r();
      if (Build.VERSION.SDK_INT >= 11)
        return bool2;
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString))
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, h.a);
    if (str1 == null)
      str1 = localTypedArray.getString(0);
    int i = localTypedArray.getResourceId(1, -1);
    String str2 = localTypedArray.getString(2);
    localTypedArray.recycle();
    Object localObject = null;
    if (i != -1)
      localObject = this.mFragments.a(i);
    if ((localObject == null) && (str2 != null))
      localObject = this.mFragments.a(str2);
    if (localObject == null)
      localObject = this.mFragments.a(0);
    if (k.a)
      new StringBuilder("onCreateView: id=0x").append(Integer.toHexString(i)).append(" fname=").append(str1).append(" existing=").append(localObject).toString();
    int j;
    if (localObject == null)
    {
      Fragment localFragment = Fragment.a(this, str1);
      localFragment.x = true;
      if (i != 0)
      {
        j = i;
        localFragment.D = j;
        localFragment.E = 0;
        localFragment.F = str2;
        localFragment.y = true;
        localFragment.B = this.mFragments;
        localFragment.a(this, paramAttributeSet, localFragment.m);
        this.mFragments.a(localFragment, true);
        localObject = localFragment;
      }
    }
    while (true)
    {
      if (((Fragment)localObject).P != null)
        break label438;
      throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
      j = 0;
      break;
      if (((Fragment)localObject).y)
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + str1);
      ((Fragment)localObject).y = true;
      if (!((Fragment)localObject).J)
        ((Fragment)localObject).a(this, paramAttributeSet, ((Fragment)localObject).m);
      this.mFragments.c((Fragment)localObject);
    }
    label438: if (i != 0)
      ((Fragment)localObject).P.setId(i);
    if (((Fragment)localObject).P.getTag() == null)
      ((Fragment)localObject).P.setTag(str2);
    return ((Fragment)localObject).P;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    doReallyStop(false);
    this.mFragments.p();
    if (this.mLoaderManager != null)
      this.mLoaderManager.i();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    this.mFragments.q();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 0:
      return this.mFragments.t();
    case 6:
    }
    return this.mFragments.u();
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    while (true)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.mFragments.v();
    }
  }

  protected void onPause()
  {
    super.onPause();
    this.mResumed = false;
    if (this.mHandler.hasMessages(2))
    {
      this.mHandler.removeMessages(2);
      onResumeFragments();
    }
    this.mFragments.m();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    this.mHandler.removeMessages(2);
    onResumeFragments();
    this.mFragments.e();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.mOptionsMenuInvalidated)
      {
        this.mOptionsMenuInvalidated = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      boolean bool1 = super.onPreparePanel(paramInt, paramView, paramMenu) | this.mFragments.s();
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = paramMenu.hasVisibleItems();
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
      return bool2;
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }

  void onReallyStop()
  {
    if (this.mLoadersStarted)
    {
      this.mLoadersStarted = false;
      if (this.mLoaderManager != null)
      {
        if (this.mRetaining)
          break label41;
        this.mLoaderManager.d();
      }
    }
    while (true)
    {
      this.mFragments.o();
      return;
      label41: this.mLoaderManager.e();
    }
  }

  protected void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(2);
    this.mResumed = true;
    this.mFragments.e();
  }

  protected void onResumeFragments()
  {
    this.mFragments.l();
  }

  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }

  public final Object onRetainNonConfigurationInstance()
  {
    if (this.mStopped)
      doReallyStop(true);
    Object localObject = onRetainCustomNonConfigurationInstance();
    ArrayList localArrayList = this.mFragments.f();
    d locald = this.mAllLoaderManagers;
    int i = 0;
    if (locald != null)
    {
      int j = -1 + this.mAllLoaderManagers.a();
      if (j >= 0)
      {
        y localy = (y)this.mAllLoaderManagers.e(j);
        if (localy.f);
        for (int k = 1; ; k = i)
        {
          j--;
          i = k;
          break;
          localy.i();
          this.mAllLoaderManagers.c(j);
        }
      }
    }
    if ((localArrayList == null) && (i == 0) && (localObject == null))
      return null;
    i locali = new i();
    locali.a = null;
    locali.b = localObject;
    locali.c = null;
    locali.d = localArrayList;
    locali.e = this.mAllLoaderManagers;
    return locali;
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.mFragments.g();
    if (localParcelable != null)
      paramBundle.putParcelable("android:support:fragments", localParcelable);
  }

  protected void onStart()
  {
    super.onStart();
    this.mStopped = false;
    this.mReallyStopped = false;
    this.mHandler.removeMessages(1);
    if (!this.mCreated)
    {
      this.mCreated = true;
      this.mFragments.j();
    }
    this.mFragments.h();
    this.mFragments.e();
    if (!this.mLoadersStarted)
    {
      this.mLoadersStarted = true;
      if (this.mLoaderManager == null)
        break label141;
      this.mLoaderManager.c();
    }
    while (true)
    {
      this.mCheckedForLoaderManager = true;
      this.mFragments.k();
      if (this.mAllLoaderManagers == null)
        break;
      for (int i = -1 + this.mAllLoaderManagers.a(); i >= 0; i--)
      {
        y localy = (y)this.mAllLoaderManagers.e(i);
        localy.f();
        localy.h();
      }
      label141: if (!this.mCheckedForLoaderManager)
        this.mLoaderManager = getLoaderManager(-1, this.mLoadersStarted, false);
    }
  }

  protected void onStop()
  {
    super.onStop();
    this.mStopped = true;
    this.mHandler.sendEmptyMessage(1);
    this.mFragments.n();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, paramInt);
  }

  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0)
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, (1 + paramFragment.o << 16) + (0xFFFF & paramInt));
  }

  public void supportInvalidateOptionsMenu()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      invalidateOptionsMenu();
      return;
    }
    this.mOptionsMenuInvalidated = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentActivity
 * JD-Core Version:    0.6.2
 */