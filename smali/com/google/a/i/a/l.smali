.class final Lcom/google/a/i/a/l;
.super Lcom/google/a/i/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/i/a/a",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/a/i/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/i/a/d",
            "<-TI;+TO;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/a/i/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/i/a/p",
            "<+TI;>;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/a/i/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/i/a/p",
            "<+TO;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/google/a/i/a/d;Lcom/google/a/i/a/p;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/i/a/d",
            "<-TI;+TO;>;",
            "Lcom/google/a/i/a/p",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/google/a/i/a/a;-><init>()V

    .line 955
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    .line 960
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/i/a/d;

    iput-object v0, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 961
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/i/a/p;

    iput-object v0, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/i/a/d;Lcom/google/a/i/a/p;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 949
    invoke-direct {p0, p1, p2}, Lcom/google/a/i/a/l;-><init>(Lcom/google/a/i/a/d;Lcom/google/a/i/a/p;)V

    return-void
.end method

.method static synthetic a(Lcom/google/a/i/a/l;)Lcom/google/a/i/a/p;
    .locals 1
    .parameter

    .prologue
    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/i/a/l;->c:Lcom/google/a/i/a/p;

    return-object v0
.end method

.method private static a(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 1068
    if-eqz p0, :cond_0

    .line 1069
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1071
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 1056
    invoke-super {p0, p1}, Lcom/google/a/i/a/a;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    invoke-static {v0, p1}, Lcom/google/a/i/a/l;->a(Ljava/util/concurrent/Future;Z)V

    .line 1060
    iget-object v0, p0, Lcom/google/a/i/a/l;->c:Lcom/google/a/i/a/p;

    invoke-static {v0, p1}, Lcom/google/a/i/a/l;->a(Ljava/util/concurrent/Future;Z)V

    .line 1061
    const/4 v0, 0x1

    .line 1063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/google/a/i/a/l;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 978
    if-eqz v0, :cond_0

    .line 979
    invoke-interface {v0}, Lcom/google/a/i/a/p;->get()Ljava/lang/Object;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 992
    iget-object v0, p0, Lcom/google/a/i/a/l;->c:Lcom/google/a/i/a/p;

    .line 993
    if-eqz v0, :cond_1

    .line 994
    invoke-interface {v0}, Lcom/google/a/i/a/p;->get()Ljava/lang/Object;

    .line 997
    :cond_1
    invoke-super {p0}, Lcom/google/a/i/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/google/a/i/a/l;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1011
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p3, v0, :cond_0

    .line 1012
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 1013
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1021
    if-eqz v0, :cond_1

    .line 1022
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1023
    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/i/a/p;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1024
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v0, v3, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 1030
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1031
    iget-object v2, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1032
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 1034
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 1041
    iget-object v0, p0, Lcom/google/a/i/a/l;->c:Lcom/google/a/i/a/p;

    .line 1042
    if-eqz v0, :cond_3

    .line 1043
    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/i/a/p;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1046
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/a/i/a/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    invoke-static {v0}, Lcom/google/a/i/a/x;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 1091
    :try_start_1
    iget-object v1, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    invoke-interface {v1, v0}, Lcom/google/a/i/a/d;->a(Ljava/lang/Object;)Lcom/google/a/i/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/i/a/l;->c:Lcom/google/a/i/a/p;

    .line 1093
    invoke-virtual {p0}, Lcom/google/a/i/a/l;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/google/a/i/a/l;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/a/i/a/p;->cancel(Z)Z

    .line 1095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/i/a/l;->c:Lcom/google/a/i/a/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1134
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/a/i/a/l;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1085
    :catch_1
    move-exception v0

    .line 1087
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/i/a/l;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1098
    :cond_0
    :try_start_4
    new-instance v1, Lcom/google/a/i/a/m;

    invoke-direct {v1, p0, v0}, Lcom/google/a/i/a/m;-><init>(Lcom/google/a/i/a/l;Lcom/google/a/i/a/p;)V

    invoke-static {}, Lcom/google/a/i/a/s;->a()Lcom/google/a/i/a/r;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/a/i/a/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1118
    :catch_2
    move-exception v0

    .line 1120
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/i/a/l;->a(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1121
    :catch_3
    move-exception v0

    .line 1124
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/google/a/i/a/l;->a(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1125
    :catch_4
    move-exception v0

    .line 1127
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/google/a/i/a/l;->a(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1130
    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v0, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/a/i/a/l;->a:Lcom/google/a/i/a/d;

    .line 1131
    iput-object v3, p0, Lcom/google/a/i/a/l;->b:Lcom/google/a/i/a/p;

    .line 1133
    iget-object v1, p0, Lcom/google/a/i/a/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
