.class public abstract Lcom/nianticproject/ingress/common/c/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nianticproject/ingress/common/c/ah;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field protected final d:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget v0, Lcom/nianticproject/ingress/common/c/ah;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nianticproject/ingress/common/c/ah;->a:I

    iput v0, p0, Lcom/nianticproject/ingress/common/c/ah;->d:I

    .line 128
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0xf

    .line 69
    if-le p1, v0, :cond_0

    move p1, v0

    .line 73
    :cond_0
    shl-int/lit8 v0, p1, 0x10

    iget v1, p0, Lcom/nianticproject/ingress/common/c/ah;->d:I

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()V
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/c/ah;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 8
    check-cast p1, Lcom/nianticproject/ingress/common/c/ah;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/c/ah;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/ah;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    const-string/jumbo v0, "{%d %s %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/c/ah;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/c/ah;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/c/ah;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
