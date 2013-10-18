.class public Lcom/nianticproject/ingress/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/c/bj;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private c:Lcom/nianticproject/ingress/common/c/bi;

.field private final d:Landroid/media/SoundPool;

.field private final e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:Z

.field private j:Lcom/nianticproject/ingress/common/c/bk;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/a/l;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/a/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 21
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/nianticproject/ingress/a/l;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/media/SoundPool;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/a/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p1, p0, Lcom/nianticproject/ingress/a/l;->d:Landroid/media/SoundPool;

    .line 39
    iput p2, p0, Lcom/nianticproject/ingress/a/l;->e:I

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/a/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/a/l;)Lcom/nianticproject/ingress/common/c/bk;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->j:Lcom/nianticproject/ingress/common/c/bk;

    return-object v0
.end method

.method private b(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 74
    iput p1, p0, Lcom/nianticproject/ingress/a/l;->g:F

    .line 75
    iput p1, p0, Lcom/nianticproject/ingress/a/l;->h:F

    .line 77
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 78
    iget v0, p0, Lcom/nianticproject/ingress/a/l;->h:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/a/l;->h:F

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/nianticproject/ingress/a/l;->g:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/a/l;->g:F

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/a/l;)Lcom/nianticproject/ingress/common/c/bk;
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/a/l;->j:Lcom/nianticproject/ingress/common/c/bk;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->d:Landroid/media/SoundPool;

    iget v1, p0, Lcom/nianticproject/ingress/a/l;->e:I

    iget v2, p0, Lcom/nianticproject/ingress/a/l;->g:F

    iget v3, p0, Lcom/nianticproject/ingress/a/l;->h:F

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/nianticproject/ingress/a/l;->i:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/a/l;->f:I

    .line 145
    iget-boolean v0, p0, Lcom/nianticproject/ingress/a/l;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/nianticproject/ingress/a/m;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/a/m;-><init>(Lcom/nianticproject/ingress/a/l;)V

    .line 157
    sget-object v1, Lcom/nianticproject/ingress/a/l;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-wide v2, p0, Lcom/nianticproject/ingress/a/l;->l:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 159
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/l;->g()V

    .line 68
    return-void
.end method

.method public final a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/a/l;->b(FF)V

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->d:Landroid/media/SoundPool;

    iget v1, p0, Lcom/nianticproject/ingress/a/l;->f:I

    iget v2, p0, Lcom/nianticproject/ingress/a/l;->g:F

    iget v3, p0, Lcom/nianticproject/ingress/a/l;->h:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 91
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->d:Landroid/media/SoundPool;

    iget v1, p0, Lcom/nianticproject/ingress/a/l;->f:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 129
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/l;->g()V

    .line 130
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/bi;FFZLcom/nianticproject/ingress/common/c/bk;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/a/l;->c:Lcom/nianticproject/ingress/common/c/bi;

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/nianticproject/ingress/a/l;->b(FF)V

    .line 54
    iput-boolean p4, p0, Lcom/nianticproject/ingress/a/l;->i:Z

    .line 55
    iput-object p5, p0, Lcom/nianticproject/ingress/a/l;->j:Lcom/nianticproject/ingress/common/c/bk;

    .line 56
    iget-object v1, p0, Lcom/nianticproject/ingress/a/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/a/l;->l:J

    .line 58
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/l;->g()V

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/l;->f()V

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/a/l;->d:Landroid/media/SoundPool;

    iget v1, p0, Lcom/nianticproject/ingress/a/l;->f:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 112
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/nianticproject/ingress/a/l;->f()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/a/l;->f:I

    .line 118
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method
