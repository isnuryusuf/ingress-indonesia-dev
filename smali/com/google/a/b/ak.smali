.class final Lcom/google/a/b/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/bd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/b/bd",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/a/b/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/a/i/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/i/a/v",
            "<TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/a/a/bj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3553
    invoke-static {}, Lcom/google/a/b/o;->j()Lcom/google/a/b/bd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/b/ak;-><init>(Lcom/google/a/b/bd;)V

    .line 3554
    return-void
.end method

.method public constructor <init>(Lcom/google/a/b/bd;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3549
    invoke-static {}, Lcom/google/a/i/a/v;->b()Lcom/google/a/i/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ak;->b:Lcom/google/a/i/a/v;

    .line 3550
    new-instance v0, Lcom/google/a/a/bj;

    invoke-direct {v0}, Lcom/google/a/a/bj;-><init>()V

    iput-object v0, p0, Lcom/google/a/b/ak;->c:Lcom/google/a/a/bj;

    .line 3557
    iput-object p1, p0, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    .line 3558
    return-void
.end method

.method private static a(Lcom/google/a/i/a/v;Ljava/lang/Throwable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/i/a/v",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3585
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/a/i/a/v;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3588
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    invoke-interface {v0}, Lcom/google/a/b/bd;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)Lcom/google/a/b/bd;
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3667
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/a/b/k;)Lcom/google/a/i/a/p;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)",
            "Lcom/google/a/i/a/p",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/google/a/b/ak;->c:Lcom/google/a/a/bj;

    invoke-virtual {v0}, Lcom/google/a/a/bj;->a()Lcom/google/a/a/bj;

    .line 3614
    iget-object v0, p0, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    invoke-interface {v0}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3616
    if-nez v0, :cond_1

    .line 3617
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3618
    invoke-virtual {p0, v0}, Lcom/google/a/b/ak;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/a/b/ak;->b:Lcom/google/a/i/a/v;

    .line 3637
    :goto_0
    return-object v0

    .line 3618
    :cond_0
    invoke-static {v0}, Lcom/google/a/i/a/h;->a(Ljava/lang/Object;)Lcom/google/a/i/a/p;

    move-result-object v0

    goto :goto_0

    .line 3620
    :cond_1
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/i/a/h;->a(Ljava/lang/Object;)Lcom/google/a/i/a/p;

    move-result-object v0

    .line 3621
    if-nez v0, :cond_2

    .line 3622
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/a/i/a/h;->a(Ljava/lang/Object;)Lcom/google/a/i/a/p;

    move-result-object v0

    goto :goto_0

    .line 3626
    :cond_2
    new-instance v1, Lcom/google/a/b/al;

    invoke-direct {v1, p0}, Lcom/google/a/b/al;-><init>(Lcom/google/a/b/ak;)V

    invoke-static {v0, v1}, Lcom/google/a/i/a/h;->a(Lcom/google/a/i/a/p;Lcom/google/a/a/aa;)Lcom/google/a/i/a/p;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3633
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3634
    instance-of v0, v1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_3

    .line 3635
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3637
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/a/b/ak;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/b/ak;->b:Lcom/google/a/i/a/v;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/a/i/a/v;->b()Lcom/google/a/i/a/v;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/a/b/ak;->a(Lcom/google/a/i/a/v;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3600
    if-eqz p1, :cond_0

    .line 3603
    invoke-virtual {p0, p1}, Lcom/google/a/b/ak;->b(Ljava/lang/Object;)Z

    .line 3610
    :goto_0
    return-void

    .line 3606
    :cond_0
    invoke-static {}, Lcom/google/a/b/o;->j()Lcom/google/a/b/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/google/a/b/ak;->b:Lcom/google/a/i/a/v;

    invoke-static {v0, p1}, Lcom/google/a/b/ak;->a(Lcom/google/a/i/a/v;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3661
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/google/a/b/ak;->b:Lcom/google/a/i/a/v;

    invoke-virtual {v0, p1}, Lcom/google/a/i/a/v;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 3562
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    invoke-interface {v0}, Lcom/google/a/b/bd;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/google/a/b/ak;->b:Lcom/google/a/i/a/v;

    invoke-static {v0}, Lcom/google/a/i/a/x;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/google/a/b/ak;->c:Lcom/google/a/a/bj;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/a/a/bj;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    invoke-interface {v0}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
