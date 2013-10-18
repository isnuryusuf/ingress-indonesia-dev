.class final Lcom/nianticproject/ingress/common/scanner/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/d;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private b:[S

.field private c:I


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->c:I

    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->b:[S

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/a/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->c:I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->b:[S

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/a/b;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[SB)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/nianticproject/ingress/common/scanner/a/b;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->c:I

    .line 56
    return-void
.end method

.method public final a(I[S)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->b:[S

    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->b:[S

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/c;->b:[S

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-void
.end method
