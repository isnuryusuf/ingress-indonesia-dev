.class public Lcom/nianticproject/ingress/multiphotos/ag;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/nianticproject/ingress/multiphotos/bj;

.field private g:Ljava/lang/String;

.field private h:Lcom/nianticproject/ingress/multiphotos/bg;

.field private i:Lcom/nianticproject/ingress/shared/portal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/multiphotos/ag;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/multiphotos/ag;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic F()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/ag;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/nianticproject/ingress/multiphotos/ag;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/ag;

    invoke-direct {v0}, Lcom/nianticproject/ingress/multiphotos/ag;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string/jumbo v2, "image_guid"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "attribution_bottom_margin"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/multiphotos/ag;->e(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/ag;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/ag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ag;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/ag;Lcom/nianticproject/ingress/multiphotos/ao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/multiphotos/ag;->a(Lcom/nianticproject/ingress/multiphotos/ao;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/multiphotos/ao;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/am;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/multiphotos/ao;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/nianticproject/ingress/multiphotos/ag;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/multiphotos/ag;)Lcom/nianticproject/ingress/shared/portal/a;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->i:Lcom/nianticproject/ingress/shared/portal/a;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/multiphotos/ag;)Lcom/nianticproject/ingress/multiphotos/bj;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->f:Lcom/nianticproject/ingress/multiphotos/bj;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/multiphotos/ag;)Lcom/nianticproject/ingress/multiphotos/bg;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->h:Lcom/nianticproject/ingress/multiphotos/bg;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 172
    const v0, 0x7f03000d

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 173
    const v0, 0x7f08001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->b:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f08002c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->c:Landroid/view/View;

    .line 175
    const v0, 0x7f08002d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->d:Landroid/view/View;

    .line 176
    const v0, 0x7f08001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/ag;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "image_guid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->i:Lcom/nianticproject/ingress/shared/portal/a;

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 183
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/aj;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/multiphotos/aj;-><init>(Lcom/nianticproject/ingress/multiphotos/ag;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->f:Lcom/nianticproject/ingress/multiphotos/bj;

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/nianticproject/ingress/multiphotos/ak;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/multiphotos/ak;-><init>(Lcom/nianticproject/ingress/multiphotos/ag;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/ag;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "attribution_bottom_margin"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->i:Lcom/nianticproject/ingress/shared/portal/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->i:Lcom/nianticproject/ingress/shared/portal/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/portal/a;->a()Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/ao;->a:Lcom/nianticproject/ingress/multiphotos/ao;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/multiphotos/ag;->a(Lcom/nianticproject/ingress/multiphotos/ao;)V

    .line 240
    return-object v2

    .line 178
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/g/p;->z()Lcom/nianticproject/ingress/i/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/i/b;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/portal/a;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/c;->b()Lcom/nianticproject/ingress/shared/plext/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/c;->b()Lcom/nianticproject/ingress/shared/plext/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/plext/a;->b()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/nianticproject/ingress/shared/plext/c;

    aput-object v4, v5, v6

    invoke-static {v0, v1, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/nianticproject/ingress/shared/plext/c;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_4
    sget-object v0, Lcom/nianticproject/ingress/shared/plext/d;->c:Lcom/nianticproject/ingress/shared/plext/d;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/c;->a()Lcom/nianticproject/ingress/shared/plext/d;

    move-result-object v3

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/c;->b()Lcom/nianticproject/ingress/shared/plext/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    sget-object v3, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/nianticproject/ingress/multiphotos/ah;

    invoke-direct {v3, p0, v1}, Lcom/nianticproject/ingress/multiphotos/ah;-><init>(Lcom/nianticproject/ingress/multiphotos/ag;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/nianticproject/ingress/multiphotos/ai;

    invoke-direct {v3, p0, v1}, Lcom/nianticproject/ingress/multiphotos/ai;-><init>(Lcom/nianticproject/ingress/multiphotos/ag;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/n/p;->a(Landroid/app/Activity;)V

    .line 246
    check-cast p1, Lcom/nianticproject/ingress/multiphotos/ap;

    invoke-interface {p1}, Lcom/nianticproject/ingress/multiphotos/ap;->g()Lcom/nianticproject/ingress/multiphotos/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->h:Lcom/nianticproject/ingress/multiphotos/bg;

    .line 247
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string/jumbo v0, "PortalImageFragment"

    return-object v0
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ag;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->s()V

    .line 253
    return-void
.end method
