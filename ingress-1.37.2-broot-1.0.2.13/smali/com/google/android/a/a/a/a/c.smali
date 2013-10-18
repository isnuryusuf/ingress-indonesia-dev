.class public final Lcom/google/android/a/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/a/a/a/a/f;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/a/a/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/a/a/a/a/f;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/a/a/c;->c:Ljava/util/LinkedHashMap;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/a/a/a/c;->i:I

    .line 77
    iput-object p1, p0, Lcom/google/android/a/a/a/a/c;->e:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/google/android/a/a/a/a/c;->f:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/android/a/a/a/a/c;->g:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/google/android/a/a/a/a/c;->a:Lcom/google/android/a/a/a/a/f;

    .line 81
    iput p5, p0, Lcom/google/android/a/a/a/a/c;->h:I

    .line 82
    iput p6, p0, Lcom/google/android/a/a/a/a/c;->j:I

    .line 83
    iput p7, p0, Lcom/google/android/a/a/a/a/c;->k:I

    .line 84
    const-string/jumbo v0, "v"

    iget-object v1, p0, Lcom/google/android/a/a/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "s"

    iget-object v1, p0, Lcom/google/android/a/a/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lcom/google/android/a/a/a/a/c;->h:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/a/a/a/c;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/a/a/c;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/google/android/a/a/a/a/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/a/a/a/a/d;

    invoke-direct {v1, p0}, Lcom/google/android/a/a/a/a/d;-><init>(Lcom/google/android/a/a/a/a/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/a/a/a/j;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/a/a/a/j;

    .line 182
    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 193
    new-instance v5, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/google/android/a/a/a/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-direct {v5, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 194
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Lcom/google/android/a/a/a/a/j;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/a/a/a/a/j;

    invoke-static {v2}, Lcom/google/android/a/a/a/a/j;->a([Lcom/google/android/a/a/a/a/j;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/android/a/a/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string/jumbo v2, "ReporterDefault"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "failed to merge tickers:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    :cond_2
    return-object v3
.end method

.method private a(Ljava/util/Map;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 215
    iget v0, p0, Lcom/google/android/a/a/a/a/c;->j:I

    move v3, v0

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    if-lez v3, :cond_0

    .line 217
    :try_start_0
    iget v2, p0, Lcom/google/android/a/a/a/a/c;->k:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 218
    iget-object v2, p0, Lcom/google/android/a/a/a/a/c;->a:Lcom/google/android/a/a/a/a/f;

    iget-object v4, p0, Lcom/google/android/a/a/a/a/c;->e:Ljava/lang/String;

    invoke-interface {v2, v4, p1}, Lcom/google/android/a/a/a/a/f;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/google/android/a/a/a/a/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    const/4 v0, 0x1

    .line 215
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v2, "ReporterDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed to send report"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 226
    goto :goto_1

    .line 223
    :catch_1
    move-exception v2

    .line 224
    const-string/jumbo v4, "ReporterDefault"

    const-string/jumbo v5, "interrupted in sendReport()"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 228
    :cond_0
    return v0
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 120
    :try_start_0
    iget v3, p0, Lcom/google/android/a/a/a/a/c;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/google/android/a/a/a/a/c;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string/jumbo v2, "ReporterDefault"

    const-string/jumbo v3, "reporter interrupted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    move-object v0, v1

    .line 125
    :cond_1
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lcom/google/android/a/a/a/a/c;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/a/a/a/a/c;->a(Ljava/util/Map;)Z

    goto :goto_1
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 306
    if-gtz p1, :cond_0

    .line 307
    const-string/jumbo v0, "ReporterDefault"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "too small batch size :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", changed to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 p1, 0x1

    .line 311
    :cond_0
    iget v0, p0, Lcom/google/android/a/a/a/a/c;->h:I

    if-le p1, v0, :cond_1

    .line 312
    const-string/jumbo v0, "ReporterDefault"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "batch size :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bigger than buffer size, change to buffer limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    iput p1, p0, Lcom/google/android/a/a/a/a/c;->i:I

    .line 315
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/a/a/a/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method
