.class final Lcom/nianticproject/ingress/common/scanner/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/m;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private b:[S


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->b:[S

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->b:[S

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/a/g;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;[SB)V

    .line 76
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/nianticproject/ingress/common/scanner/a/g;)V

    goto :goto_0
.end method

.method public final a(I[S)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->b:[S

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->b:[S

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/h;->b:[S

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    return-void
.end method
