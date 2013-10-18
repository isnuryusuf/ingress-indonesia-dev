.class public final Lcom/nianticproject/ingress/common/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field static b:Lcom/nianticproject/ingress/common/t/b;

.field static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/nianticproject/ingress/common/t/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/t/b;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/a/c/hc;->d()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/t/c;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/t/c;->e:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/common/t/c;->a:Z

    .line 64
    const-string/jumbo v0, "Root"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/t/c;->b:Lcom/nianticproject/ingress/common/t/b;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/t/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/t/d;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/t/c;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()Lcom/nianticproject/ingress/common/t/a;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nianticproject/ingress/common/t/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;
    .locals 2
    .parameter

    .prologue
    .line 169
    sget-object v0, Lcom/nianticproject/ingress/common/t/c;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/b;

    .line 170
    if-nez v0, :cond_0

    .line 171
    new-instance v1, Lcom/nianticproject/ingress/common/t/b;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/t/b;-><init>(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/nianticproject/ingress/common/t/c;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/b;

    .line 173
    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    sput-boolean p0, Lcom/nianticproject/ingress/common/t/c;->a:Z

    .line 82
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 89
    sget-boolean v0, Lcom/nianticproject/ingress/common/t/c;->a:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lcom/nianticproject/ingress/common/t/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/common/t/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/a;->b()V

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/t/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/nianticproject/ingress/common/t/c;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 144
    sget-object v0, Lcom/nianticproject/ingress/common/t/c;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    sget-object v2, Lcom/nianticproject/ingress/common/t/c;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/b;

    .line 147
    sget-object v4, Lcom/nianticproject/ingress/common/t/c;->b:Lcom/nianticproject/ingress/common/t/b;

    if-eq v0, v4, :cond_0

    .line 148
    new-instance v4, Lcom/nianticproject/ingress/common/t/e;

    invoke-direct {v4, v0}, Lcom/nianticproject/ingress/common/t/e;-><init>(Lcom/nianticproject/ingress/common/t/b;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string/jumbo v0, "                    __ Zone Name __ |  _In ms_    _Ex ms_  _Calls_\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/e;

    .line 158
    const-string/jumbo v3, "%35s | %8.2f %8.2f %8d\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/t/e;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Lcom/nianticproject/ingress/common/t/e;->c:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v0, Lcom/nianticproject/ingress/common/t/e;->b:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v0, v0, Lcom/nianticproject/ingress/common/t/e;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
