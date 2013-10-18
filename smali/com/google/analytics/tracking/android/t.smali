.class final Lcom/google/analytics/tracking/android/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/bc;
.implements Lcom/google/analytics/tracking/android/f;
.implements Lcom/google/analytics/tracking/android/g;


# instance fields
.field private volatile a:J

.field private volatile b:Lcom/google/analytics/tracking/android/x;

.field private volatile c:Lcom/google/analytics/tracking/android/c;

.field private d:Lcom/google/analytics/tracking/android/h;

.field private e:Lcom/google/analytics/tracking/android/h;

.field private final f:Lcom/google/analytics/tracking/android/j;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/analytics/tracking/android/aa;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:I

.field private volatile j:Ljava/util/Timer;

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private m:Z

.field private n:Z

.field private o:Lcom/google/analytics/tracking/android/l;

.field private p:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    .line 64
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/t;->p:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->e:Lcom/google/analytics/tracking/android/h;

    .line 69
    iput-object p1, p0, Lcom/google/analytics/tracking/android/t;->g:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/analytics/tracking/android/t;->f:Lcom/google/analytics/tracking/android/j;

    .line 71
    new-instance v0, Lcom/google/analytics/tracking/android/u;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/t;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->o:Lcom/google/analytics/tracking/android/l;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/t;->i:I

    .line 78
    sget-object v0, Lcom/google/analytics/tracking/android/x;->g:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/j;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/tracking/android/t;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/j;)V

    .line 83
    return-void
.end method

.method private static a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    .line 144
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->f()V

    return-void
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/t;)Lcom/google/analytics/tracking/android/x;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->h()V

    return-void
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->i()V

    return-void
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/t;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->j:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->j:Ljava/util/Timer;

    .line 149
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    .line 150
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    .line 151
    return-void
.end method

.method static synthetic f(Lcom/google/analytics/tracking/android/t;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/t;->a:J

    return-wide v0
.end method

.method private declared-synchronized f()V
    .locals 7

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/t;->f:Lcom/google/analytics/tracking/android/j;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/j;->c()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->f:Lcom/google/analytics/tracking/android/j;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/j;->b()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/v;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/v;-><init>(Lcom/google/analytics/tracking/android/t;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/t;->n:Z

    if-eqz v1, :cond_2

    .line 204
    const-string/jumbo v1, "clearHits called"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    sget-object v1, Lcom/google/analytics/tracking/android/w;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/t;->n:Z

    .line 206
    :cond_2
    :goto_1
    sget-object v1, Lcom/google/analytics/tracking/android/w;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 208
    :goto_2
    :pswitch_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/aa;

    move-object v6, v0

    .line 210
    const-string/jumbo v1, "Sending hit to store"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->d:Lcom/google/analytics/tracking/android/h;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/h;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 204
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->d:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/h;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/t;->n:Z

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/c;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/t;->n:Z

    goto :goto_1

    .line 215
    :cond_3
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/t;->m:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->g()V

    goto :goto_0

    .line 220
    :goto_3
    :pswitch_3
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/aa;

    move-object v6, v0

    .line 222
    const-string/jumbo v1, "Sending hit to service"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/aa;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/c;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 225
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_3

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->o:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/t;->a:J

    goto/16 :goto_0

    .line 230
    :pswitch_4
    const-string/jumbo v1, "Need to reconnect"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic g(Lcom/google/analytics/tracking/android/t;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/t;->p:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->d:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->b()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/t;->m:Z

    .line 247
    return-void
.end method

.method static synthetic h(Lcom/google/analytics/tracking/android/t;)Lcom/google/analytics/tracking/android/l;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->o:Lcom/google/analytics/tracking/android/l;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    sget-object v1, Lcom/google/analytics/tracking/android/x;->c:Lcom/google/analytics/tracking/android/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->e()V

    .line 258
    const-string/jumbo v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->e:Lcom/google/analytics/tracking/android/h;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->e:Lcom/google/analytics/tracking/android/h;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->d:Lcom/google/analytics/tracking/android/h;

    .line 266
    :goto_1
    sget-object v0, Lcom/google/analytics/tracking/android/x;->c:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 267
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/analytics/tracking/android/q;->a()Lcom/google/analytics/tracking/android/q;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/t;->f:Lcom/google/analytics/tracking/android/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/q;->a(Landroid/content/Context;Lcom/google/analytics/tracking/android/j;)V

    .line 264
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/q;->b()Lcom/google/analytics/tracking/android/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->d:Lcom/google/analytics/tracking/android/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    sget-object v1, Lcom/google/analytics/tracking/android/x;->c:Lcom/google/analytics/tracking/android/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 273
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/t;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/t;->i:I

    .line 274
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    .line 275
    sget-object v0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 276
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    .line 277
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/z;-><init>(Lcom/google/analytics/tracking/android/t;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 278
    const-string/jumbo v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :cond_0
    :try_start_3
    const-string/jumbo v0, "client not initialized."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic i(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->j()V

    return-void
.end method

.method static synthetic j(Lcom/google/analytics/tracking/android/t;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    sget-object v1, Lcom/google/analytics/tracking/android/x;->b:Lcom/google/analytics/tracking/android/x;

    if-ne v0, v1, :cond_0

    .line 292
    sget-object v0, Lcom/google/analytics/tracking/android/x;->f:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 293
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->j:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->j:Ljava/util/Timer;

    .line 340
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->j:Ljava/util/Timer;

    .line 341
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->j:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ab;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ab;-><init>(Lcom/google/analytics/tracking/android/t;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 342
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->k:Ljava/util/Timer;

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/t;->i:I

    .line 301
    const-string/jumbo v0, "Connected to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/google/analytics/tracking/android/x;->b:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 303
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->f()V

    .line 304
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    .line 305
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    .line 306
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/y;-><init>(Lcom/google/analytics/tracking/android/t;B)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/t;->p:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2
    .parameter

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/x;->e:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 329
    iget v0, p0, Lcom/google/analytics/tracking/android/t;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    const-string/jumbo v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 97
    iget-object v6, p0, Lcom/google/analytics/tracking/android/t;->h:Ljava/util/Queue;

    new-instance v0, Lcom/google/analytics/tracking/android/aa;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/aa;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->f()V

    .line 99
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    sget-object v1, Lcom/google/analytics/tracking/android/x;->f:Lcom/google/analytics/tracking/android/x;

    if-ne v0, v1, :cond_0

    .line 312
    const-string/jumbo v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->e()V

    .line 314
    sget-object v0, Lcom/google/analytics/tracking/android/x;->g:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/google/analytics/tracking/android/x;->e:Lcom/google/analytics/tracking/android/x;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    .line 318
    iget v0, p0, Lcom/google/analytics/tracking/android/t;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/google/analytics/tracking/android/w;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->b:Lcom/google/analytics/tracking/android/x;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/t;->m:Z

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->g()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/d;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/d;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;Lcom/google/analytics/tracking/android/g;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->c:Lcom/google/analytics/tracking/android/c;

    .line 163
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/t;->i()V

    goto :goto_0
.end method
