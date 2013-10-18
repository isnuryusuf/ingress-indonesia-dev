.class final Lcom/nianticproject/ingress/af;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/gameentity/f;

.field final synthetic b:Lcom/nianticproject/ingress/ae;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ae;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nianticproject/ingress/af;->b:Lcom/nianticproject/ingress/ae;

    iput-object p2, p0, Lcom/nianticproject/ingress/af;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 61
    :try_start_0
    const-string/jumbo v0, "StoryItemOpenedTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/af;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 66
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/af;->b:Lcom/nianticproject/ingress/ae;

    invoke-static {v1}, Lcom/nianticproject/ingress/ae;->a(Lcom/nianticproject/ingress/ae;)Lcom/nianticproject/ingress/common/u/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nianticproject/ingress/af;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
