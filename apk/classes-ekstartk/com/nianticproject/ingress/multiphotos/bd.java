package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.nianticproject.ingress.common.w.v;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import com.nianticproject.ingress.shared.portal.a;
import java.util.ArrayList;
import java.util.Collection;

public final class bd extends BaseAdapter
{
  private final a a;
  private final ArrayList<PlayerPortalImage> b = new ArrayList();
  private final bg c;

  public bd(Context paramContext, f paramf, a parama)
  {
    this.a = parama;
    this.c = new bg(paramf, BitmapFactory.decodeResource(paramContext.getResources(), 2130837652), BitmapFactory.decodeResource(paramContext.getResources(), 2130837599));
  }

  private PlayerPortalImage a(int paramInt)
  {
    return (PlayerPortalImage)this.b.get(paramInt);
  }

  private void a(ImageView paramImageView, String paramString, int paramInt)
  {
    if (paramString != null);
    for (String str = v.a(paramString, paramInt); TextUtils.equals((String)paramImageView.getTag(), str); str = null)
      return;
    this.c.a(str, paramImageView, null);
  }

  public final int a()
  {
    return this.b.size();
  }

  public final void a(Collection<PlayerPortalImage> paramCollection)
  {
    this.b.clear();
    if (paramCollection != null)
      this.b.addAll(paramCollection);
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    return Math.max(1, this.b.size());
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null)
      if (this.b.size() <= 0)
        break label94;
    ImageView localImageView;
    String str;
    label94: for (Object localObject = a(paramInt); ; localObject = this.a)
    {
      if (localObject != null)
      {
        localImageView = bf.a(paramView).a;
        str = ((a)localObject).b();
        int i = Math.max(localImageView.getWidth(), localImageView.getHeight());
        if (i <= 0)
          break label103;
        a(localImageView, str, i);
      }
      return paramView;
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903067, paramViewGroup, false);
      break;
    }
    label103: localImageView.getViewTreeObserver().addOnGlobalLayoutListener(new be(this, localImageView, str));
    return paramView;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.bd
 * JD-Core Version:    0.6.2
 */