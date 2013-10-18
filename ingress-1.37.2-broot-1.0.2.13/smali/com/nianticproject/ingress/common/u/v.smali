.class public final Lcom/nianticproject/ingress/common/u/v;
.super Lcom/nianticproject/ingress/shared/rpc/x;
.source "SourceFile"


# instance fields
.field private c:Lcom/nianticproject/ingress/common/u/w;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/x;-><init>(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<**>;",
            "Lcom/nianticproject/ingress/shared/rpc/y;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/y;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/io/InputStream;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<TR;TE;>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 39
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/nianticproject/ingress/common/u/w;

    move-object v1, v0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/v;->c:Lcom/nianticproject/ingress/common/u/w;

    .line 40
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/v;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/v;->b:Lcom/nianticproject/ingress/shared/rpc/a;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nianticproject/ingress/common/u/v;->a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/a/f/d;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string/jumbo v2, "while(1);"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 54
    :catch_0
    move-exception v1

    .line 55
    invoke-super {p0, p1, v1, v4}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v1

    throw v1

    .line 56
    :catch_1
    move-exception v1

    .line 57
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-direct {v2, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/Exception;)V

    invoke-super {p0, p1, v2, v4}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v1

    throw v1
.end method

.method protected final a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/v;->c:Lcom/nianticproject/ingress/common/u/w;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/u/w;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/nianticproject/ingress/common/z;->a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Handshake may not have a gameBasket, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
