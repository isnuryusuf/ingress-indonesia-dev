package com.nianticproject.ingress.f;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.google.a.c.dh;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.service.j;
import com.nianticproject.ingress.ui.aj;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public final class k extends BaseAdapter
  implements SectionIndexer
{
  private final Context a;
  private final ArrayList<a> b = new ArrayList();
  private c[] c;
  private final HashMap<String, a> d = new HashMap();
  private final HashMap<Long, d> e = new HashMap();
  private dh<String, com.nianticproject.ingress.shared.invites.a> f;
  private final HashMap<Long, WeakReference<Bitmap>> g = new HashMap();
  private final j h = new l(this);
  private final com.nianticproject.ingress.common.m.a i;
  private final com.nianticproject.ingress.common.m.d j;

  public k(Context paramContext, com.nianticproject.ingress.common.m.a parama, com.nianticproject.ingress.common.m.d paramd)
  {
    this.a = paramContext;
    this.i = parama;
    this.j = paramd;
  }

  private a a(int paramInt)
  {
    return (a)this.b.get(paramInt);
  }

  private void a(a parama, b paramb)
  {
    if (parama != null)
    {
      parama.a(paramb);
      notifyDataSetChanged();
    }
  }

  private void a(d paramd, int paramInt)
  {
    a locala = a(paramInt);
    long l = locala.c;
    paramd.g = paramInt;
    paramd.b.setText(locala.a);
    paramd.c.setText(locala.b);
    paramd.d.setVisibility(4);
    paramd.f.setVisibility(4);
    paramd.e.setVisibility(4);
    paramd.a(true);
    com.nianticproject.ingress.shared.invites.a locala1;
    if (this.f != null)
    {
      locala1 = (com.nianticproject.ingress.shared.invites.a)this.f.get(locala.b);
      if (locala1 != null);
      switch (n.a[locala1.ordinal()])
      {
      default:
        label132: switch (n.b[locala.a().ordinal()])
        {
        default:
        case 1:
        case 2:
        case 3:
        case 4:
        }
        break;
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      paramd.d.setOnClickListener(new m(this, paramd));
      WeakReference localWeakReference = (WeakReference)this.g.get(Long.valueOf(l));
      if (localWeakReference == null)
        break label331;
      Bitmap localBitmap = (Bitmap)localWeakReference.get();
      if (localBitmap == null)
        break label331;
      paramd.a(localBitmap, false);
      return;
      locala1 = null;
      break;
      locala.a(b.c);
      break label132;
      locala.a(b.b);
      break label132;
      paramd.d.setVisibility(0);
      continue;
      paramd.e.setText(2131296358);
      paramd.e.setVisibility(0);
      paramd.a(false);
      continue;
      paramd.e.setText(2131296359);
      paramd.e.setVisibility(0);
      continue;
      paramd.f.setVisibility(0);
      paramd.a(false);
    }
    label331: this.e.remove(Long.valueOf(l));
    this.e.put(Long.valueOf(l), paramd);
    paramd.a(null, false);
    NemesisService.a(this.a, l);
  }

  public final void a()
  {
    ec.a("onResume");
    NemesisService.a(this.h);
  }

  public final void a(dh<String, com.nianticproject.ingress.shared.invites.a> paramdh)
  {
    ec.a("setContactInviteState");
    this.f = paramdh;
    notifyDataSetChanged();
  }

  public final void a(String paramString, b paramb)
  {
    ec.a("setContactInviteState");
    a((a)this.d.get(paramString), paramb);
  }

  public final void a(ArrayList<a> paramArrayList)
  {
    this.b.clear();
    this.d.clear();
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      this.b.addAll(paramArrayList);
      String str1 = ((a)paramArrayList.get(0)).a.trim().substring(0, 1).toUpperCase();
      localArrayList.add(new c(str1, 0));
      for (int k = 0; k < paramArrayList.size(); k++)
      {
        a locala = (a)paramArrayList.get(k);
        this.d.put(locala.b, locala);
        String str2 = locala.a.trim().substring(0, 1).toUpperCase();
        if (!str1.equals(str2))
          localArrayList.add(new c(str2, k));
        locala.a(-1 + localArrayList.size());
      }
    }
    this.c = new c[localArrayList.size()];
    this.c = ((c[])localArrayList.toArray(this.c));
    notifyDataSetChanged();
  }

  public final void b()
  {
    ec.a("onPause");
    NemesisService.b(this.h);
  }

  public final o c()
  {
    return new o(this, (byte)0);
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getPositionForSection(int paramInt)
  {
    return this.c[paramInt].b;
  }

  public final int getSectionForPosition(int paramInt)
  {
    return ((a)this.b.get(paramInt)).b();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null);
    while (true)
    {
      a((d)paramView.getTag(), paramInt);
      return paramView;
      Context localContext = this.a;
      paramView = LayoutInflater.from(localContext).inflate(2130903050, paramViewGroup, false);
      aj.a(localContext, paramView, "coda.ttf");
      paramView.setTag(new d(paramView));
    }
  }

  public final boolean isEnabled(int paramInt)
  {
    return false;
  }

  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    this.e.clear();
  }

  public final void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    this.e.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.k
 * JD-Core Version:    0.6.2
 */