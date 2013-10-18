.class public final Lcom/nianticproject/ingress/common/ui/g/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/c/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/am",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticproject/ingress/common/ui/g/t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->e:Ljava/util/List;

    .line 48
    invoke-static {p1}, Lcom/google/a/c/ii;->a(Ljava/lang/Iterable;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->d:I

    .line 51
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->d:I

    invoke-static {v0}, Lcom/google/a/c/by;->a(I)Lcom/google/a/c/by;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    .line 52
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->c:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/inventory/ui/q;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    return-object v0
.end method

.method public final a(I)Lcom/nianticproject/ingress/common/inventory/ui/q;
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    invoke-interface {v0}, Lcom/google/a/c/am;->a()Lcom/google/a/c/am;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/c/am;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/q;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    invoke-interface {v1}, Lcom/google/a/c/am;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/a/c/am;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/shared/n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/g/t;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->e:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    invoke-interface {v0}, Lcom/google/a/c/am;->size()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/inventory/ui/q;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    invoke-interface {v1}, Lcom/google/a/c/am;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/s;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/g/s;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/nianticproject/ingress/common/inventory/ui/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    invoke-interface {v0, p1}, Lcom/google/a/c/am;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/shared/n;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/n;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/g/t;

    .line 122
    if-nez v0, :cond_0

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/g/t;->a()V

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const-string/jumbo v0, "PortalKeysModel: {rawPortalKeysQueue=%d usableToIndexBiMap=%d failedKeysMap=%d totalKeys=%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/s;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/s;->b:Lcom/google/a/c/am;

    invoke-interface {v3}, Lcom/google/a/c/am;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/s;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/g/s;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
