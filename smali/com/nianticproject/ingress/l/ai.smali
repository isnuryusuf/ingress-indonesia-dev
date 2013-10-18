.class public Lcom/nianticproject/ingress/l/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/l/ai;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/l/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/l/ai;->b:Landroid/os/HandlerThread;

    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->b:Landroid/os/HandlerThread;

    new-instance v1, Lcom/nianticproject/ingress/l/aj;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/l/aj;-><init>(Lcom/nianticproject/ingress/l/ai;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 39
    return-void
.end method

.method static synthetic b()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticproject/ingress/l/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->c:Landroid/os/Handler;

    .line 55
    :goto_0
    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/l/ai;->c:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/l/ai;->c:Landroid/os/Handler;

    .line 53
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/l/ai;->c:Landroid/os/Handler;

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
