.class public final Lcom/nianticproject/ingress/shared/rpc/RpcResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final exception:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private gameBasket:Lcom/nianticproject/ingress/shared/rpc/GameBasket;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->result:Ljava/lang/Object;

    .line 122
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->error:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->exception:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->gameBasket:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    .line 125
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/rpc/GameBasket;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->result:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->error:Ljava/lang/Object;

    .line 47
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->exception:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->gameBasket:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {v0, v1, p0, v1, v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/nianticproject/ingress/shared/rpc/GameBasket;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/rpc/GameBasket;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/nianticproject/ingress/shared/rpc/GameBasket;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {v0, v1, p0, v1, p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->error:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->gameBasket:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->error:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->exception:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->exception:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->error:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Exception["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", gameBasket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->gameBasket:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->error:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
