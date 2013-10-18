.class public final Landroid/support/v4/view/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string/jumbo v2, "JellyBean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    new-instance v0, Landroid/support/v4/view/an;

    invoke-direct {v0}, Landroid/support/v4/view/an;-><init>()V

    sput-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    .line 243
    :goto_0
    return-void

    .line 234
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 235
    new-instance v0, Landroid/support/v4/view/am;

    invoke-direct {v0}, Landroid/support/v4/view/am;-><init>()V

    sput-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    .line 236
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 237
    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    .line 238
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 239
    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    .line 241
    :cond_4
    new-instance v0, Landroid/support/v4/view/aj;

    invoke-direct {v0}, Landroid/support/v4/view/aj;-><init>()V

    sput-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 277
    sget-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 414
    sget-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 415
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    sget-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 450
    sget-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->b(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 515
    sget-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 531
    sget-object v0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->d(Landroid/view/View;)V

    .line 532
    return-void
.end method
