package com.nianticproject.ingress.ui;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.d.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.text.SimpleDateFormat;
import java.util.Locale;

public final class r extends a
{
  private final boolean j;
  private int k;
  private boolean l;
  private final SimpleDateFormat m = new SimpleDateFormat("h:mma", Locale.US);
  private final SimpleDateFormat n = new SimpleDateFormat("MMM dd", Locale.US);

  public r(Context paramContext, Cursor paramCursor, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    super(paramContext, paramCursor);
    this.j = paramBoolean1;
    this.k = paramInt;
    this.l = paramBoolean2;
  }

  public final View a(Context paramContext, ViewGroup paramViewGroup)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("CommsAdapter.newView");
      View localView = LayoutInflater.from(paramContext).inflate(2130903047, paramViewGroup, false);
      localView.setTag(new s(localView, this.j));
      aj.a(paramContext, (ViewGroup)localView, "coda.ttf");
      return localView;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public final void a(int paramInt)
  {
    if (this.k != paramInt)
    {
      this.k = paramInt;
      notifyDataSetChanged();
    }
  }

  // ERROR //
  public final void a(View paramView, Context paramContext, Cursor paramCursor)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: getfield 42	com/nianticproject/ingress/ui/r:l	Z
    //   7: ifne +4 -> 11
    //   10: return
    //   11: ldc 93
    //   13: invokestatic 51	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: getfield 38	com/nianticproject/ingress/ui/r:j	Z
    //   20: ifeq +22 -> 42
    //   23: aload_3
    //   24: iconst_0
    //   25: iconst_m1
    //   26: aload_3
    //   27: invokeinterface 99 1 0
    //   32: iadd
    //   33: invokestatic 105	java/lang/Math:max	(II)I
    //   36: invokeinterface 109 2 0
    //   41: pop
    //   42: aload_3
    //   43: iconst_1
    //   44: invokeinterface 113 2 0
    //   49: astore 6
    //   51: aload_3
    //   52: iconst_2
    //   53: invokeinterface 117 2 0
    //   58: invokestatic 122	com/nianticproject/ingress/shared/plext/f:a	(I)Lcom/nianticproject/ingress/shared/plext/f;
    //   61: astore 7
    //   63: aload_3
    //   64: bipush 6
    //   66: invokeinterface 117 2 0
    //   71: istore 8
    //   73: aload_3
    //   74: iconst_3
    //   75: invokeinterface 126 2 0
    //   80: lstore 9
    //   82: aload_1
    //   83: invokevirtual 130	android/view/View:getTag	()Ljava/lang/Object;
    //   86: checkcast 64	com/nianticproject/ingress/ui/s
    //   89: astore 11
    //   91: aload 11
    //   93: getfield 133	com/nianticproject/ingress/ui/s:a	Landroid/widget/TextView;
    //   96: iconst_0
    //   97: invokevirtual 138	android/widget/TextView:setVisibility	(I)V
    //   100: aload_3
    //   101: checkcast 140	com/nianticproject/ingress/content/f
    //   104: invokevirtual 143	com/nianticproject/ingress/content/f:a	()Ljava/util/List;
    //   107: astore 12
    //   109: new 145	com/nianticproject/ingress/ui/ab
    //   112: dup
    //   113: invokespecial 147	com/nianticproject/ingress/ui/ab:<init>	()V
    //   116: astore 13
    //   118: aload_0
    //   119: getfield 40	com/nianticproject/ingress/ui/r:k	I
    //   122: getstatic 152	com/nianticproject/ingress/ak:c	I
    //   125: if_icmpeq +94 -> 219
    //   128: aload 11
    //   130: getfield 154	com/nianticproject/ingress/ui/s:b	Landroid/widget/TextView;
    //   133: aload 6
    //   135: aload 12
    //   137: aload 7
    //   139: iload 8
    //   141: iload 4
    //   143: aload 13
    //   145: invokestatic 159	com/nianticproject/ingress/ui/z:a	(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Lcom/nianticproject/ingress/shared/plext/f;IZLcom/nianticproject/ingress/ui/ab;)V
    //   148: aload_0
    //   149: getfield 38	com/nianticproject/ingress/ui/r:j	Z
    //   152: ifne +73 -> 225
    //   155: aload 13
    //   157: getfield 161	com/nianticproject/ingress/ui/ab:a	Z
    //   160: ifeq +65 -> 225
    //   163: ldc 162
    //   165: istore 14
    //   167: ldc 163
    //   169: istore 15
    //   171: aload 11
    //   173: getfield 133	com/nianticproject/ingress/ui/s:a	Landroid/widget/TextView;
    //   176: aload_2
    //   177: invokevirtual 169	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   180: iload 14
    //   182: invokevirtual 174	android/content/res/Resources:getColor	(I)I
    //   185: invokevirtual 177	android/widget/TextView:setTextColor	(I)V
    //   188: aload 11
    //   190: getfield 133	com/nianticproject/ingress/ui/s:a	Landroid/widget/TextView;
    //   193: iload 15
    //   195: invokevirtual 180	android/widget/TextView:setBackgroundResource	(I)V
    //   198: lload 9
    //   200: lconst_0
    //   201: lcmp
    //   202: ifne +33 -> 235
    //   205: aload 11
    //   207: getfield 133	com/nianticproject/ingress/ui/s:a	Landroid/widget/TextView;
    //   210: ldc 182
    //   212: invokevirtual 186	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   215: invokestatic 86	com/nianticproject/ingress/shared/aj:b	()V
    //   218: return
    //   219: iconst_0
    //   220: istore 4
    //   222: goto -94 -> 128
    //   225: ldc 187
    //   227: istore 14
    //   229: iconst_0
    //   230: istore 15
    //   232: goto -61 -> 171
    //   235: ldc 189
    //   237: invokestatic 51	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   240: invokestatic 195	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   243: astore 17
    //   245: new 197	java/util/Date
    //   248: dup
    //   249: lload 9
    //   251: invokespecial 200	java/util/Date:<init>	(J)V
    //   254: astore 18
    //   256: invokestatic 195	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   259: astore 19
    //   261: aload 19
    //   263: aload 18
    //   265: invokevirtual 204	java/util/Calendar:setTime	(Ljava/util/Date;)V
    //   268: aload 17
    //   270: iconst_5
    //   271: invokevirtual 207	java/util/Calendar:get	(I)I
    //   274: aload 19
    //   276: iconst_5
    //   277: invokevirtual 207	java/util/Calendar:get	(I)I
    //   280: if_icmpne +33 -> 313
    //   283: aload 11
    //   285: getfield 133	com/nianticproject/ingress/ui/s:a	Landroid/widget/TextView;
    //   288: invokestatic 212	a:ar	()Ljava/text/SimpleDateFormat;
    //   291: aload 18
    //   293: invokevirtual 216	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   296: invokevirtual 186	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   299: invokestatic 86	com/nianticproject/ingress/shared/aj:b	()V
    //   302: goto -87 -> 215
    //   305: astore 5
    //   307: invokestatic 86	com/nianticproject/ingress/shared/aj:b	()V
    //   310: aload 5
    //   312: athrow
    //   313: aload 11
    //   315: getfield 133	com/nianticproject/ingress/ui/s:a	Landroid/widget/TextView;
    //   318: aload_0
    //   319: getfield 36	com/nianticproject/ingress/ui/r:n	Ljava/text/SimpleDateFormat;
    //   322: aload 18
    //   324: invokevirtual 216	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   327: invokevirtual 186	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   330: goto -31 -> 299
    //   333: astore 16
    //   335: invokestatic 86	com/nianticproject/ingress/shared/aj:b	()V
    //   338: aload 16
    //   340: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   11	42	305	finally
    //   42	128	305	finally
    //   128	163	305	finally
    //   171	198	305	finally
    //   205	215	305	finally
    //   299	302	305	finally
    //   335	341	305	finally
    //   235	299	333	finally
    //   313	330	333	finally
  }

  public final void a(boolean paramBoolean)
  {
    if (this.l == paramBoolean)
      return;
    this.l = paramBoolean;
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    int i = super.getCount();
    if (this.j)
      i = Math.min(i, 1);
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.r
 * JD-Core Version:    0.6.2
 */