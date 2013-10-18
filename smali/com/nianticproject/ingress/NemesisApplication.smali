.class public Lcom/nianticproject/ingress/NemesisApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/a/d;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static b:Lcom/nianticproject/ingress/NemesisApplication;


# instance fields
.field private c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/nianticproject/ingress/common/j/av;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/analytics/tracking/android/aj;

.field private e:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/nianticproject/ingress/common/g/p;

.field private g:Lcom/nianticproject/ingress/common/c/e;

.field private h:Lcom/nianticproject/ingress/common/c/ak;

.field private i:Lcom/nianticproject/ingress/connectivity/a;

.field private j:D

.field private k:J

.field private final l:J

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/NemesisApplication;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 125
    invoke-static {}, Lcom/nianticproject/ingress/o/e;->a()V

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 111
    const-wide/high16 v0, 0x404e

    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->k:J

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->l:J

    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/NemesisApplication;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/nianticproject/ingress/NemesisApplication;->b:Lcom/nianticproject/ingress/NemesisApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/NemesisApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisApplication;->n()V

    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/common/c/e;)V
    .locals 5
    .parameter

    .prologue
    .line 535
    :try_start_0
    const-string/jumbo v0, "NemesisApplication.initAudioFromPreferences"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/nianticproject/ingress/common/c/g;->values()[Lcom/nianticproject/ingress/common/c/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 537
    invoke-static {v3}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/nianticproject/ingress/common/c/h;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 541
    return-void

    .line 540
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/nianticproject/ingress/common/n/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lcom/nianticproject/ingress/cm;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/cm;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;)V

    .line 464
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/NemesisApplication;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisApplication;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/NemesisApplication;)[B
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisApplication;->p()[B

    move-result-object v0

    return-object v0
.end method

.method public static f()Lcom/nianticproject/ingress/common/u/b;
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/nianticproject/ingress/c;->a()Lcom/nianticproject/ingress/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method private n()V
    .locals 6

    .prologue
    .line 545
    const-wide v0, 0x3f50624dd2f1a9fcL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/NemesisApplication;->k:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    mul-double/2addr v0, v2

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/NemesisApplication;->k:J

    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    iget-wide v2, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    .line 550
    const-wide/high16 v0, 0x404e

    iget-wide v2, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    .line 551
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()Z
    .locals 10

    .prologue
    const-wide/high16 v5, 0x3ff0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 555
    .line 559
    monitor-enter p0

    .line 561
    :try_start_0
    iget-wide v3, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 562
    iget-boolean v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->n:Z

    if-nez v0, :cond_4

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->n:Z

    move v0, v1

    move v3, v1

    move v4, v2

    .line 579
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/nianticproject/ingress/NemesisApplication;->l:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 583
    if-ne v4, v2, :cond_0

    .line 584
    sget-object v4, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v7, "Analytics event rate limit reached after %d seconds"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 589
    :cond_0
    if-ne v3, v2, :cond_1

    .line 590
    sget-object v3, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "Analytics event quota per session reached after %d seconds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 596
    :cond_1
    return v0

    .line 568
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->m:I

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_3

    .line 569
    iget-boolean v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->o:Z

    if-nez v0, :cond_4

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->o:Z

    move v0, v1

    move v3, v2

    move v4, v1

    .line 571
    goto :goto_0

    .line 574
    :cond_3
    iget-wide v3, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    sub-double/2addr v3, v5

    iput-wide v3, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    .line 576
    iget v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    move v3, v1

    move v4, v1

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    move v3, v1

    move v4, v1

    goto :goto_0
.end method

.method private p()[B
    .locals 3

    .prologue
    .line 610
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "common/missing_image.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 612
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    .line 613
    new-array v1, v1, [B

    .line 614
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 615
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    return-object v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "failed to load COMMON_MISSING_IMAGE_PNG"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->d:Lcom/google/analytics/tracking/android/aj;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/aj;->a()Lcom/google/analytics/tracking/android/bf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/bf;->a(ILjava/lang/String;)V

    .line 271
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    new-instance v0, Lcom/nianticproject/ingress/cj;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/cj;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/cj;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 288
    return-void
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    new-instance v0, Lcom/nianticproject/ingress/ck;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/ck;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ck;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 303
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    new-instance v0, Lcom/nianticproject/ingress/cl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nianticproject/ingress/cl;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/cl;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 318
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 323
    :try_start_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisApplication;->n()V

    .line 324
    invoke-static {}, Lcom/google/analytics/tracking/android/q;->a()Lcom/google/analytics/tracking/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/q;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    sget-object v1, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Failed to dispatch stats: "

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->m:I

    return v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->j:D

    return-wide v0
.end method

.method public final e()Lcom/nianticproject/ingress/common/g/p;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->f:Lcom/nianticproject/ingress/common/g/p;

    return-object v0
.end method

.method public final g()Lcom/nianticproject/ingress/common/c/e;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->g:Lcom/nianticproject/ingress/common/c/e;

    return-object v0
.end method

.method public final h()Lcom/google/analytics/tracking/android/bf;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->d:Lcom/google/analytics/tracking/android/aj;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/aj;->a()Lcom/google/analytics/tracking/android/bf;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/nianticproject/ingress/common/j/av;
    .locals 3

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    sget-object v1, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Interrupted while attempting to get the image cache"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 365
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    :catch_1
    move-exception v0

    .line 362
    sget-object v1, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "ExecutionException while attempting to get the image cache"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final j()Lcom/nianticproject/ingress/common/c/ak;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->h:Lcom/nianticproject/ingress/common/c/ak;

    return-object v0
.end method

.method public final k()Lcom/nianticproject/ingress/common/q/b/r;
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/r;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    sget-object v1, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Interrupted while attempting to get the tile store"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 387
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    .line 384
    sget-object v1, Lcom/nianticproject/ingress/NemesisApplication;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "ExecutionException while attempting to get the tile store"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final l()Lcom/nianticproject/ingress/connectivity/a;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->i:Lcom/nianticproject/ingress/connectivity/a;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    invoke-static {p0}, La;->p(Landroid/app/Application;)V

    .line 140
    :try_start_0
    const-string/jumbo v0, "NemesisApplication.onCreate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 143
    sput-object p0, Lcom/nianticproject/ingress/NemesisApplication;->b:Lcom/nianticproject/ingress/NemesisApplication;

    .line 145
    new-instance v0, Lcom/nianticproject/ingress/cg;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/cg;-><init>(Lcom/nianticproject/ingress/NemesisApplication;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(Lcom/nianticproject/ingress/common/w/m;)V

    .line 160
    const-string/jumbo v0, "NEMESIS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 163
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/g/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/g/a;-><init>()V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/aa;->a(Lcom/nianticproject/ingress/g/d;)Lcom/nianticproject/ingress/g/d;

    .line 166
    new-instance v0, Lcom/nianticproject/ingress/knobs/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/a;-><init>()V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/p/a;->a(Lcom/nianticproject/ingress/knobs/b;)V

    .line 170
    new-instance v0, Lcom/nianticproject/ingress/ch;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/ch;-><init>(Lcom/nianticproject/ingress/NemesisApplication;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ch;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 179
    invoke-static {}, Landroid/support/v4/app/w;->a()V

    .line 182
    invoke-static {p0}, Lcom/nianticproject/ingress/aa;->a(Landroid/content/Context;)V

    .line 184
    new-instance v0, Lcom/nianticproject/ingress/k/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/k/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/s/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    const-string/jumbo v0, "NemesisApplication.initAnalytics"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nianticproject/ingress/ec;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aj;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->d:Lcom/google/analytics/tracking/android/aj;

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->d:Lcom/google/analytics/tracking/android/aj;

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/aj;->a(Z)V

    invoke-static {}, Lcom/google/analytics/tracking/android/q;->a()Lcom/google/analytics/tracking/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/q;->d()V

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisApplication;->d:Lcom/google/analytics/tracking/android/aj;

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "UA-30116200-3"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/aj;->a(Ljava/lang/String;)Lcom/google/analytics/tracking/android/bf;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisApplication;->d:Lcom/google/analytics/tracking/android/aj;

    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/aj;->a(Lcom/google/analytics/tracking/android/bf;)V

    invoke-static {p0}, Lcom/nianticproject/ingress/common/a/c;->a(Lcom/nianticproject/ingress/common/a/d;)V

    const-string/jumbo v2, "niantic-ingress"

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/bf;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/bf;->b()V

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/bf;->c()V

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/bf;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 190
    new-instance v0, Lcom/google/android/a/a/a/a/b;

    invoke-direct {v0}, Lcom/google/android/a/a/a/a/b;-><init>()V

    const-string/jumbo v1, "geo_mobile_games"

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/a/b;->a(Ljava/lang/String;)Lcom/google/android/a/a/a/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/a/a/a/a/e;->a(Lcom/google/android/a/a/a/a/b;)V

    .line 192
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x1e0

    if-lt v0, v2, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/common/b/q;->e:Lcom/nianticproject/ingress/common/b/q;

    :goto_1
    new-instance v1, Lcom/nianticproject/ingress/common/b/p;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/common/b/p;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/q;)V

    invoke-static {v1}, La;->aq(Lcom/nianticproject/ingress/common/b/p;)V

    invoke-static {v1}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/nianticproject/ingress/common/b/a;)V

    .line 195
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->f:Lcom/nianticproject/ingress/common/g/p;

    .line 198
    invoke-static {}, Lcom/nianticproject/ingress/c;->a()Lcom/nianticproject/ingress/c;

    .line 201
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/a/c/eq;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "mtCache"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/NemesisApplication;->b(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lcom/nianticproject/ingress/cn;

    invoke-direct {v2, p0, v1}, Lcom/nianticproject/ingress/cn;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/concurrent/FutureTask;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisApplication;->e:Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisApplication;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string/jumbo v1, "imCache"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/NemesisApplication;->b(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Lcom/nianticproject/ingress/co;

    invoke-direct {v2, p0, v1}, Lcom/nianticproject/ingress/co;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/concurrent/FutureTask;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisApplication;->c:Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisApplication;->c:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Lcom/nianticproject/ingress/ci;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/ci;-><init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/ci;->e()Lcom/nianticproject/ingress/common/f/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :try_start_3
    const-string/jumbo v0, "NemesisApplication.initMiscCacheDir"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "miscCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {v0}, Lcom/nianticproject/ingress/common/k/c;->a(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    :try_start_5
    const-string/jumbo v0, "NemesisApplication.onCreate.audio"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/nianticproject/ingress/common/c/ad;

    new-instance v1, Lcom/nianticproject/ingress/a/a;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/a/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/c/ad;-><init>(Lcom/nianticproject/ingress/common/c/m;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/c/o;->a(Lcom/nianticproject/ingress/common/c/ai;)V

    .line 236
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->g:Lcom/nianticproject/ingress/common/c/e;

    .line 239
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->g:Lcom/nianticproject/ingress/common/c/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->a(Lcom/nianticproject/ingress/common/c/e;)V

    .line 241
    new-instance v0, Lcom/nianticproject/ingress/common/c/ak;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisApplication;->g:Lcom/nianticproject/ingress/common/c/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisApplication;->f:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/c/ak;-><init>(Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/model/k;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->h:Lcom/nianticproject/ingress/common/c/ak;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 243
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 247
    new-instance v0, Lcom/nianticproject/ingress/connectivity/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/connectivity/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisApplication;->i:Lcom/nianticproject/ingress/connectivity/a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 250
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 251
    return-void

    .line 187
    :cond_1
    :try_start_7
    const-string/jumbo v0, "UA-30116200-2"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 250
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 192
    :cond_2
    :try_start_9
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x140

    if-lt v0, v2, :cond_3

    sget-object v0, Lcom/nianticproject/ingress/common/b/q;->d:Lcom/nianticproject/ingress/common/b/q;

    goto/16 :goto_1

    :cond_3
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_4

    sget-object v0, Lcom/nianticproject/ingress/common/b/q;->c:Lcom/nianticproject/ingress/common/b/q;

    goto/16 :goto_1

    :cond_4
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/nianticproject/ingress/common/b/q;->b:Lcom/nianticproject/ingress/common/b/q;

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/nianticproject/ingress/common/b/q;->a:Lcom/nianticproject/ingress/common/b/q;

    goto/16 :goto_1

    .line 229
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 243
    :catchall_3
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 257
    :try_start_0
    const-string/jumbo v0, "NemesisApplication.onTerminate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->b()V

    .line 259
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
