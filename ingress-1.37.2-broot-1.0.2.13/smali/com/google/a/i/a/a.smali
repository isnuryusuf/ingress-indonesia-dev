.class public abstract Lcom/google/a/i/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/i/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/i/a/p",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/i/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/i/a/b",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/i/a/f;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/a/i/a/b;

    invoke-direct {v0}, Lcom/google/a/i/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    .line 71
    new-instance v0, Lcom/google/a/i/a/f;

    invoke-direct {v0}, Lcom/google/a/i/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/f;

    .line 76
    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 399
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 401
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/i/a/f;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 171
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {v0}, Lcom/google/a/i/a/b;->d()Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {v0, p1}, Lcom/google/a/i/a/b;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/f;

    invoke-virtual {v1}, Lcom/google/a/i/a/f;->a()V

    .line 187
    :cond_0
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/google/a/i/a/b;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/f;

    invoke-virtual {v1}, Lcom/google/a/i/a/f;->a()V

    .line 208
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 209
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 211
    :cond_1
    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {v0, p1}, Lcom/google/a/i/a/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/f;

    invoke-virtual {v0}, Lcom/google/a/i/a/f;->a()V

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {v0}, Lcom/google/a/i/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/a/i/a/b;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {v0}, Lcom/google/a/i/a/b;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/i/a/b;

    invoke-virtual {v0}, Lcom/google/a/i/a/b;->b()Z

    move-result v0

    return v0
.end method
