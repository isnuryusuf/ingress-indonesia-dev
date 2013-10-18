.class public final Lcom/nianticproject/ingress/multiphotos/bd;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/portal/a;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/nianticproject/ingress/multiphotos/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nianticproject/ingress/multiphotos/f;Lcom/nianticproject/ingress/shared/portal/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    .line 73
    iput-object p3, p0, Lcom/nianticproject/ingress/multiphotos/bd;->a:Lcom/nianticproject/ingress/shared/portal/a;

    .line 74
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/bg;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020094

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/nianticproject/ingress/multiphotos/bg;-><init>(Lcom/nianticproject/ingress/multiphotos/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->c:Lcom/nianticproject/ingress/multiphotos/bg;

    .line 77
    return-void
.end method

.method private a(I)Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 139
    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/nianticproject/ingress/common/w/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 141
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :goto_1
    return-void

    :cond_0
    move-object v1, v2

    .line 139
    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->c:Lcom/nianticproject/ingress/multiphotos/bg;

    invoke-virtual {v0, v1, p1, v2}, Lcom/nianticproject/ingress/multiphotos/bg;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nianticproject/ingress/multiphotos/bj;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/bd;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/multiphotos/bd;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/bd;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/multiphotos/bd;->a(I)Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 111
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    if-eqz p2, :cond_1

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/multiphotos/bd;->a(I)Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    move-result-object v0

    .line 130
    :goto_1
    if-eqz v0, :cond_0

    .line 131
    invoke-static {p2}, Lcom/nianticproject/ingress/multiphotos/bf;->a(Landroid/view/View;)Lcom/nianticproject/ingress/multiphotos/bf;

    move-result-object v1

    iget-object v1, v1, Lcom/nianticproject/ingress/multiphotos/bf;->a:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/portal/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0, v1, v0, v2}, Lcom/nianticproject/ingress/multiphotos/bd;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 134
    :cond_0
    :goto_2
    return-object p2

    .line 120
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bd;->a:Lcom/nianticproject/ingress/shared/portal/a;

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/multiphotos/be;

    invoke-direct {v3, p0, v1, v0}, Lcom/nianticproject/ingress/multiphotos/be;-><init>(Lcom/nianticproject/ingress/multiphotos/bd;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2
.end method
