.class public Lcom/nianticproject/ingress/PasscodeActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/promotioncodes/Reward;",
            "Lcom/nianticproject/ingress/shared/aa;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/w/aa;

.field private c:Lcom/nianticproject/ingress/dc;

.field private d:Lcom/nianticproject/ingress/common/u/ah;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/PasscodeActivity;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 95
    sget-object v0, Lcom/nianticproject/ingress/dc;->a:Lcom/nianticproject/ingress/dc;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    return-void
.end method

.method private static a(Z)I
    .locals 1
    .parameter

    .prologue
    .line 299
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const-string/jumbo v1, "started_by_game"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/PasscodeActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/u/h;Lcom/nianticproject/ingress/common/a;)Lcom/nianticproject/ingress/shared/promotioncodes/Reward;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    move-object v1, v0

    .line 84
    :goto_0
    sget-object v0, Lcom/nianticproject/ingress/PasscodeActivity;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/nianticproject/ingress/common/u/h;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Gained:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Lcom/nianticproject/ingress/shared/promotioncodes/Reward;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 91
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/shared/promotioncodes/Reward;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Gained:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AP\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Lcom/nianticproject/ingress/shared/promotioncodes/Reward;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/nianticproject/ingress/shared/promotioncodes/Reward;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " XM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 369
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_1
    const-string/jumbo v0, "\n"

    invoke-static {v0}, Lcom/google/a/a/ab;->a(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nianticproject/ingress/PasscodeActivity;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/PasscodeActivity;Lcom/nianticproject/ingress/dc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Lcom/nianticproject/ingress/dc;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/PasscodeActivity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/nianticproject/ingress/dc;->b:Lcom/nianticproject/ingress/dc;

    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/PasscodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Lcom/nianticproject/ingress/dc;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nianticproject/ingress/da;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/da;-><init>(Lcom/nianticproject/ingress/PasscodeActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/da;->e()Lcom/nianticproject/ingress/common/f/a;

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/dc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f070026

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    if-eq v0, p1, :cond_0

    .line 254
    iput-object p1, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    .line 256
    iget-object v3, p0, Lcom/nianticproject/ingress/PasscodeActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    sget-object v4, Lcom/nianticproject/ingress/dc;->b:Lcom/nianticproject/ingress/dc;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Z)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v3, p0, Lcom/nianticproject/ingress/PasscodeActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    sget-object v4, Lcom/nianticproject/ingress/dc;->c:Lcom/nianticproject/ingress/dc;

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Z)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/nianticproject/ingress/PasscodeActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    sget-object v4, Lcom/nianticproject/ingress/dc;->d:Lcom/nianticproject/ingress/dc;

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Z)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v3, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    sget-object v4, Lcom/nianticproject/ingress/dc;->b:Lcom/nianticproject/ingress/dc;

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->k:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    sget-object v4, Lcom/nianticproject/ingress/dc;->b:Lcom/nianticproject/ingress/dc;

    if-eq v3, v4, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    sget-object v0, Lcom/nianticproject/ingress/db;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/PasscodeActivity;->c:Lcom/nianticproject/ingress/dc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/dc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void

    :cond_1
    move v0, v2

    .line 256
    goto :goto_0

    :cond_2
    move v0, v2

    .line 257
    goto :goto_1

    :cond_3
    move v0, v2

    .line 258
    goto :goto_2

    :cond_4
    move v0, v2

    .line 260
    goto :goto_3

    :cond_5
    move v1, v2

    .line 261
    goto :goto_4

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_5

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 271
    :pswitch_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->b()V

    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 275
    :pswitch_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->b()V

    .line 276
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/nianticproject/ingress/PasscodeActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->k:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 293
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    iget-object v1, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 296
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/PasscodeActivity;)Lcom/nianticproject/ingress/common/u/ah;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->d:Lcom/nianticproject/ingress/common/u/ah;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    packed-switch p2, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 235
    invoke-static {p3}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/nianticproject/ingress/PasscodeActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 240
    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 246
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->finish()V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "started_by_game"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->setVolumeControlStream(I)V

    .line 130
    :cond_0
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->setContentView(I)V

    .line 131
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->d:Lcom/nianticproject/ingress/common/u/ah;

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->d:Lcom/nianticproject/ingress/common/u/ah;

    new-instance v1, Lcom/nianticproject/ingress/cv;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/cv;-><init>(Lcom/nianticproject/ingress/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    .line 142
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->e:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->f:Landroid/widget/TextView;

    .line 144
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->g:Landroid/view/View;

    .line 145
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->h:Landroid/widget/Button;

    .line 146
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->i:Landroid/widget/Button;

    .line 147
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    .line 149
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->k:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/cw;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/cw;-><init>(Lcom/nianticproject/ingress/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/nianticproject/ingress/cx;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/cx;-><init>(Lcom/nianticproject/ingress/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/cy;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/cy;-><init>(Lcom/nianticproject/ingress/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/cz;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/cz;-><init>(Lcom/nianticproject/ingress/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/PasscodeActivity;->setIntent(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->c()V

    .line 228
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 200
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/AccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/nianticproject/ingress/PasscodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    const v1, 0x7f090061

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nianticproject/ingress/PasscodeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-virtual {p0}, Lcom/nianticproject/ingress/PasscodeActivity;->finish()V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/PasscodeActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
