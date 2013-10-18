.class public final Lcom/nianticproject/ingress/common/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/t/b;


# instance fields
.field private b:J

.field private c:F

.field private d:F

.field private e:J

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "Wait for Frame"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/e;->a:Lcom/nianticproject/ingress/common/t/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/e;-><init>(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/e;->h:Z

    .line 71
    int-to-float v1, p1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    iput v1, p0, Lcom/nianticproject/ingress/common/ui/e;->c:F

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/e;->c:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/e;->d:F

    const v0, 0x4e6e6b28

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/e;->d:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/e;->d()V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(JIJ)J
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    int-to-long v0, p2

    mul-long/2addr v0, p0

    add-long/2addr v0, p3

    add-int/lit8 v2, p2, 0x1

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private f()J
    .locals 4

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->b:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xf4240

    const-wide/32 v6, 0xfe502a

    .line 81
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/e;->h:Z

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/e;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->g:J

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->b:J

    .line 144
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_0
    const-string/jumbo v0, "Throttle.waitForFrame"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/e;->f()J

    move-result-wide v0

    .line 95
    const-wide/32 v2, 0x59682f00

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 96
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    .line 110
    :cond_1
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 111
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    const/16 v4, 0x9

    invoke-static {v2, v3, v4, v0, v1}, Lcom/nianticproject/ingress/common/ui/e;->a(JIJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    .line 119
    :goto_1
    const-wide/32 v2, 0x3f940a9

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    .line 122
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    add-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xfe502a

    div-long/2addr v2, v4

    .line 124
    mul-long/2addr v2, v6

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->g:J

    .line 128
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->g:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1e8480

    sub-long/2addr v0, v2

    .line 132
    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    .line 133
    sget-object v2, Lcom/nianticproject/ingress/common/ui/e;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/t/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const-wide/32 v2, 0xf4240

    :try_start_1
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_2
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/common/ui/e;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 141
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 114
    :cond_3
    :try_start_3
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/nianticproject/ingress/common/ui/e;->a(JIJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/e;->h:Z

    .line 182
    return-void
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->g:J

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    return v0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/e;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->b:J

    .line 176
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->f:J

    .line 177
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->e:J

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/e;->g:J

    .line 178
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/e;->h:Z

    return v0
.end method
