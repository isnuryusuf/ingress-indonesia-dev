.class public Lcom/nianticproject/ingress/multiphotos/LightboxActivity;
.super Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/multiphotos/an;
.implements Lcom/nianticproject/ingress/multiphotos/ap;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/nianticproject/ingress/multiphotos/bg;

.field private l:Lcom/nianticproject/ingress/multiphotos/q;

.field private m:I

.field private n:Lcom/nianticproject/ingress/multiphotos/a;

.field private final o:Lcom/nianticproject/ingress/i/c;

.field private final p:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;-><init>()V

    .line 110
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/h;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/multiphotos/h;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->o:Lcom/nianticproject/ingress/i/c;

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->p:Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 89
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "LightboxActivity.position"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "LightboxActivity.position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)Lcom/nianticproject/ingress/multiphotos/a;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->n:Lcom/nianticproject/ingress/multiphotos/a;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->p:Landroid/content/Intent;

    const-string/jumbo v1, "LightboxActivity.position"

    iget v2, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->j()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/multiphotos/av;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    iget v3, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/multiphotos/q;->b(I)Lcom/nianticproject/ingress/shared/portal/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/portal/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 310
    iget-object v3, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/q;->c()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    iget v3, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/multiphotos/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    iget v2, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/multiphotos/q;->d(I)I

    move-result v0

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->j:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    iget v2, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/multiphotos/q;->b(I)Lcom/nianticproject/ingress/shared/portal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/portal/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    iget v3, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/multiphotos/q;->c(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 310
    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string/jumbo v0, "LightboxActivity"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/multiphotos/ba;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/p;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/multiphotos/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/a/ak",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/multiphotos/q;->a(Ljava/util/Collection;Ljava/util/Map;)V

    .line 337
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->j()V

    .line 338
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->finish()V

    .line 385
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->setResult(ILandroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->finish()V

    .line 393
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 375
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 376
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/j/a;->a(Landroid/support/v4/app/j;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public final g()Lcom/nianticproject/ingress/multiphotos/bg;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->k:Lcom/nianticproject/ingress/multiphotos/bg;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->k:Lcom/nianticproject/ingress/multiphotos/bg;

    .line 356
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/o;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/o;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/multiphotos/g;->a(Landroid/support/v4/app/j;Lb/a/a;)Lcom/nianticproject/ingress/multiphotos/g;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/g;->b()Lcom/nianticproject/ingress/multiphotos/f;

    move-result-object v0

    .line 355
    new-instance v1, Lcom/nianticproject/ingress/multiphotos/bg;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/multiphotos/bg;-><init>(Lcom/nianticproject/ingress/multiphotos/f;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->k:Lcom/nianticproject/ingress/multiphotos/bg;

    .line 356
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->k:Lcom/nianticproject/ingress/multiphotos/bg;

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 370
    invoke-static {p0}, Lcom/nianticproject/ingress/j/a;->a(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->finish()V

    .line 214
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->p:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->setContentView(I)V

    .line 142
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->d()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/multiphotos/av;->a(Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v0

    move-object v2, v0

    .line 145
    :goto_1
    if-nez v2, :cond_2

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Portal not found in cache, finishing..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->finish()V

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 151
    :cond_2
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->d:Landroid/view/View;

    .line 153
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 154
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->f:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->g:Landroid/view/View;

    .line 156
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->h:Landroid/view/View;

    .line 157
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    .line 158
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->j:Landroid/widget/TextView;

    .line 160
    new-instance v1, Lcom/nianticproject/ingress/multiphotos/a;

    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f08003e

    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/nianticproject/ingress/multiphotos/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->n:Lcom/nianticproject/ingress/multiphotos/a;

    .line 165
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 166
    const-string/jumbo v3, "LightboxActivity.position"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    .line 167
    if-eqz p1, :cond_3

    .line 168
    const-string/jumbo v1, "LightboxActivity.position"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    .line 171
    :cond_3
    sget-object v1, Lcom/nianticproject/ingress/shared/m;->a:Lcom/nianticproject/ingress/shared/m;

    invoke-interface {v2, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/q;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x4260

    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/multiphotos/q;-><init>(Landroid/support/v4/app/j;I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/v;)V

    .line 177
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/i;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/i;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 185
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/nianticproject/ingress/multiphotos/j;

    invoke-direct {v2, p0, v0}, Lcom/nianticproject/ingress/multiphotos/j;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/k;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/k;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/l;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/l;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/m;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/m;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->z()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->o:Lcom/nianticproject/ingress/i/c;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/i/b;->b(Lcom/nianticproject/ingress/i/c;)V

    .line 245
    invoke-super {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onPause()V

    .line 246
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onResume()V

    .line 220
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->z()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->o:Lcom/nianticproject/ingress/i/c;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/i/b;->a(Lcom/nianticproject/ingress/i/c;)V

    .line 222
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->e()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Image stream is null! Finishing activity..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->finish()V

    .line 239
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/i/b;->a(Lcom/nianticproject/ingress/i/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/i/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/nianticproject/ingress/multiphotos/q;->a(Ljava/util/Collection;Ljava/util/Map;)V

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->e:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/n;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/n;-><init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/az;)V

    .line 238
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->j()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string/jumbo v0, "LightboxActivity.position"

    iget v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    return-void
.end method

.method public final y_()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/q;->c()I

    move-result v1

    .line 275
    add-int/lit8 v0, v0, 0x1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z_()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->l:Lcom/nianticproject/ingress/multiphotos/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/q;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
