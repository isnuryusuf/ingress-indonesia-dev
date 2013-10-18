.class final Lcom/nianticproject/ingress/common/m/b;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nianticproject/ingress/common/m/d;

.field final synthetic d:I

.field final synthetic e:Lcom/nianticproject/ingress/common/m/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/m/a;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/common/m/b;->e:Lcom/nianticproject/ingress/common/m/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/m/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/m/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/m/b;->c:Lcom/nianticproject/ingress/common/m/d;

    iput p5, p0, Lcom/nianticproject/ingress/common/m/b;->d:I

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_0
    const-string/jumbo v0, "InviteViaEmailTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/b;->e:Lcom/nianticproject/ingress/common/m/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/m/a;->a(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/u/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/m/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/b;->b:Ljava/lang/String;

    :goto_0
    invoke-static {v3, v0}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 67
    :goto_1
    :try_start_1
    const-string/jumbo v2, "InviteViaEmailTask.onPostExecute"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/b;->c:Lcom/nianticproject/ingress/common/m/d;

    iget v2, p0, Lcom/nianticproject/ingress/common/m/b;->d:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/m/b;->a:Ljava/lang/String;

    sget-object v4, Lcom/nianticproject/ingress/shared/rpc/o;->e:Lcom/nianticproject/ingress/shared/rpc/o;

    invoke-interface {v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/m/d;->a(ILjava/lang/String;Lcom/nianticproject/ingress/shared/rpc/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 79
    :goto_2
    return-object v1

    .line 58
    :cond_0
    :try_start_2
    const-string/jumbo v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move-object v0, v1

    .line 64
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 73
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/nianticproject/ingress/common/m/b;->c:Lcom/nianticproject/ingress/common/m/d;

    iget v3, p0, Lcom/nianticproject/ingress/common/m/b;->d:I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/m/b;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/nianticproject/ingress/common/m/d;->a(ILjava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/nianticproject/ingress/common/m/b;->c:Lcom/nianticproject/ingress/common/m/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/m/d;->a(Lcom/nianticproject/ingress/shared/invites/InviteInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :goto_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_2

    .line 77
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/nianticproject/ingress/common/m/b;->c:Lcom/nianticproject/ingress/common/m/d;

    iget v3, p0, Lcom/nianticproject/ingress/common/m/b;->d:I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/m/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/o;

    invoke-interface {v2, v3, v4, v0}, Lcom/nianticproject/ingress/common/m/d;->a(ILjava/lang/String;Lcom/nianticproject/ingress/shared/rpc/o;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 79
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/m/b;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
