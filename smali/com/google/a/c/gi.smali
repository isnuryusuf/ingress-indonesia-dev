.class final Lcom/google/a/c/gi;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/c/fi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/fi",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/fi;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/fi",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2092
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2076
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/a/c/gi;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2093
    iput-object p1, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    .line 2094
    iput p3, p0, Lcom/google/a/c/gi;->f:I

    .line 2095
    invoke-static {p2}, Lcom/google/a/c/gi;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/a/c/gi;->d:I

    iget v2, p0, Lcom/google/a/c/gi;->d:I

    iget v3, p0, Lcom/google/a/c/gi;->f:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/a/c/gi;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/c/gi;->d:I

    :cond_0
    iput-object v0, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2097
    invoke-virtual {p1}, Lcom/google/a/c/fi;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/a/c/gi;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2100
    invoke-virtual {p1}, Lcom/google/a/c/fi;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object v1, p0, Lcom/google/a/c/gi;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2103
    invoke-virtual {p1}, Lcom/google/a/c/fi;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/a/c/fi;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/a/c/gi;->i:Ljava/util/Queue;

    .line 2107
    invoke-virtual {p1}, Lcom/google/a/c/fi;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/a/c/fx;

    invoke-direct {v0}, Lcom/google/a/c/fx;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    .line 2111
    invoke-virtual {p1}, Lcom/google/a/c/fi;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/a/c/ga;

    invoke-direct {v0}, Lcom/google/a/c/ga;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    .line 2114
    return-void

    :cond_3
    move-object v0, v1

    .line 2097
    goto :goto_0

    .line 2103
    :cond_4
    invoke-static {}, Lcom/google/a/c/fi;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2107
    :cond_5
    invoke-static {}, Lcom/google/a/c/fi;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2111
    :cond_6
    invoke-static {}, Lcom/google/a/c/fi;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2140
    invoke-interface {p1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-object v0

    .line 2145
    :cond_1
    invoke-interface {p1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v1

    .line 2146
    invoke-interface {v1}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2147
    if-eqz v2, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->n:Lcom/google/a/c/fm;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/a/c/fm;->a(Lcom/google/a/c/gi;Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2153
    iget-object v3, p0, Lcom/google/a/c/gi;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/a/c/gu;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/c/gh;)Lcom/google/a/c/gu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/c/gh;->a(Lcom/google/a/c/gu;)V

    goto :goto_0
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/a/c/gh;J)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->o:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/a/c/gh;->a(J)V

    .line 2328
    return-void
.end method

.method private a(Lcom/google/a/c/gh;Lcom/google/a/c/fa;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/fa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2366
    invoke-interface {p1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/gh;->c()I

    invoke-interface {p1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2367
    return-void
.end method

.method private a(Lcom/google/a/c/gh;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->h:Lcom/google/a/c/gk;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/a/c/gk;->a(Lcom/google/a/c/gi;Lcom/google/a/c/gh;Ljava/lang/Object;)Lcom/google/a/c/gu;

    move-result-object v0

    .line 2163
    invoke-interface {p1, v0}, Lcom/google/a/c/gh;->a(Lcom/google/a/c/gu;)V

    .line 2164
    invoke-direct {p0}, Lcom/google/a/c/gi;->e()V

    iget-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-wide v0, v0, Lcom/google/a/c/fi;->j:J

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;J)V

    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2165
    :cond_0
    return-void

    .line 2164
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-wide v0, v0, Lcom/google/a/c/fi;->k:J

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/a/c/fa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->l:Ljava/util/Queue;

    sget-object v1, Lcom/google/a/c/fi;->q:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2372
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected null key during removal notification, cause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2374
    invoke-static {}, Lcom/google/a/c/fi;->j()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2380
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/a/c/fh;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/a/c/fh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2381
    iget-object v1, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v1, v1, Lcom/google/a/c/fi;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2383
    :cond_1
    return-void

    .line 2375
    :cond_2
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected null value during removal notification, cause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2377
    invoke-static {}, Lcom/google/a/c/fi;->j()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/google/a/c/gh;ILcom/google/a/c/fa;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;I",
            "Lcom/google/a/c/fa;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3008
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    .line 3009
    iget-object v2, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3010
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3011
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v1, v0

    .line 3013
    :goto_0
    if-eqz v1, :cond_1

    .line 3014
    if-ne v1, p1, :cond_0

    .line 3015
    iget v4, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/a/c/gi;->c:I

    .line 3016
    invoke-interface {v1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 3017
    invoke-direct {p0, v0, v1}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 3018
    iget v1, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3019
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3020
    iput v1, p0, Lcom/google/a/c/gi;->b:I

    .line 3021
    const/4 v0, 0x1

    .line 3025
    :goto_1
    return v0

    .line 3013
    :cond_0
    invoke-interface {v1}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v1

    goto :goto_0

    .line 3025
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/a/c/gu;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3033
    invoke-interface {p0}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2883
    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2885
    iget v2, p0, Lcom/google/a/c/gi;->b:I

    .line 2886
    invoke-interface {p2}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v1

    .line 2887
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2888
    invoke-direct {p0, p1, v1}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2889
    if-eqz v0, :cond_0

    move v1, v2

    .line 2887
    :goto_1
    invoke-interface {p1}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2892
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/c/gi;->c(Lcom/google/a/c/gh;)V

    .line 2893
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 2896
    :cond_1
    iput v2, p0, Lcom/google/a/c/gi;->b:I

    .line 2897
    return-object v1
.end method

.method private b(Lcom/google/a/c/gh;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2272
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-wide v0, v0, Lcom/google/a/c/fi;->j:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;J)V

    .line 2274
    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2276
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 2174
    invoke-virtual {p0}, Lcom/google/a/c/gi;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2181
    :cond_0
    return-void

    .line 2178
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    throw v0
.end method

.method private c(Lcom/google/a/c/gh;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2901
    sget-object v0, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Lcom/google/a/c/fa;)V

    .line 2902
    iget-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2903
    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2904
    return-void
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/a/c/gh;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2419
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    if-eqz v0, :cond_2

    .line 2420
    iget-object v0, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    :goto_0
    if-eqz v0, :cond_2

    .line 2421
    invoke-interface {v0}, Lcom/google/a/c/gh;->c()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2422
    invoke-interface {v0}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2426
    if-nez v1, :cond_1

    .line 2427
    invoke-direct {p0}, Lcom/google/a/c/gi;->c()V

    .line 2420
    :cond_0
    invoke-interface {v0}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v0

    goto :goto_0

    .line 2431
    :cond_1
    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v2, v2, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v2, p1, v1}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2437
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 2189
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 2190
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/gi;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/a/c/gh;

    iget-object v3, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v3, v0}, Lcom/google/a/c/fi;->a(Lcom/google/a/c/gh;)V

    add-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_3

    .line 2192
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2193
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/gi;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/google/a/c/gu;

    iget-object v1, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v1, v0}, Lcom/google/a/c/fi;->a(Lcom/google/a/c/gu;)V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 2195
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;I)Lcom/google/a/c/gh;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2441
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/gi;->d(Ljava/lang/Object;I)Lcom/google/a/c/gh;

    move-result-object v1

    .line 2442
    if-nez v1, :cond_0

    .line 2448
    :goto_0
    return-object v0

    .line 2444
    :cond_0
    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v2}, Lcom/google/a/c/fi;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v2, v1}, Lcom/google/a/c/fi;->c(Lcom/google/a/c/gh;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2445
    invoke-direct {p0}, Lcom/google/a/c/gi;->f()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2448
    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 2308
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/gi;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    if-eqz v0, :cond_2

    .line 2313
    iget-object v1, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2314
    iget-object v1, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2316
    :cond_1
    iget-object v1, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v1}, Lcom/google/a/c/fi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2317
    iget-object v1, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2320
    :cond_2
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/google/a/c/gi;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2342
    :cond_0
    return-void

    .line 2338
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    throw v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 2346
    invoke-direct {p0}, Lcom/google/a/c/gi;->e()V

    .line 2348
    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2360
    :cond_0
    return-void

    .line 2353
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->o:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v1

    .line 2355
    :cond_2
    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-static {v0, v1, v2}, Lcom/google/a/c/fi;->a(Lcom/google/a/c/gh;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2356
    invoke-interface {v0}, Lcom/google/a/c/gh;->c()I

    move-result v3

    sget-object v4, Lcom/google/a/c/fa;->d:Lcom/google/a/c/fa;

    invoke-direct {p0, v0, v3, v4}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;ILcom/google/a/c/fa;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2357
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 3096
    invoke-virtual {p0}, Lcom/google/a/c/gi;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3098
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->d()V

    .line 3099
    invoke-direct {p0}, Lcom/google/a/c/gi;->g()V

    .line 3100
    iget-object v0, p0, Lcom/google/a/c/gi;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3102
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 3105
    :cond_0
    return-void

    .line 3102
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    throw v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0}, Lcom/google/a/c/gi;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->i()V

    .line 3112
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/c/gh;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3044
    invoke-interface {p1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3045
    invoke-direct {p0}, Lcom/google/a/c/gi;->c()V

    .line 3058
    :goto_0
    return-object v0

    .line 3048
    :cond_0
    invoke-interface {p1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3049
    if-nez v1, :cond_1

    .line 3050
    invoke-direct {p0}, Lcom/google/a/c/gi;->c()V

    goto :goto_0

    .line 3054
    :cond_1
    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v2}, Lcom/google/a/c/fi;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v2, p1}, Lcom/google/a/c/fi;->c(Lcom/google/a/c/gh;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3055
    invoke-direct {p0}, Lcom/google/a/c/gi;->f()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3058
    goto :goto_0
.end method

.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2453
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/gi;->e(Ljava/lang/Object;I)Lcom/google/a/c/gh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2454
    if-nez v1, :cond_0

    .line 2455
    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    const/4 v0, 0x0

    .line 2466
    :goto_0
    return-object v0

    .line 2458
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2459
    if-eqz v0, :cond_2

    .line 2460
    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v2}, Lcom/google/a/c/fi;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-wide v2, v2, Lcom/google/a/c/fi;->j:J

    invoke-direct {p0, v1, v2, v3}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;J)V

    :cond_1
    iget-object v2, p0, Lcom/google/a/c/gi;->i:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2466
    :goto_1
    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    goto :goto_0

    .line 2462
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/a/c/gi;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2466
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2707
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2709
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->h()V

    .line 2711
    iget-object v4, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2712
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2713
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v3, v0

    .line 2715
    :goto_0
    if-eqz v3, :cond_3

    .line 2716
    invoke-interface {v3}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2717
    invoke-interface {v3}, Lcom/google/a/c/gh;->c()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v2, v2, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v2, p1, v6}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2721
    invoke-interface {v3}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v7

    .line 2722
    invoke-interface {v7}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2723
    if-nez v2, :cond_1

    .line 2724
    invoke-static {v7}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gu;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2725
    iget v7, p0, Lcom/google/a/c/gi;->b:I

    .line 2726
    iget v7, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/a/c/gi;->c:I

    .line 2727
    sget-object v7, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    invoke-direct {p0, v6, v2, v7}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2728
    invoke-direct {p0, v0, v3}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2729
    iget v2, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2730
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2731
    iput v2, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2733
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2746
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 2736
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/gi;->c:I

    .line 2737
    sget-object v0, Lcom/google/a/c/fa;->b:Lcom/google/a/c/fa;

    invoke-direct {p0, p1, v2, v0}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2738
    invoke-direct {p0, v3, p3}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2745
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2746
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move-object v0, v2

    goto :goto_1

    .line 2715
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2743
    :cond_3
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2746
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move-object v0, v1

    goto :goto_1

    .line 2745
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2746
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2518
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->h()V

    .line 2520
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 2521
    iget v0, p0, Lcom/google/a/c/gi;->d:I

    if-le v1, v0, :cond_5

    .line 2522
    iget-object v7, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    const/high16 v0, 0x4000

    if-ge v8, v0, :cond_4

    iget v1, p0, Lcom/google/a/c/gi;->b:I

    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Lcom/google/a/c/gi;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/a/c/gi;->d:I

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_3

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/a/c/gh;->c()I

    move-result v2

    and-int v3, v2, v10

    if-nez v4, :cond_0

    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_2
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/a/c/gh;->c()I

    move-result v2

    and-int/2addr v2, v10

    if-eq v2, v3, :cond_e

    move-object v3, v4

    :goto_3
    invoke-interface {v4}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v4

    move-object v5, v3

    move v3, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    :goto_4
    if-eq v2, v5, :cond_d

    invoke-interface {v2}, Lcom/google/a/c/gh;->c()I

    move-result v0

    and-int v3, v0, v10

    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    invoke-direct {p0, v2, v0}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_5
    invoke-interface {v2}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/a/c/gi;->c(Lcom/google/a/c/gh;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_3
    iput-object v9, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v1, p0, Lcom/google/a/c/gi;->b:I

    .line 2523
    :cond_4
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 2526
    :cond_5
    iget-object v3, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2527
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2528
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v2, v0

    .line 2531
    :goto_6
    if-eqz v2, :cond_9

    .line 2532
    invoke-interface {v2}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2533
    invoke-interface {v2}, Lcom/google/a/c/gh;->c()I

    move-result v6

    if-ne v6, p2, :cond_8

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v6, v6, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v6, p1, v5}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2537
    invoke-interface {v2}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v0

    .line 2538
    invoke-interface {v0}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2540
    if-nez v0, :cond_6

    .line 2541
    iget v1, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/c/gi;->c:I

    .line 2542
    invoke-direct {p0, v2, p3}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Ljava/lang/Object;)V

    .line 2543
    sget-object v1, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2545
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    .line 2546
    iput v0, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2579
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 2551
    :cond_6
    if-eqz p4, :cond_7

    .line 2555
    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2578
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2579
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    goto :goto_7

    .line 2559
    :cond_7
    :try_start_2
    iget v1, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/c/gi;->c:I

    .line 2560
    sget-object v1, Lcom/google/a/c/fa;->b:Lcom/google/a/c/fa;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2561
    invoke-direct {p0, v2, p3}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2578
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2579
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    goto :goto_7

    .line 2531
    :cond_8
    :try_start_3
    invoke-interface {v2}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v2

    goto :goto_6

    .line 2568
    :cond_9
    iget v2, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/c/gi;->c:I

    .line 2569
    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v2, v2, Lcom/google/a/c/fi;->n:Lcom/google/a/c/fm;

    invoke-virtual {v2, p0, p1, p2, v0}, Lcom/google/a/c/fm;->a(Lcom/google/a/c/gi;Ljava/lang/Object;ILcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2570
    invoke-direct {p0, v0, p3}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Ljava/lang/Object;)V

    .line 2571
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2572
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/a/c/gi;->b:I

    iget v2, p0, Lcom/google/a/c/gi;->f:I

    if-lt v0, v2, :cond_b

    invoke-direct {p0}, Lcom/google/a/c/gi;->e()V

    iget-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    invoke-interface {v0}, Lcom/google/a/c/gh;->c()I

    move-result v2

    sget-object v3, Lcom/google/a/c/fa;->e:Lcom/google/a/c/fa;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;ILcom/google/a/c/fa;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2578
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2579
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0

    .line 2572
    :cond_a
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_c

    .line 2573
    :try_start_4
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2575
    :goto_9
    iput v0, p0, Lcom/google/a/c/gi;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2576
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2579
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    const/4 v0, 0x0

    goto :goto_7

    .line 2572
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_9

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    move-object v3, v5

    goto/16 :goto_3
