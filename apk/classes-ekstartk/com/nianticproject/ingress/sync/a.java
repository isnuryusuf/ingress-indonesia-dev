package com.nianticproject.ingress.sync;

import android.accounts.Account;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SyncResult;
import android.os.Bundle;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.curation.f;
import com.nianticproject.ingress.curation.i;

public class a extends AbstractThreadedSyncAdapter
{
  private static final aa a = new aa(a.class);

  public a(Context paramContext)
  {
    super(paramContext, true);
  }

  public void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
  {
    Context localContext = getContext();
    i locali = new i();
    new b(this);
    f.a(localContext, locali, paramSyncResult);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.sync.a
 * JD-Core Version:    0.6.2
 */