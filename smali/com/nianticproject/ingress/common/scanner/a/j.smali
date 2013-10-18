.class final Lcom/nianticproject/ingress/common/scanner/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/l;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private b:[S


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->b:[S

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/a/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->b:[S

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/a/i;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;[SB)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/nianticproject/ingress/common/scanner/a/i;)V

    goto :goto_0
.end method

.method public final a(I[S)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->b:[S

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->b:[S

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/j;->b:[S

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-void
.end method
