.class final Lcom/nianticproject/ingress/common/h/s;
.super Lcom/nianticproject/ingress/common/h/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/h/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/s;->a:Lcom/nianticproject/ingress/common/h/r;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/h/c;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;I)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/h/s;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/h/c;->a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/h/v;

    const-string/jumbo v2, "LocalTrainingGameActions.deployResonator:modifyInTrainingCache"

    invoke-direct {v1, p0, v2, p1}, Lcom/nianticproject/ingress/common/h/v;-><init>(Lcom/nianticproject/ingress/common/h/s;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/common/x/h;

    const-string/jumbo v4, "LocalTrainingGameActions.deployResonator:onDeployFinished"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/nianticproject/ingress/common/x/f;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-direct {v3, v4, v5}, Lcom/nianticproject/ingress/common/x/h;-><init>(Ljava/lang/String;[Lcom/nianticproject/ingress/common/x/f;)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/h/t;

    const-string/jumbo v2, "LocalTrainingGameActions.deployResonator:Delay"

    invoke-direct {v1, p0, v2, p1}, Lcom/nianticproject/ingress/common/h/t;-><init>(Lcom/nianticproject/ingress/common/h/s;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method
