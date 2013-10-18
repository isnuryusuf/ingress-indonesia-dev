.class public final Lcom/nianticproject/ingress/common/q/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/b/e;


# instance fields
.field private final a:Lcom/google/c/a/a/b/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/q/b/o;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/c/a/a/b/a;

    sget-object v1, Lcom/google/i/a/a/a/d;->a:Lcom/google/c/a/a/b/c;

    invoke-direct {v0, v1}, Lcom/google/c/a/a/b/a;-><init>(Lcom/google/c/a/a/b/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->a:Lcom/google/c/a/a/b/a;

    .line 43
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->a:Lcom/google/c/a/a/b/a;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/c/a/a/b/a;->a(ILjava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->a:Lcom/google/c/a/a/b/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/a/b/a;->a(IZ)V

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->a:Lcom/google/c/a/a/b/a;

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/a/b/a;->a(ILjava/lang/String;)V

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->a:Lcom/google/c/a/a/b/a;

    const/16 v1, 0x12

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/a/b/a;->a(ILjava/lang/String;)V

    .line 55
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/DataInput;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 66
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/google/i/a/a/a/d;->b:Lcom/google/c/a/a/b/c;

    invoke-static {v0, p1}, Lcom/google/c/a/a/b/e;->a(Lcom/google/c/a/a/b/c;Ljava/io/DataInput;)Lcom/google/c/a/a/b/a;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/google/c/a/a/b/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->b:Ljava/lang/String;

    .line 75
    :cond_1
    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/h;->a:Lcom/google/c/a/a/b/a;

    invoke-static {p1, v0}, Lcom/google/c/a/a/b/e;->a(Ljava/io/DataOutput;Lcom/google/c/a/a/b/a;)V

    .line 61
    return-void
.end method
