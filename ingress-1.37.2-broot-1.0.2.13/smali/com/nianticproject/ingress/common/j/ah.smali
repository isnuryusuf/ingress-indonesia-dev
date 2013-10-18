.class public final Lcom/nianticproject/ingress/common/j/ah;
.super Lcom/nianticproject/ingress/common/j/ab;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ab;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/ah;->i:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ae;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nianticproject/ingress/common/j/ae;->b:Lcom/nianticproject/ingress/common/j/ae;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ah;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ag;->a()V

    .line 37
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/ab;->j()Z

    move-result v0

    return v0
.end method

.method protected final k()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/ab;->k()V

    .line 43
    return-void
.end method