.end method

.method final a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2837
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    if-eqz v0, :cond_7

    .line 2838
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2840
    :try_start_0
    iget-object v3, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2841
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->l:Ljava/util/Queue;

    sget-object v2, Lcom/google/a/c/fi;->q:Ljava/util/Queue;

    if-eq v0, v2, :cond_1

    move v2, v1

    .line 2842
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 2843
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    :goto_1
    if-eqz v0, :cond_0

    .line 2845
    invoke-interface {v0}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    .line 2846
    sget-object v4, Lcom/google/a/c/fa;->a:Lcom/google/a/c/fa;

    invoke-direct {p0, v0, v4}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Lcom/google/a/c/fa;)V

    .line 2843
    invoke-interface {v0}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v0

    goto :goto_1

    .line 2842
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2851
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2852
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2851
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2854
    :cond_2
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/a/c/gi;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_4
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/a/c/gi;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2855
    :cond_6
    iget-object v0, p0, Lcom/google/a/c/gi;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2856
    iget-object v0, p0, Lcom/google/a/c/gi;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2857
    iget-object v0, p0, Lcom/google/a/c/gi;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2859
    iget v0, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/gi;->c:I

    .line 2860
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2862
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2863
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    .line 2866
    :cond_7
    return-void

    .line 2862
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2863
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0
.end method

