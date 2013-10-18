.class public final Lcom/nianticproject/ingress/f/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Lcom/nianticproject/ingress/f/c;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/nianticproject/ingress/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/invites/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/nianticproject/ingress/service/j;

.field private final i:Lcom/nianticproject/ingress/common/m/a;

.field private final j:Lcom/nianticproject/ingress/common/m/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nianticproject/ingress/common/m/a;Lcom/nianticproject/ingress/common/m/d;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->d:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->e:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->g:Ljava/util/HashMap;

    .line 132
    new-instance v0, Lcom/nianticproject/ingress/f/l;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/f/l;-><init>(Lcom/nianticproject/ingress/f/k;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->h:Lcom/nianticproject/ingress/service/j;

    .line 163
    iput-object p1, p0, Lcom/nianticproject/ingress/f/k;->a:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/nianticproject/ingress/f/k;->i:Lcom/nianticproject/ingress/common/m/a;

    .line 165
    iput-object p3, p0, Lcom/nianticproject/ingress/f/k;->j:Lcom/nianticproject/ingress/common/m/d;

    .line 166
    return-void
.end method

.method private a(I)Lcom/nianticproject/ingress/f/a;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/f/k;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/f/a;Lcom/nianticproject/ingress/f/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1, p2}, Lcom/nianticproject/ingress/f/a;->a(Lcom/nianticproject/ingress/f/b;)V

    .line 228
    invoke-virtual {p0}, Lcom/nianticproject/ingress/f/k;->notifyDataSetChanged()V

    .line 230
    :cond_0
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/f/d;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 282
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/f/k;->a(I)Lcom/nianticproject/ingress/f/a;

    move-result-object v2

    .line 283
    iget-wide v3, v2, Lcom/nianticproject/ingress/f/a;->c:J

    .line 284
    iput p2, p1, Lcom/nianticproject/ingress/f/d;->g:I

    .line 285
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->b:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/nianticproject/ingress/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->c:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->d:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/f/d;->a(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->f:Lcom/google/a/c/dh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->f:Lcom/google/a/c/dh;

    iget-object v5, v2, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/invites/a;

    :goto_0
    if-eqz v0, :cond_0

    sget-object v5, Lcom/nianticproject/ingress/f/n;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/invites/a;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/f/n;->b:[I

    invoke-virtual {v2}, Lcom/nianticproject/ingress/f/a;->a()Lcom/nianticproject/ingress/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/f/b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 289
    :goto_2
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->d:Landroid/widget/Button;

    new-instance v2, Lcom/nianticproject/ingress/f/m;

    invoke-direct {v2, p0, p1}, Lcom/nianticproject/ingress/f/m;-><init>(Lcom/nianticproject/ingress/f/k;Lcom/nianticproject/ingress/f/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->g:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 297
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 299
    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p1, v0, v6}, Lcom/nianticproject/ingress/f/d;->a(Landroid/graphics/Bitmap;Z)V

    .line 309
    :goto_3
    return-void

    :cond_1
    move-object v0, v1

    .line 287
    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/f/b;->c:Lcom/nianticproject/ingress/f/b;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/f/a;->a(Lcom/nianticproject/ingress/f/b;)V

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/f/b;->b:Lcom/nianticproject/ingress/f/b;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/f/a;->a(Lcom/nianticproject/ingress/f/b;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->d:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    const v2, 0x7f090066

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v6}, Lcom/nianticproject/ingress/f/d;->a(Z)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    const v2, 0x7f090067

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p1, Lcom/nianticproject/ingress/f/d;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Lcom/nianticproject/ingress/f/d;->a(Z)V

    goto :goto_2

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->e:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->e:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p1, v1, v6}, Lcom/nianticproject/ingress/f/d;->a(Landroid/graphics/Bitmap;Z)V

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->a:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;J)I

    goto :goto_3

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/nianticproject/ingress/f/k;Lcom/nianticproject/ingress/f/d;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 38
    iget v0, p1, Lcom/nianticproject/ingress/f/d;->g:I

    sget-object v1, Lcom/nianticproject/ingress/f/b;->d:Lcom/nianticproject/ingress/f/b;

    const-string/jumbo v2, "setContactInviteState"

    invoke-static {v2}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/f/k;->a(I)Lcom/nianticproject/ingress/f/a;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/a;Lcom/nianticproject/ingress/f/b;)V

    iget v0, p1, Lcom/nianticproject/ingress/f/d;->g:I

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/f/k;->a(I)Lcom/nianticproject/ingress/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/f/k;->i:Lcom/nianticproject/ingress/common/m/a;

    const/4 v2, 0x1

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/nianticproject/ingress/f/k;->j:Lcom/nianticproject/ingress/common/m/d;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/nianticproject/ingress/common/m/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/f/k;Lcom/nianticproject/ingress/f/d;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/d;I)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/f/k;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/f/k;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/f/k;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->e:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "onResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->h:Lcom/nianticproject/ingress/service/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Lcom/nianticproject/ingress/service/i;)V

    .line 183
    return-void
.end method

.method public final a(Lcom/google/a/c/dh;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/invites/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    const-string/jumbo v0, "setContactInviteState"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/nianticproject/ingress/f/k;->f:Lcom/google/a/c/dh;

    .line 222
    invoke-virtual {p0}, Lcom/nianticproject/ingress/f/k;->notifyDataSetChanged()V

    .line 223
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/f/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 241
    const-string/jumbo v0, "setContactInviteState"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    .line 243
    invoke-direct {p0, v0, p2}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/a;Lcom/nianticproject/ingress/f/b;)V

    .line 244
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/f/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v0, Lcom/nianticproject/ingress/f/c;

    invoke-direct {v0, v4, v2}, Lcom/nianticproject/ingress/f/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 203
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    .line 204
    iget-object v5, p0, Lcom/nianticproject/ingress/f/k;->d:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v5, v0, Lcom/nianticproject/ingress/f/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 207
    new-instance v6, Lcom/nianticproject/ingress/f/c;

    invoke-direct {v6, v5, v1}, Lcom/nianticproject/ingress/f/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/f/a;->a(I)V

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nianticproject/ingress/f/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->c:[Lcom/nianticproject/ingress/f/c;

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->c:[Lcom/nianticproject/ingress/f/c;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/f/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/k;->c:[Lcom/nianticproject/ingress/f/c;

    .line 216
    invoke-virtual {p0}, Lcom/nianticproject/ingress/f/k;->notifyDataSetChanged()V

    .line 217
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 186
    const-string/jumbo v0, "onPause"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->h:Lcom/nianticproject/ingress/service/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Lcom/nianticproject/ingress/service/i;)V

    .line 188
    return-void
.end method

.method public final c()Lcom/nianticproject/ingress/f/o;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Lcom/nianticproject/ingress/f/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/f/o;-><init>(Lcom/nianticproject/ingress/f/k;B)V

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/f/k;->a(I)Lcom/nianticproject/ingress/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 264
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->c:[Lcom/nianticproject/ingress/f/c;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/nianticproject/ingress/f/c;->b:I

    return v0
.end method

.method public final getSectionForPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/f/a;->b()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->c:[Lcom/nianticproject/ingress/f/c;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    if-eqz p2, :cond_0

    .line 320
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/d;

    .line 321
    invoke-direct {p0, v0, p1}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/d;I)V

    .line 322
    return-object p2

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v1, "coda.ttf"

    invoke-static {v0, p2, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Lcom/nianticproject/ingress/f/d;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/f/d;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/f/k;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 178
    return-void
.end method
