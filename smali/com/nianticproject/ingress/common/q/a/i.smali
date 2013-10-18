.class final Lcom/nianticproject/ingress/common/q/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:[S

.field final synthetic c:Lcom/nianticproject/ingress/common/q/a/g;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/q/a/g;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/a/i;->c:Lcom/nianticproject/ingress/common/q/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    .line 56
    const/16 v0, 0x80

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    .line 57
    return-void
.end method


# virtual methods
.method final varargs a([S)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    iget v1, p0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    array-length v2, p1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    array-length v1, v1

    :goto_0
    if-le v2, v1, :cond_0

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    array-length v2, v2

    if-eq v1, v2, :cond_1

    new-array v1, v1, [S

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    array-length v3, v3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    .line 65
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-short v2, p1, v0

    .line 66
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    iget v4, p0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    aput-short v2, v3, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method