.method final a(Lcom/google/a/c/gh;I)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2910
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2912
    :try_start_0
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    .line 2913
    iget-object v2, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2914
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2915
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v1, v0

    .line 2917
    :goto_0
    if-eqz v1, :cond_1

    .line 2918
    if-ne v1, p1, :cond_0

    .line 2919
    iget v4, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/a/c/gi;->c:I

    .line 2920
    invoke-interface {v1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    invoke-direct {p0, v4, v5, v6}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2922
    invoke-direct {p0, v0, v1}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2923
    iget v1, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2924
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2925
    iput v1, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2933
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2917
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2930
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2933
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    const/4 v0, 0x0

    goto :goto_1

    .line 2932
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2933
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILcom/google/a/c/gu;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2941
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2943
    :try_start_0
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    .line 2944
    iget-object v3, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2945
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2946
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v2, v0

    .line 2948
    :goto_0
    if-eqz v2, :cond_4

    .line 2949
    invoke-interface {v2}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2950
    invoke-interface {v2}, Lcom/google/a/c/gh;->c()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v6, v6, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v6, p1, v5}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2952
    invoke-interface {v2}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v5

    .line 2953
    if-ne v5, p3, :cond_1

    .line 2954
    iget v1, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/c/gi;->c:I

    .line 2955
    invoke-interface {p3}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    invoke-direct {p0, p1, v1, v5}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2956
    invoke-direct {p0, v0, v2}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2957
    iget v1, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2958
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2959
    iput v1, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2960
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2969
    invoke-virtual {p0}, Lcom/google/a/c/gi;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2970
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2962
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2969
    invoke-virtual {p0}, Lcom/google/a/c/gi;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2970
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2948
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2966
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2969
    invoke-virtual {p0}, Lcom/google/a/c/gi;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2970
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 2968
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2969
    invoke-virtual {p0}, Lcom/google/a/c/gi;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2970
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    :cond_6
    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2656
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2658
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->h()V

    .line 2660
    iget-object v3, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2661
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2662
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v2, v0

    .line 2664
    :goto_0
    if-eqz v2, :cond_4

    .line 2665
    invoke-interface {v2}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2666
    invoke-interface {v2}, Lcom/google/a/c/gh;->c()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v6, v6, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v6, p1, v5}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2670
    invoke-interface {v2}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v6

    .line 2671
    invoke-interface {v6}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2672
    if-nez v7, :cond_1

    .line 2673
    invoke-static {v6}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gu;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2674
    iget v6, p0, Lcom/google/a/c/gi;->b:I

    .line 2675
    iget v6, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/a/c/gi;->c:I

    .line 2676
    sget-object v6, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;

    invoke-direct {p0, v5, v7, v6}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2677
    invoke-direct {p0, v0, v2}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2678
    iget v2, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2679
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2680
    iput v2, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2702
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move v0, v1

    :goto_1
    return v0

    .line 2685
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->f:Lcom/google/a/a/x;

    invoke-virtual {v0, p3, v7}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2686
    iget v0, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/gi;->c:I

    .line 2687
    sget-object v0, Lcom/google/a/c/fa;->b:Lcom/google/a/c/fa;

    invoke-direct {p0, p1, v7, v0}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2688
    invoke-direct {p0, v2, p4}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2689
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2702
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    const/4 v0, 0x1

    goto :goto_1

    .line 2693
    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2694
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2702
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move v0, v1

    goto :goto_1

    .line 2664
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2699
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2702
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move v0, v1

    goto :goto_1

    .line 2701
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2702
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/google/a/c/gi;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3068
    invoke-direct {p0}, Lcom/google/a/c/gi;->h()V

    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    .line 3070
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/Object;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2472
    :try_start_0
    iget v1, p0, Lcom/google/a/c/gi;->b:I

    if-eqz v1, :cond_2

    .line 2473
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/gi;->e(Ljava/lang/Object;I)Lcom/google/a/c/gh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2474
    if-nez v1, :cond_0

    .line 2475
    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    .line 2482
    :goto_0
    return v0

    .line 2477
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2482
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    goto :goto_0

    .line 2480
    :cond_2
    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->b()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2794
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2796
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->h()V

    .line 2798
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    .line 2799
    iget-object v4, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2800
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2801
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v3, v0

    .line 2803
    :goto_0
    if-eqz v3, :cond_4

    .line 2804
    invoke-interface {v3}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2805
    invoke-interface {v3}, Lcom/google/a/c/gh;->c()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v2, v2, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v2, p1, v6}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2807
    invoke-interface {v3}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v2

    .line 2808
    invoke-interface {v2}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2811
    iget-object v8, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v8, v8, Lcom/google/a/c/fi;->f:Lcom/google/a/a/x;

    invoke-virtual {v8, p3, v7}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2812
    sget-object v2, Lcom/google/a/c/fa;->a:Lcom/google/a/c/fa;

    .line 2819
    :goto_1
    iget v8, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/a/c/gi;->c:I

    .line 2820
    invoke-direct {p0, v6, v7, v2}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2821
    invoke-direct {p0, v0, v3}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2822
    iget v3, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v3, v3, -0x1

    .line 2823
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2824
    iput v3, p0, Lcom/google/a/c/gi;->b:I

    .line 2825
    sget-object v0, Lcom/google/a/c/fa;->a:Lcom/google/a/c/fa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2831
    :goto_2
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2832
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move v1, v0

    :goto_3
    return v1

    .line 2813
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gu;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2814
    sget-object v2, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2816
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2832
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2825
    goto :goto_2

    .line 2803
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2829
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2832
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    goto :goto_3

    .line 2831
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2832
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0
.end method

