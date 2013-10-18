.class final Lcom/nianticproject/ingress/gameentity/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/b;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/c/dv;Ljava/lang/Class;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dv",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 71
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 72
    invoke-static {v3}, Lcom/nianticproject/ingress/gameentity/d;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {p0, v3}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    .line 79
    invoke-static {p0, v3}, Lcom/nianticproject/ingress/gameentity/b;->a(Lcom/google/a/c/dv;Ljava/lang/Class;)V

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method static a(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;)[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/nianticproject/ingress/gameentity/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 29
    if-nez v0, :cond_1

    .line 33
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v0

    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/d;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    :cond_0
    invoke-static {v0, p0}, Lcom/nianticproject/ingress/gameentity/b;->a(Lcom/google/a/c/dv;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/a/c/du;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    sget-object v1, Lcom/nianticproject/ingress/gameentity/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    return-object v0
.end method
