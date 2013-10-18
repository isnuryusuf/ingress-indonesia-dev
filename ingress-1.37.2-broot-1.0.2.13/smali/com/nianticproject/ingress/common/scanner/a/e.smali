.class final Lcom/nianticproject/ingress/common/scanner/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/e;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private b:I

.field private c:[S


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->b:I

    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->c:[S

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->b:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->c:[S

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/a/d;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[SB)V

    .line 105
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/nianticproject/ingress/common/scanner/a/d;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->b:I

    .line 72
    return-void
.end method

.method public final a(I[S)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->c:[S

    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->c:[S

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/e;->c:[S

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-void
.end method
