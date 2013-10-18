.class public Lcom/nianticproject/ingress/common/u/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/b;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nianticproject/ingress/common/u/j;

.field private final e:Lcom/nianticproject/ingress/common/u/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/s;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Lcom/nianticproject/ingress/common/u/j;Lcom/nianticproject/ingress/common/u/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/s;->b:Lcom/nianticproject/ingress/common/u/b;

    .line 45
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/s;->c:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    .line 47
    iput-object p4, p0, Lcom/nianticproject/ingress/common/u/s;->e:Lcom/nianticproject/ingress/common/u/f;

    .line 48
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/common/u/ad;)Lcom/google/a/a/ak;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<TT;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/nianticproject/ingress/common/u/ad;",
            ")",
            "Lcom/google/a/a/ak",
            "<TT;",
            "Lcom/nianticproject/ingress/shared/model/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    :try_start_0
    const-string/jumbo v1, "GameStateLoaderRpcService.send("

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/ab;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/nianticproject/ingress/common/u/i;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/i;-><init>()V

    .line 103
    new-instance v2, Lcom/nianticproject/ingress/common/u/ah;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/u/s;->b:Lcom/nianticproject/ingress/common/u/b;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/s;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v2

    .line 110
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lcom/nianticproject/ingress/common/u/ad;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_0
    :try_start_2
    iget-object v3, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    if-eqz v3, :cond_1

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    iget-object v0, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/j;->c(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/model/e;

    move-result-object v0

    .line 121
    :cond_1
    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v1

    .line 122
    invoke-static {v1, v0}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :try_start_3
    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/common/u/ad;->a(Z)V

    .line 113
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 115
    :try_start_4
    iget-object v2, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    iget-object v2, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 117
    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/u/j;->c(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/model/e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v2, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    iget-object v2, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 117
    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/u/j;->c(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/model/e;

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final a(J)Lcom/google/a/a/ak;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/a/a/ak",
            "<",
            "Lcom/nianticproject/ingress/shared/model/e;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/u/ag;->a(J)Lcom/nianticproject/ingress/shared/rpc/ac;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/u/s;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/common/u/ad;)Lcom/google/a/a/ak;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/d/u;[J[J)Lcom/google/a/a/ak;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/u;",
            "[J[J)",
            "Lcom/google/a/a/ak",
            "<",
            "Lcom/nianticproject/ingress/shared/model/e;",
            "[J>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/nianticproject/ingress/common/u/s;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 62
    invoke-static {p2, p3}, Lcom/nianticproject/ingress/common/u/ag;->a([J[J)Lcom/nianticproject/ingress/shared/rpc/n;

    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/s;->d:Lcom/nianticproject/ingress/common/u/j;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/l;

    invoke-virtual {v4, v0, p1}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/l;Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/u/ad;

    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/nianticproject/ingress/common/u/s;->e:Lcom/nianticproject/ingress/common/u/f;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v0, v1, v6}, Lcom/nianticproject/ingress/common/u/f;->a(Lcom/nianticproject/ingress/common/u/av;Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;ZZ)V

    .line 76
    invoke-direct {p0, v3, v4}, Lcom/nianticproject/ingress/common/u/s;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/common/u/ad;)Lcom/google/a/a/ak;

    move-result-object v3

    .line 81
    iget-object v0, v3, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 82
    array-length v0, p3

    new-array v2, v0, [J

    .line 83
    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_0

    .line 84
    aget-wide v4, p3, v1

    iget-object v0, v3, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 88
    :goto_1
    new-instance v1, Lcom/google/a/a/ak;

    iget-object v2, v3, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
