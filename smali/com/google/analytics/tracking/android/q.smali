.class public final Lcom/google/analytics/tracking/android/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/bb;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static m:Lcom/google/analytics/tracking/android/q;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/analytics/tracking/android/h;

.field private volatile d:Lcom/google/analytics/tracking/android/j;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/google/analytics/tracking/android/i;

.field private j:Landroid/os/Handler;

.field private k:Lcom/google/analytics/tracking/android/p;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/q;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/q;->e:I

    .line 45
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/q;->f:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/q;->g:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/q;->h:Z

    .line 54
    new-instance v0, Lcom/google/analytics/tracking/android/r;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/r;-><init>(Lcom/google/analytics/tracking/android/q;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/q;->i:Lcom/google/analytics/tracking/android/i;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->l:Z

    .line 80
    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/q;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/analytics/tracking/android/q;->m:Lcom/google/analytics/tracking/android/q;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/analytics/tracking/android/q;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/q;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/q;->m:Lcom/google/analytics/tracking/android/q;

    .line 76
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/q;->m:Lcom/google/analytics/tracking/android/q;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/q;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/google/analytics/tracking/android/q;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/q;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/analytics/tracking/android/q;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;Lcom/google/analytics/tracking/android/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/q;->b:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->d:Lcom/google/analytics/tracking/android/j;

    if-nez v0, :cond_0

    .line 138
    iput-object p2, p0, Lcom/google/analytics/tracking/android/q;->d:Lcom/google/analytics/tracking/android/j;

    .line 139
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->f:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p2}, Lcom/google/analytics/tracking/android/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->l:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/q;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->l:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/q;->e:I

    if-lez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/q;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 215
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/analytics/tracking/android/q;->e:I

    if-lez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/q;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string/jumbo v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)I

    .line 221
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/q;->l:Z

    .line 222
    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/q;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_5
    :try_start_2
    const-string/jumbo v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized b()Lcom/google/analytics/tracking/android/h;
    .locals 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->c:Lcom/google/analytics/tracking/android/h;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/ax;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->i:Lcom/google/analytics/tracking/android/i;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/q;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/ax;-><init>(Lcom/google/analytics/tracking/android/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/q;->c:Lcom/google/analytics/tracking/android/h;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/s;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/s;-><init>(Lcom/google/analytics/tracking/android/q;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    iget v0, p0, Lcom/google/analytics/tracking/android/q;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/q;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->k:Lcom/google/analytics/tracking/android/p;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->h:Z

    if-eqz v0, :cond_3

    .line 168
    new-instance v0, Lcom/google/analytics/tracking/android/p;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/p;-><init>(Lcom/google/analytics/tracking/android/bb;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/q;->k:Lcom/google/analytics/tracking/android/p;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/q;->k:Lcom/google/analytics/tracking/android/p;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->c:Lcom/google/analytics/tracking/android/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->d:Lcom/google/analytics/tracking/android/j;

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->S:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 184
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->d:Lcom/google/analytics/tracking/android/j;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v0, "Need to call initialize() and be in fallback mode to start dispatch."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/q;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->T:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 197
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/q;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/analytics/tracking/android/q;->e:I

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/q;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/q;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
