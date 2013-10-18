.class public final Lcom/nianticproject/ingress/knobs/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/AddModParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/CellParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/server/flip/FlipParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/LinkabilityParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/LinkPortalsParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/ModifiedGuidsParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/PaginatedCellPlextParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/SayParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/e;->b:Ljava/util/List;

    .line 64
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v3

    .line 66
    const-wide/16 v0, 0x1

    .line 67
    sget-object v2, Lcom/nianticproject/ingress/knobs/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 69
    const/4 v0, 0x1

    shl-long v0, v1, v0

    move-wide v1, v0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v3}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v1, Lcom/nianticproject/ingress/shared/AddModParams;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/CellParams;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/server/flip/FlipParams;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/LinkPortalsParams;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long v0, v1, v3

    sput-wide v0, Lcom/nianticproject/ingress/knobs/e;->a:J

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/Class;J)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/nianticproject/ingress/knobs/e;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 88
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
