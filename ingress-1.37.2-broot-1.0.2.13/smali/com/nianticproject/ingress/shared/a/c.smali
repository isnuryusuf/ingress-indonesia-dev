.class public final Lcom/nianticproject/ingress/shared/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/a/a;


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/a/e;

.field private final b:Lcom/nianticproject/ingress/shared/a/d;

.field private final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/a/e;Lcom/nianticproject/ingress/shared/a/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x100

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/a/c;->c:[B

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/a/c;->d:[B

    .line 53
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/a/c;->a:Lcom/nianticproject/ingress/shared/a/e;

    .line 54
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/a/c;->b:Lcom/nianticproject/ingress/shared/a/d;

    .line 55
    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    :try_start_0
    const-string/jumbo v1, "ClientDesBlockCipher.encrypt"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/a/c;->a:Lcom/nianticproject/ingress/shared/a/e;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0x100

    .line 64
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 66
    array-length v3, v2

    add-int/lit16 v3, v3, -0x100

    .line 69
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 70
    if-eq v0, v3, :cond_0

    .line 71
    iget-object v4, p0, Lcom/nianticproject/ingress/shared/a/c;->c:[B

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-static {p1, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :goto_1
    iget-object v4, p0, Lcom/nianticproject/ingress/shared/a/c;->a:Lcom/nianticproject/ingress/shared/a/e;

    iget-object v5, p0, Lcom/nianticproject/ingress/shared/a/c;->c:[B

    iget-object v6, p0, Lcom/nianticproject/ingress/shared/a/c;->d:[B

    invoke-interface {v4, v5, v6}, Lcom/nianticproject/ingress/shared/a/e;->a([B[B)V

    .line 81
    iget-object v4, p0, Lcom/nianticproject/ingress/shared/a/c;->d:[B

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-static {v4, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    add-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 73
    :cond_0
    iget-object v4, p0, Lcom/nianticproject/ingress/shared/a/c;->c:[B

    const/4 v5, 0x0

    array-length v6, p1

    sub-int/2addr v6, v3

    invoke-static {p1, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v4, p0, Lcom/nianticproject/ingress/shared/a/c;->c:[B

    array-length v5, p1

    sub-int/2addr v5, v3

    const/16 v6, 0x100

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 78
    iget-object v4, p0, Lcom/nianticproject/ingress/shared/a/c;->c:[B

    const/16 v5, 0xff

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v2
.end method
