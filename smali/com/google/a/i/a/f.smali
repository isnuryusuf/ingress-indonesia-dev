.class public final Lcom/google/a/i/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lcom/google/a/i/a/g;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/a/i/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/i/a/f;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 156
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/google/a/i/a/f;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RuntimeException while executing runnable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v1, p0, Lcom/google/a/i/a/f;->c:Z

    if-eqz v1, :cond_1

    .line 122
    monitor-exit p0

    .line 148
    :cond_0
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/a/i/a/f;->c:Z

    .line 125
    iget-object v1, p0, Lcom/google/a/i/a/f;->b:Lcom/google/a/i/a/g;

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/a/i/a/f;->b:Lcom/google/a/i/a/g;

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    if-eqz v1, :cond_2

    .line 140
    iget-object v2, v1, Lcom/google/a/i/a/g;->c:Lcom/google/a/i/a/g;

    .line 141
    iput-object v0, v1, Lcom/google/a/i/a/g;->c:Lcom/google/a/i/a/g;

    move-object v0, v1

    move-object v1, v2

    .line 143
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, v0, Lcom/google/a/i/a/g;->a:Ljava/lang/Runnable;

    iget-object v2, v0, Lcom/google/a/i/a/g;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lcom/google/a/i/a/f;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 146
    iget-object v0, v0, Lcom/google/a/i/a/g;->c:Lcom/google/a/i/a/g;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    const-string/jumbo v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/google/a/i/a/f;->c:Z

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/a/i/a/g;

    iget-object v1, p0, Lcom/google/a/i/a/f;->b:Lcom/google/a/i/a/g;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/a/i/a/g;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/google/a/i/a/g;)V

    iput-object v0, p0, Lcom/google/a/i/a/f;->b:Lcom/google/a/i/a/g;

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    monitor-exit p0

    .line 101
    invoke-static {p1, p2}, Lcom/google/a/i/a/f;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
