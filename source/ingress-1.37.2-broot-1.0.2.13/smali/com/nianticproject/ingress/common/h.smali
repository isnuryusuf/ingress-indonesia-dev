.class public final Lcom/nianticproject/ingress/common/h;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/model/k;

.field private final b:Lcom/nianticproject/ingress/common/scanner/k;

.field private final c:Lcom/nianticproject/ingress/common/g/e;

.field private final d:Lcom/nianticproject/ingress/common/model/d;

.field private e:Lcom/nianticproject/ingress/common/ad;

.field private f:Lcom/nianticproject/ingress/common/ad;

.field private g:J

.field private h:J

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/d;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/h;->j:Z

    .line 61
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 62
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h;->b:Lcom/nianticproject/ingress/common/scanner/k;

    .line 63
    iput-object p3, p0, Lcom/nianticproject/ingress/common/h;->c:Lcom/nianticproject/ingress/common/g/e;

    .line 64
    iput-object p4, p0, Lcom/nianticproject/ingress/common/h;->d:Lcom/nianticproject/ingress/common/model/d;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/i;

    const-string/jumbo v2, "EnergyCollectorPlayerListener.periodicMaybeCollectEnergy"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/i;-><init>(Lcom/nianticproject/ingress/common/h;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;JJ)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/h;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/h;->b()V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->a:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/h;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->e:Lcom/nianticproject/ingress/common/ad;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 109
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/h;->g:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/nianticproject/ingress/common/h;->e:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/nianticproject/ingress/common/h;->f:Lcom/nianticproject/ingress/common/ad;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nianticproject/ingress/common/h;->f:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/h;->h:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    .line 129
    :cond_2
    iget-object v4, p0, Lcom/nianticproject/ingress/common/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/nianticproject/ingress/common/h;->e:Lcom/nianticproject/ingress/common/ad;

    iput-object v4, p0, Lcom/nianticproject/ingress/common/h;->f:Lcom/nianticproject/ingress/common/ad;

    .line 131
    const-wide/16 v4, 0xbb8

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/nianticproject/ingress/common/h;->g:J

    .line 132
    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/h;->h:J

    .line 133
    iget-object v2, p0, Lcom/nianticproject/ingress/common/h;->e:Lcom/nianticproject/ingress/common/ad;

    new-instance v3, Lcom/nianticproject/ingress/common/j;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/nianticproject/ingress/common/j;-><init>(Lcom/nianticproject/ingress/common/h;Lcom/nianticproject/ingress/common/ad;J)V

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/j;->e()Lcom/nianticproject/ingress/common/f/a;

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/g/e;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->c:Lcom/nianticproject/ingress/common/g/e;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/scanner/k;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->b:Lcom/nianticproject/ingress/common/scanner/k;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/model/d;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->d:Lcom/nianticproject/ingress/common/model/d;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "EnergyCollectorPlayerListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    :try_start_0
    const-string/jumbo v0, "EnergyCollectorPlayerListener.onLocationChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h;->e:Lcom/nianticproject/ingress/common/ad;

    .line 88
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/h;->j:Z

    .line 99
    return-void
.end method
