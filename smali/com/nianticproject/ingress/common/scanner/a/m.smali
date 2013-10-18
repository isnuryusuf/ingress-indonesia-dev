.class final Lcom/nianticproject/ingress/common/scanner/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/q;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private b:I

.field private c:[S


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->b:I

    .line 40
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->c:[S

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->b:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->c:[S

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/a/l;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[SB)V

    .line 104
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/nianticproject/ingress/common/scanner/a/l;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->b:I

    .line 57
    return-void
.end method

.method public final a(I[S)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->c:[S

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->c:[S

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/m;->c:[S

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    return-void
.end method
