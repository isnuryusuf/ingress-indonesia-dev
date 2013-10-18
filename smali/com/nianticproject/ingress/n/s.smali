.class public Lcom/nianticproject/ingress/n/s;
.super Lcom/nianticproject/ingress/service/j;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/connectivity/b;
.implements Lcom/nianticproject/ingress/n/q;


# static fields
.field private static final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/aa;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/j;

.field private final d:Lcom/nianticproject/ingress/n/ab;

.field private final e:Lcom/nianticproject/ingress/n/x;

.field private final f:Lcom/nianticproject/ingress/n/z;

.field private g:Z

.field private h:Z

.field private i:Lcom/nianticproject/ingress/gameentity/f;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/nianticproject/ingress/n/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/nianticproject/ingress/n/s;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/j;Lcom/nianticproject/ingress/n/ab;Lcom/nianticproject/ingress/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/nianticproject/ingress/service/j;-><init>()V

    .line 57
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/n/s;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/n/s;->i:Lcom/nianticproject/ingress/gameentity/f;

    .line 533
    new-instance v0, Lcom/nianticproject/ingress/n/t;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/n/t;-><init>(Lcom/nianticproject/ingress/n/s;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/n/s;->l:Lcom/nianticproject/ingress/n/ad;

    .line 106
    iput-object p1, p0, Lcom/nianticproject/ingress/n/s;->b:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/nianticproject/ingress/n/s;->c:Landroid/support/v4/app/j;

    .line 108
    iput-object p3, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    .line 109
    iput-object p4, p0, Lcom/nianticproject/ingress/n/s;->e:Lcom/nianticproject/ingress/n/x;

    .line 110
    new-instance v0, Lcom/nianticproject/ingress/n/z;

    invoke-direct {v0, p1, p3}, Lcom/nianticproject/ingress/n/z;-><init>(Landroid/content/Context;Lcom/nianticproject/ingress/n/ab;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/n/s;->f:Lcom/nianticproject/ingress/n/z;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/n/ab;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/s;Lcom/nianticproject/ingress/shared/PregameStatus;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Map;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v0, "SignOnController.onHandshakeDone"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "onHandshakeDone"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nianticproject/ingress/n/s;->i:Lcom/nianticproject/ingress/gameentity/f;

    iput-object p3, p0, Lcom/nianticproject/ingress/n/s;->j:Ljava/util/Map;

    sget-object v0, Lcom/nianticproject/ingress/n/u;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/shared/PregameStatus;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->o:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/s;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/o/b;->d:Lcom/nianticproject/ingress/o/b;

    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->a(Lcom/nianticproject/ingress/o/b;)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->b:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->a:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->v:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/s;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v0, "SignOnController.onHandshakeFailed"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onHandshakeFailed(failedDueToAuthentication=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->n:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    sget-object v0, Lcom/nianticproject/ingress/o/b;->d:Lcom/nianticproject/ingress/o/b;

    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->a(Lcom/nianticproject/ingress/o/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->m:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    sget-object v0, Lcom/nianticproject/ingress/o/b;->b:Lcom/nianticproject/ingress/o/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/common/w/aa;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/n/s;)Lcom/nianticproject/ingress/n/z;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->f:Lcom/nianticproject/ingress/n/z;

    return-object v0
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 348
    :try_start_0
    const-string/jumbo v0, "SignOnController.performHandshake"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/n/ae;->k:Lcom/nianticproject/ingress/n/ae;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 352
    new-instance v0, Lcom/nianticproject/ingress/n/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nianticproject/ingress/n/w;-><init>(Lcom/nianticproject/ingress/n/s;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/w;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 353
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 356
    return-void

    .line 349
    :cond_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/n/ae;->l:Lcom/nianticproject/ingress/n/ae;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/n/s;)Landroid/support/v4/app/j;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->c:Landroid/support/v4/app/j;

    return-object v0
.end method

.method static synthetic o()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/nianticproject/ingress/n/s;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private p()V
    .locals 6

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->g:Z

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->e:Lcom/nianticproject/ingress/n/x;

    new-instance v1, Lcom/nianticproject/ingress/common/o;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/nianticproject/ingress/common/s/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/n/s;->i:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/n/s;->j:Ljava/util/Map;

    iget-object v5, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/n/ab;->d()Lcom/nianticproject/ingress/common/p;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/o;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Map;Lcom/nianticproject/ingress/common/p;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/n/x;->a(Lcom/nianticproject/ingress/common/o;)V

    .line 119
    return-void
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->a()Lcom/nianticproject/ingress/n/ae;

    move-result-object v0

    .line 513
    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/n/ae;->a(Z)Lcom/nianticproject/ingress/n/ae;

    move-result-object v0

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "startHandshake: state=%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    sget-object v3, Lcom/nianticproject/ingress/n/u;->c:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ae;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 531
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 514
    goto :goto_0

    .line 519
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/n/s;->c(Z)V

    goto :goto_1

    .line 522
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/n/s;->c(Z)V

    goto :goto_1

    .line 525
    :pswitch_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/s;->a()V

    goto :goto_1

    .line 528
    :pswitch_3
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/n/s;->b_(Ljava/lang/String;)V

    goto :goto_1

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->h:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/n/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/q;)V
    .locals 5
    .parameter

    .prologue
    .line 256
    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "onNicknameError(reason=%s)"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "RPC exception"

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    if-nez p1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->a()Lcom/nianticproject/ingress/n/ae;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/n/ae;->d:Lcom/nianticproject/ingress/n/ae;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/n/ae;->e:Lcom/nianticproject/ingress/n/ae;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 291
    :goto_2
    return-void

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/q;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/n/ae;->i:Lcom/nianticproject/ingress/n/ae;

    goto :goto_1

    .line 263
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/n/u;->b:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->p:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_2

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->u:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_2

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->q:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_2

    .line 282
    :pswitch_3
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->r:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_2

    .line 285
    :pswitch_4
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->s:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_2

    .line 288
    :pswitch_5
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->t:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_2

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onConnectivityChanged(hasConnectivity=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->f:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 309
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->e:Lcom/nianticproject/ingress/n/x;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/n/x;->a(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->l:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 455
    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/p;->a:Lcom/nianticproject/ingress/common/p;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/common/p;)V

    .line 458
    new-instance v0, Lcom/nianticproject/ingress/n/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/nianticproject/ingress/n/w;-><init>(Lcom/nianticproject/ingress/n/s;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/w;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 459
    return-void

    .line 455
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/p;->b:Lcom/nianticproject/ingress/common/p;

    goto :goto_0
.end method

.method public final b_(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/n/ab;->a(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->d:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 297
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lcom/nianticproject/ingress/n/u;->c:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/n/ab;->a()Lcom/nianticproject/ingress/n/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/n/ae;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unsupported state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/n/s;->b_(Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 318
    :pswitch_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/s;->a()V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/s;->p()V

    goto :goto_0

    .line 333
    :pswitch_4
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->f:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_0

    .line 336
    :pswitch_5
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->a:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->l:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 436
    new-instance v0, Lcom/nianticproject/ingress/n/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nianticproject/ingress/n/w;-><init>(Lcom/nianticproject/ingress/n/s;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/w;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 437
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->e:Lcom/nianticproject/ingress/n/x;

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/x;->a()V

    .line 474
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Nickname validated"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->g:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 246
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Nickname persisted"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->j:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 252
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->c:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/s;->p()V

    goto :goto_0
.end method

.method public final h()V
    .locals 5

    .prologue
    .line 493
    const-string/jumbo v0, "onUiSequenceDone"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onUiSequenceDone: state=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/n/ab;->a()Lcom/nianticproject/ingress/n/ae;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    sget-object v0, Lcom/nianticproject/ingress/n/u;->c:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/n/ab;->a()Lcom/nianticproject/ingress/n/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/n/ae;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 497
    :pswitch_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/s;->p()V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    sget-object v1, Lcom/nianticproject/ingress/n/ae;->w:Lcom/nianticproject/ingress/n/ae;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ae;)V

    .line 442
    new-instance v0, Lcom/nianticproject/ingress/n/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/n/v;-><init>(Lcom/nianticproject/ingress/n/s;B)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/v;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 443
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/s;->d()V

    .line 448
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    const-string/jumbo v0, "SignOnController.onHandshakeDone"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "start"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->h:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->g:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->h:Z

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->l:Lcom/nianticproject/ingress/n/ad;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->a(Lcom/nianticproject/ingress/n/ad;)V

    .line 132
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/s;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 143
    const-string/jumbo v0, "start"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->h:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->h:Z

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->d:Lcom/nianticproject/ingress/n/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->l:Lcom/nianticproject/ingress/n/ad;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/ab;->b(Lcom/nianticproject/ingress/n/ad;)V

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/n/s;->c:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/n/s;->c:Landroid/support/v4/app/j;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/support/v4/app/j;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    .line 152
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 161
    :try_start_0
    const-string/jumbo v0, "SignOnController.onResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "onResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 163
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/s;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n/s;->g:Z

    return v0
.end method