.method final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2751
    invoke-virtual {p0}, Lcom/google/a/c/gi;->lock()V

    .line 2753
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/c/gi;->h()V

    .line 2755
    iget v0, p0, Lcom/google/a/c/gi;->b:I

    .line 2756
    iget-object v4, p0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2757
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2758
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    move-object v3, v0

    .line 2760
    :goto_0
    if-eqz v3, :cond_3

    .line 2761
    invoke-interface {v3}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2762
    invoke-interface {v3}, Lcom/google/a/c/gh;->c()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/a/c/gi;->a:Lcom/google/a/c/fi;

    iget-object v2, v2, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v2, p1, v6}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2764
    invoke-interface {v3}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v7

    .line 2765
    invoke-interface {v7}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2768
    if-eqz v2, :cond_0

    .line 2769
    sget-object v1, Lcom/google/a/c/fa;->a:Lcom/google/a/c/fa;

    .line 2776
    :goto_1
    iget v7, p0, Lcom/google/a/c/gi;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/a/c/gi;->c:I

    .line 2777
    invoke-direct {p0, v6, v2, v1}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    .line 2778
    invoke-direct {p0, v0, v3}, Lcom/google/a/c/gi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 2779
    iget v1, p0, Lcom/google/a/c/gi;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2780
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2781
    iput v1, p0, Lcom/google/a/c/gi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2789
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move-object v0, v2

    :goto_2
    return-object v0

    .line 2770
    :cond_0
    :try_start_1
    invoke-static {v7}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gu;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2771
    sget-object v1, Lcom/google/a/c/fa;->c:Lcom/google/a/c/fa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2773
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2789
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move-object v0, v1

    goto :goto_2

    .line 2760
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2786
    :cond_3
    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2789
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    move-object v0, v1

    goto :goto_2

    .line 2788
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/c/gi;->unlock()V

    .line 2789
    invoke-direct {p0}, Lcom/google/a/c/gi;->i()V

    throw v0
.end method
