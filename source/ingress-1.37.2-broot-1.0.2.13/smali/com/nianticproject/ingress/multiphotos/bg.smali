.class public final Lcom/nianticproject/ingress/multiphotos/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/multiphotos/f;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/multiphotos/f;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0, v0}, Lcom/nianticproject/ingress/multiphotos/bg;-><init>(Lcom/nianticproject/ingress/multiphotos/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/multiphotos/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/bg;->a:Lcom/nianticproject/ingress/multiphotos/f;

    .line 263
    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/bg;->b:Landroid/graphics/Bitmap;

    .line 264
    iput-object p3, p0, Lcom/nianticproject/ingress/multiphotos/bg;->c:Landroid/graphics/Bitmap;

    .line 265
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 237
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/nianticproject/ingress/multiphotos/bi;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-static {p0}, Lcom/nianticproject/ingress/multiphotos/bg;->b(Landroid/widget/ImageView;)Lcom/nianticproject/ingress/multiphotos/bi;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 331
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 333
    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/bg;->b(Landroid/widget/ImageView;)Lcom/nianticproject/ingress/multiphotos/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/multiphotos/bi;->cancel(Z)Z

    .line 330
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 335
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/bg;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 338
    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/nianticproject/ingress/multiphotos/bg;->b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/nianticproject/ingress/multiphotos/bi;
    .locals 2
    .parameter

    .prologue
    .line 389
    if-eqz p0, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    instance-of v1, v0, Lcom/nianticproject/ingress/multiphotos/bh;

    if-eqz v1, :cond_0

    .line 392
    check-cast v0, Lcom/nianticproject/ingress/multiphotos/bh;

    .line 393
    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/bh;->a()Lcom/nianticproject/ingress/multiphotos/bi;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    const v0, 0x7f080007

    invoke-virtual {p0, v0, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 247
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/multiphotos/f;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bg;->a:Lcom/nianticproject/ingress/multiphotos/f;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nianticproject/ingress/multiphotos/bj;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f080007

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    if-eqz p3, :cond_0

    .line 297
    invoke-interface {p3, p1}, Lcom/nianticproject/ingress/multiphotos/bj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bg;->a:Lcom/nianticproject/ingress/multiphotos/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bg;->a:Lcom/nianticproject/ingress/multiphotos/f;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/multiphotos/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    :goto_1
    if-eqz v0, :cond_4

    .line 304
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/bg;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    invoke-virtual {p2, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 306
    invoke-static {p2, v0, p1}, Lcom/nianticproject/ingress/multiphotos/bg;->b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 307
    if-eqz p3, :cond_0

    .line 308
    invoke-interface {p3, p1}, Lcom/nianticproject/ingress/multiphotos/bj;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 302
    goto :goto_1

    .line 313
    :cond_4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 314
    invoke-static {p2}, Lcom/nianticproject/ingress/multiphotos/bg;->b(Landroid/widget/ImageView;)Lcom/nianticproject/ingress/multiphotos/bi;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/bi;->a(Lcom/nianticproject/ingress/multiphotos/bi;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/multiphotos/bi;->cancel(Z)Z

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/bi;

    iget-object v4, p0, Lcom/nianticproject/ingress/multiphotos/bg;->a:Lcom/nianticproject/ingress/multiphotos/f;

    iget-object v5, p0, Lcom/nianticproject/ingress/multiphotos/bg;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4, p2, v5, p3}, Lcom/nianticproject/ingress/multiphotos/bi;-><init>(Lcom/nianticproject/ingress/multiphotos/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nianticproject/ingress/multiphotos/bj;)V

    .line 317
    new-instance v4, Lcom/nianticproject/ingress/multiphotos/bh;

    iget-object v5, p0, Lcom/nianticproject/ingress/multiphotos/bg;->b:Landroid/graphics/Bitmap;

    invoke-direct {v4, v3, v5, v0}, Lcom/nianticproject/ingress/multiphotos/bh;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/nianticproject/ingress/multiphotos/bi;)V

    .line 318
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/multiphotos/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_6
    move v0, v1

    .line 314
    goto :goto_2
.end method
