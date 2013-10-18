.class Lcom/nianticproject/ingress/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/c/bj;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Z

.field private static d:Z

.field private static final v:Ljava/util/concurrent/Executor;


# instance fields
.field private final e:Landroid/media/MediaPlayer;

.field private final f:I

.field private final g:Landroid/content/res/AssetManager;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/nianticproject/ingress/common/c/ai;

.field private j:Lcom/nianticproject/ingress/common/c/bi;

.field private k:F

.field private l:F

.field private m:Z

.field private n:I

.field private o:Lcom/nianticproject/ingress/common/c/bk;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/nianticproject/ingress/a/k;

.field private r:Lcom/nianticproject/ingress/a/j;

.field private s:Ljava/util/concurrent/CountDownLatch;

.field private final t:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final u:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/a/d;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/a/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/nianticproject/ingress/a/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    sput-boolean v2, Lcom/nianticproject/ingress/a/d;->c:Z

    .line 49
    sput-boolean v2, Lcom/nianticproject/ingress/a/d;->d:Z

    .line 724
    new-instance v0, Lcom/nianticproject/ingress/a/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/a/h;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/a/d;->v:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    .line 69
    sget-object v0, Lcom/nianticproject/ingress/a/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/a/d;->f:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/nianticproject/ingress/a/k;->a:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 446
    new-instance v0, Lcom/nianticproject/ingress/a/e;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/a/e;-><init>(Lcom/nianticproject/ingress/a/d;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 465
    new-instance v0, Lcom/nianticproject/ingress/a/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/a/f;-><init>(Lcom/nianticproject/ingress/a/d;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->u:Landroid/media/MediaPlayer$OnErrorListener;

    .line 120
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->g:Landroid/content/res/AssetManager;

    .line 121
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    iput-object p2, p0, Lcom/nianticproject/ingress/a/d;->h:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/nianticproject/ingress/a/d;->i:Lcom/nianticproject/ingress/common/c/ai;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/a/d;Lcom/nianticproject/ingress/a/k;)Lcom/nianticproject/ingress/a/k;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/a/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/a/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/a/d;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 411
    sget-object v0, Lcom/nianticproject/ingress/a/i;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/a/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    new-instance v0, Lcom/nianticproject/ingress/common/c/bl;

    const-string/jumbo v1, "%s failed: player is %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_1
    return-void

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 439
    sget-object v0, Lcom/nianticproject/ingress/a/k;->e:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 440
    new-instance v0, Lcom/nianticproject/ingress/common/c/bl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/a/d;->m:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 526
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 527
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->u:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 528
    iget v0, p0, Lcom/nianticproject/ingress/a/d;->k:F

    iget v1, p0, Lcom/nianticproject/ingress/a/d;->l:F

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/a/d;->b(FF)V

    .line 531
    if-eqz p1, :cond_0

    .line 532
    sget-object v0, Lcom/nianticproject/ingress/a/k;->d:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 533
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->h()V

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/a/k;->c:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string/jumbo v1, "configurePlayerAfterLoad"

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bk;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->o:Lcom/nianticproject/ingress/common/c/bk;

    return-object v0
.end method

.method private b(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 188
    add-float v0, p2, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    mul-float/2addr v0, p1

    .line 189
    sub-float/2addr v1, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v1

    mul-float/2addr v1, p1

    .line 190
    iget-object v2, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 191
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/a/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/a/d;->a(Z)V

    return-void
.end method

.method private declared-synchronized b(Lcom/nianticproject/ingress/common/c/bi;FFZLcom/nianticproject/ingress/common/c/bk;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/nianticproject/ingress/a/d;->n:I

    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->i()V

    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    sget-object v0, Lcom/nianticproject/ingress/a/k;->a:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :try_start_4
    sget-object v0, Lcom/nianticproject/ingress/a/i;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/a/k;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 339
    :pswitch_0
    iput-object p1, p0, Lcom/nianticproject/ingress/a/d;->j:Lcom/nianticproject/ingress/common/c/bi;

    .line 340
    iput p2, p0, Lcom/nianticproject/ingress/a/d;->k:F

    .line 341
    iput p3, p0, Lcom/nianticproject/ingress/a/d;->l:F

    .line 342
    iput-boolean p4, p0, Lcom/nianticproject/ingress/a/d;->m:Z

    .line 343
    iput-object p5, p0, Lcom/nianticproject/ingress/a/d;->o:Lcom/nianticproject/ingress/common/c/bk;

    .line 346
    sget-object v0, Lcom/nianticproject/ingress/a/k;->b:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 347
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->s:Ljava/util/concurrent/CountDownLatch;

    .line 353
    sget-boolean v0, Lcom/nianticproject/ingress/a/d;->c:Z

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Lcom/nianticproject/ingress/a/j;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/a/j;-><init>(Lcom/nianticproject/ingress/a/d;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->r:Lcom/nianticproject/ingress/a/j;

    .line 360
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 361
    :try_start_5
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->r:Lcom/nianticproject/ingress/a/j;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->r:Lcom/nianticproject/ingress/a/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/a/j;->e()Lcom/nianticproject/ingress/common/f/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    .line 322
    :catch_0
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/nianticproject/ingress/a/k;->e:Lcom/nianticproject/ingress/a/k;

    iput-object v2, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    new-instance v2, Lcom/nianticproject/ingress/common/c/bl;

    const-string/jumbo v3, "failed to reset"

    invoke-direct {v2, v3, v0}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :pswitch_1
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "state=LOADING after reset"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 360
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 336
    :pswitch_2
    :try_start_a
    new-instance v0, Lcom/nianticproject/ingress/common/c/bl;

    const-string/jumbo v2, "can\'t load a broken player"

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    sget-boolean v0, Lcom/nianticproject/ingress/a/d;->d:Z

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->i:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v2, Lcom/nianticproject/ingress/a/g;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/a/g;-><init>(Lcom/nianticproject/ingress/a/d;)V

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    goto :goto_0

    .line 358
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/a/d;->b(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 547
    :try_start_0
    const-string/jumbo v0, "loadClip("

    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->j:Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bi;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :try_start_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->j()V

    .line 552
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 554
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/a/d;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 567
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 568
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    :try_start_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/a/d;->d()V

    .line 557
    const-string/jumbo v1, "#%d loadClip failed clip=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nianticproject/ingress/a/d;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticproject/ingress/a/d;->j:Lcom/nianticproject/ingress/common/c/bi;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 558
    sget-object v2, Lcom/nianticproject/ingress/a/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 559
    iget-object v2, p0, Lcom/nianticproject/ingress/a/d;->o:Lcom/nianticproject/ingress/common/c/bk;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/nianticproject/ingress/a/d;->o:Lcom/nianticproject/ingress/common/c/bk;

    new-instance v3, Lcom/nianticproject/ingress/common/c/bl;

    invoke-direct {v3, v1, v0}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/common/c/bk;->a(Lcom/nianticproject/ingress/common/c/bl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 567
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/a/d;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/a/d;->f:I

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bi;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->j:Lcom/nianticproject/ingress/common/c/bi;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->j()V

    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/a/d;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic f()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/a/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/a/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->s:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/a/d;->v:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 286
    iget v0, p0, Lcom/nianticproject/ingress/a/d;->n:I

    if-eq v0, v2, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/nianticproject/ingress/a/d;->n:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    iput v2, p0, Lcom/nianticproject/ingress/a/d;->n:I

    .line 295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :goto_1
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string/jumbo v1, "seekAndStart: seekTo failed"

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    .line 297
    const-string/jumbo v1, "seekAndStart: start failed"

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private i()V
    .locals 3

    .prologue
    .line 372
    sget-boolean v0, Lcom/nianticproject/ingress/a/d;->c:Z

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->b:Lcom/nianticproject/ingress/a/k;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/a/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    .line 387
    new-instance v0, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;

    .line 388
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->r:Lcom/nianticproject/ingress/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/a/j;->b(Z)Z

    .line 392
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    sget-object v1, Lcom/nianticproject/ingress/a/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "interrupted awaiting doneSignal"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private j()V
    .locals 7

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->j:Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nianticproject/ingress/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->g:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 508
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 515
    :goto_0
    return-void

    .line 510
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 514
    :catch_0
    move-exception v0

    .line 513
    const-string/jumbo v1, "loadSoundData"

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 140
    sget-boolean v0, Lcom/nianticproject/ingress/a/d;->c:Z

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->b:Lcom/nianticproject/ingress/a/k;

    if-ne v0, v2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->r:Lcom/nianticproject/ingress/a/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/a/j;->a(Lcom/nianticproject/ingress/a/j;)V

    .line 160
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 152
    :cond_1
    :try_start_1
    const-string/jumbo v0, "playLoaded"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/nianticproject/ingress/a/d;->n:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/a/d;->n:I

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->h()V

    .line 158
    sget-object v0, Lcom/nianticproject/ingress/a/k;->d:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->b:Lcom/nianticproject/ingress/a/k;

    if-ne v0, v2, :cond_0

    .line 175
    iput p1, p0, Lcom/nianticproject/ingress/a/d;->k:F

    .line 176
    iput p2, p0, Lcom/nianticproject/ingress/a/d;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 178
    :cond_0
    :try_start_2
    const-string/jumbo v0, "setVolumeAndPan"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/a/d;->b(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_3
    const-string/jumbo v2, "setVolumeAndPan failed"

    invoke-direct {p0, v2, v0}, Lcom/nianticproject/ingress/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 736
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_0
    iput p1, p0, Lcom/nianticproject/ingress/a/d;->n:I

    .line 738
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->d:Lcom/nianticproject/ingress/a/k;

    if-ne v0, v2, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->h()V

    .line 741
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/bi;FFZLcom/nianticproject/ingress/common/c/bk;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/nianticproject/ingress/a/d;->b(Lcom/nianticproject/ingress/common/c/bi;FFZLcom/nianticproject/ingress/common/c/bk;)V

    .line 136
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->c:Lcom/nianticproject/ingress/a/k;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/a/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->d:Lcom/nianticproject/ingress/a/k;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/a/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    monitor-exit v1

    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v2, Lcom/nianticproject/ingress/a/k;->e:Lcom/nianticproject/ingress/a/k;

    iput-object v2, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 217
    new-instance v2, Lcom/nianticproject/ingress/common/c/bl;

    const-string/jumbo v3, "failed to stop"

    invoke-direct {v2, v3, v0}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/d;->i()V

    .line 251
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :goto_1
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/a/k;->e:Lcom/nianticproject/ingress/a/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 266
    monitor-exit v1

    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 263
    sget-object v2, Lcom/nianticproject/ingress/a/d;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception in AndroidSoundPlayer.release"

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 755
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    sget-object v2, Lcom/nianticproject/ingress/a/k;->d:Lcom/nianticproject/ingress/a/k;

    if-ne v1, v2, :cond_0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/a/d;->p:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/a/d;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 759
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    :cond_0
    return v0

    .line 759
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 763
    :catch_0
    move-exception v0

    .line 761
    sget-object v1, Lcom/nianticproject/ingress/a/k;->e:Lcom/nianticproject/ingress/a/k;

    iput-object v1, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    .line 762
    new-instance v1, Lcom/nianticproject/ingress/common/c/bl;

    const-string/jumbo v2, "getCurrentPosition failed"

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    const-string/jumbo v0, "{#=%d state=%s clip=%s isLooping=%s V=%f Pan=%f}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/a/d;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/a/d;->q:Lcom/nianticproject/ingress/a/k;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/a/d;->j:Lcom/nianticproject/ingress/common/c/bi;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/nianticproject/ingress/a/d;->m:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/nianticproject/ingress/a/d;->k:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/nianticproject/ingress/a/d;->l:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
