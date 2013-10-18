.class public Lcom/nianticproject/ingress/PortalAddActivity;
.super Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;
.source "SourceFile"


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/nianticproject/ingress/ui/SquareRelativeLayout;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/net/Uri;

.field private q:Landroid/net/Uri;

.field private r:Landroid/net/Uri;

.field private s:Ljava/io/File;

.field private t:Lcom/google/a/d/u;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;-><init>()V

    .line 92
    iput v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->w:I

    .line 98
    iput-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    .line 101
    iput-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->y:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/a/d/u;Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const-class v0, Lcom/nianticproject/ingress/PortalAddActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "initial_lat_lng"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "start_camera_capture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "file_for_camera"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iget v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->w:I

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/di;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/di;-><init>(Lcom/nianticproject/ingress/PortalAddActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 391
    return-void
.end method

.method private a(Lcom/google/a/d/u;)V
    .locals 3
    .parameter

    .prologue
    .line 501
    if-nez p1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->n:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iput-object p1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://maps.googleapis.com/maps/api/staticmap?center="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&zoom=17&sensor=true&maptype=satellite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->u:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Location preview URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/PortalAddActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->u:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->c(Landroid/content/Context;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/PortalAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/PortalAddActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Landroid/content/Context;Lcom/google/a/d/u;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/PortalAddActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/PortalAddActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    iget-object v3, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->y:Z

    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/PortalAddActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/PortalAddActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/PortalAddActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/PortalAddActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->w:I

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->q:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/net/Uri;IJ)I

    .line 404
    :cond_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Lcom/google/a/d/u;)V

    .line 406
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    goto :goto_0

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;Landroid/net/Uri;)I

    goto :goto_1
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 446
    iget-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    iget-object v4, p0, Lcom/nianticproject/ingress/PortalAddActivity;->q:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 449
    :goto_0
    iget-object v4, p0, Lcom/nianticproject/ingress/PortalAddActivity;->i:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    if-eqz v0, :cond_1

    .line 452
    :goto_1
    iget-object v4, p0, Lcom/nianticproject/ingress/PortalAddActivity;->n:Landroid/view/View;

    if-eqz v1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    return-void

    :cond_0
    move v0, v2

    .line 446
    goto :goto_0

    :cond_1
    move v1, v2

    .line 451
    goto :goto_1

    :cond_2
    move v0, v2

    .line 452
    goto :goto_2

    :cond_3
    move v2, v3

    .line 453
    goto :goto_3
.end method

.method static synthetic h(Lcom/nianticproject/ingress/PortalAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->g()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    const-string/jumbo v0, "PortalAddActivity"

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput-object p2, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->q:Landroid/net/Uri;

    .line 326
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-static {p0, v0, p3}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    .line 338
    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;Lcom/google/a/d/u;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    .line 361
    if-nez p2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_2
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Lcom/google/a/d/u;)V

    .line 366
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;Lcom/nianticproject/ingress/o/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Lcom/nianticproject/ingress/o/h;)V

    .line 346
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->v:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    invoke-static {p0, v0, p2}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->h:Landroid/graphics/Bitmap;

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 310
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    .line 312
    :cond_0
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 411
    packed-switch p1, :pswitch_data_0

    .line 440
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 413
    :pswitch_0
    if-eq p2, v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->s:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->s:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/net/Uri;)I

    iput-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->s:Ljava/io/File;

    iput-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->finish()V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 432
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    .line 435
    invoke-static {p3}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Landroid/content/Intent;)Lcom/google/a/d/u;

    move-result-object v0

    .line 436
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Lcom/google/a/d/u;)V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->setContentView(I)V

    .line 154
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/SquareRelativeLayout;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->g:Lcom/nianticproject/ingress/ui/SquareRelativeLayout;

    .line 157
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->f:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->n:Landroid/view/View;

    .line 159
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->i:Landroid/widget/Button;

    .line 160
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->j:Landroid/widget/Button;

    .line 161
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->k:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->l:Landroid/widget/EditText;

    .line 163
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    .line 165
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->h:Landroid/graphics/Bitmap;

    .line 168
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->m:Landroid/widget/TextView;

    .line 169
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM.dd.yyyy HH:mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->m:Landroid/widget/TextView;

    const v2, 0x7f090083

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/nianticproject/ingress/PortalAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    .line 183
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "initial_lat_lng"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    .line 186
    iput-boolean v6, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    if-nez p1, :cond_1

    const-string/jumbo v1, "start_camera_capture"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string/jumbo v1, "file_for_camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->s:Ljava/io/File;

    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->s:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/nianticproject/ingress/PortalAddActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/nianticproject/ingress/dd;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/dd;-><init>(Lcom/nianticproject/ingress/PortalAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->g:Lcom/nianticproject/ingress/ui/SquareRelativeLayout;

    new-instance v1, Lcom/nianticproject/ingress/de;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/de;-><init>(Lcom/nianticproject/ingress/PortalAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/SquareRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/df;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/df;-><init>(Lcom/nianticproject/ingress/PortalAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/dg;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/dg;-><init>(Lcom/nianticproject/ingress/PortalAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nianticproject/ingress/dh;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/dh;-><init>(Lcom/nianticproject/ingress/PortalAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->h()V

    .line 266
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Landroid/view/View;)V

    .line 268
    return-void

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/nianticproject/ingress/PortalAddActivity;->m:Landroid/widget/TextView;

    const v3, 0x7f090082

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/nianticproject/ingress/PortalAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    .line 275
    const-string/jumbo v0, "imageUriDisplayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->q:Landroid/net/Uri;

    .line 276
    const-string/jumbo v0, "locationUrlDisplayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->v:Ljava/lang/String;

    .line 277
    const-string/jumbo v0, "cameraTransferImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    .line 278
    iget-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->s:Ljava/io/File;

    .line 281
    :cond_0
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    .line 282
    const-string/jumbo v0, "locationPickerOverride"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    .line 283
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onResume()V

    .line 300
    invoke-direct {p0}, Lcom/nianticproject/ingress/PortalAddActivity;->g()V

    .line 301
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string/jumbo v0, "imageUri"

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->p:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    const-string/jumbo v0, "imageUriDisplayed"

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->q:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    const-string/jumbo v0, "locationUrlDisplayed"

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v0, "cameraTransferImageUri"

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->r:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    const-string/jumbo v0, "location"

    iget-object v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->t:Lcom/google/a/d/u;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 294
    const-string/jumbo v0, "locationPickerOverride"

    iget-boolean v1, p0, Lcom/nianticproject/ingress/PortalAddActivity;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    return-void
.end method
