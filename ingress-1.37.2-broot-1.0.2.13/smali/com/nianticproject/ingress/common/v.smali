.class final Lcom/nianticproject/ingress/common/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/v;-><init>()V

    return-void
.end method

.method private a()Lcom/nianticproject/ingress/common/g/h;
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v0}, Lcom/google/a/c/dc;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w;->a(Lcom/nianticproject/ingress/common/w;)Lcom/nianticproject/ingress/common/g/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 352
    :cond_0
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/a/c/dc;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w;->a(Lcom/nianticproject/ingress/common/w;)Lcom/nianticproject/ingress/common/g/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/a/d/k;

    invoke-direct {v2}, Lcom/google/a/d/k;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/a/d/k;->a(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/nianticproject/ingress/common/g/z;

    invoke-virtual {v2}, Lcom/google/a/d/k;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/g/z;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/v;)Lcom/nianticproject/ingress/common/g/h;
    .locals 1
    .parameter

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/v;->a()Lcom/nianticproject/ingress/common/g/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/v;Lcom/nianticproject/ingress/common/w;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/v;Lcom/nianticproject/ingress/common/w;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    const-string/jumbo v0, "EyeSet regions: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w;

    .line 378
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {v0}, Lcom/nianticproject/ingress/common/w;->a(Lcom/nianticproject/ingress/common/w;)Lcom/nianticproject/ingress/common/g/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
