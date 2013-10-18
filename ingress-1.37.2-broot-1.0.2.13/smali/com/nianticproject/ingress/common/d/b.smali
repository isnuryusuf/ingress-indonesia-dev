.class final Lcom/nianticproject/ingress/common/d/b;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/a/d/u;

.field final synthetic c:Z

.field final synthetic d:Lcom/nianticproject/ingress/common/d/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/d/a;Ljava/lang/String;Lcom/google/a/d/u;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/common/d/b;->d:Lcom/nianticproject/ingress/common/d/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/d/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/d/b;->b:Lcom/google/a/d/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/d/b;->c:Z

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/d/b;->b:Lcom/google/a/d/u;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/d/b;->c:Z

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Lcom/google/a/d/u;Z)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v2

    .line 65
    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d/b;->d:Lcom/nianticproject/ingress/common/d/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/d/a;->a(Lcom/nianticproject/ingress/common/d/a;)Lcom/nianticproject/ingress/common/u/q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 69
    iget-object v3, p0, Lcom/nianticproject/ingress/common/d/b;->d:Lcom/nianticproject/ingress/common/d/a;

    invoke-static {v3, v0}, Lcom/nianticproject/ingress/common/d/a;->a(Lcom/nianticproject/ingress/common/d/a;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 75
    iget-object v1, p0, Lcom/nianticproject/ingress/common/d/b;->d:Lcom/nianticproject/ingress/common/d/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/d/a;->a(Lcom/nianticproject/ingress/shared/rpc/y;)V

    goto :goto_1

    .line 81
    :cond_0
    const-wide/16 v3, 0x3a98

    shl-long/2addr v3, v1

    .line 83
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-static {}, Lcom/nianticproject/ingress/common/d/a;->a()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "unexpected exception occurred during retry delay"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/d/b;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
