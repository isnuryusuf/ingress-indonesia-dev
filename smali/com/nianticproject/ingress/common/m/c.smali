.class final Lcom/nianticproject/ingress/common/m/c;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/m/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/m/a;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nianticproject/ingress/common/m/c;->a:Lcom/nianticproject/ingress/common/m/a;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    :try_start_0
    const-string/jumbo v0, "GetInviteInfoTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/c;->a:Lcom/nianticproject/ingress/common/m/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/m/a;->a(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/u/ah;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/u/aj;->b()Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 102
    :goto_0
    :try_start_1
    const-string/jumbo v2, "GetInviteInfoTask.onPostExecute"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 103
    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/c;->a:Lcom/nianticproject/ingress/common/m/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/m/a;->b(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/m/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/m/d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 109
    :goto_1
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 108
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nianticproject/ingress/common/m/c;->a:Lcom/nianticproject/ingress/common/m/a;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/m/a;->b(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/m/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/m/d;->a(Lcom/nianticproject/ingress/shared/invites/InviteInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/m/c;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
