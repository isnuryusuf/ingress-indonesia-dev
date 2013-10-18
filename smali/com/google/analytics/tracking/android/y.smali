.class final Lcom/google/analytics/tracking/android/y;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/t;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/t;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/y;-><init>(Lcom/google/analytics/tracking/android/t;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->b(Lcom/google/analytics/tracking/android/t;)Lcom/google/analytics/tracking/android/x;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/x;->b:Lcom/google/analytics/tracking/android/x;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->e(Lcom/google/analytics/tracking/android/t;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->f(Lcom/google/analytics/tracking/android/t;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/t;->g(Lcom/google/analytics/tracking/android/t;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/t;->h(Lcom/google/analytics/tracking/android/t;)Lcom/google/analytics/tracking/android/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 367
    const-string/jumbo v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->i(Lcom/google/analytics/tracking/android/t;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->j(Lcom/google/analytics/tracking/android/t;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/y;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/y;-><init>(Lcom/google/analytics/tracking/android/t;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/t;->g(Lcom/google/analytics/tracking/android/t;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
