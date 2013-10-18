.class public Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;
.super Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;
.source "SourceFile"


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    iget-object v1, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/net/Uri;IJ)I

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string/jumbo v0, "ConfirmSubmitPhotoActivity"

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iput-object p2, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    invoke-static {p0, v0, p3}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;Lcom/nianticproject/ingress/o/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 163
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->a(Lcom/nianticproject/ingress/o/h;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    .line 63
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->f:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->g:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->h:Landroid/widget/Button;

    .line 66
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->i:Landroid/widget/Button;

    .line 68
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f090095

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM - dd - yyyy HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 73
    iget-object v1, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->g:Landroid/widget/TextView;

    const v2, 0x7f090094

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/ap;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/ap;-><init>(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nianticproject/ingress/aq;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/aq;-><init>(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/ar;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/ar;-><init>(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/as;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/as;-><init>(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string/jumbo v0, "uri"

    iget-object v1, p0, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    return-void
.end method
