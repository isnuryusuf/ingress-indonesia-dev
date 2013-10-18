.class public abstract Lcom/nianticproject/ingress/common/c/br;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field protected final e:Lcom/nianticproject/ingress/common/c/bn;


# direct methods
.method protected constructor <init>(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/br;->e:Lcom/nianticproject/ingress/common/c/bn;

    .line 26
    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/br;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/br;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->v()V

    .line 17
    return-void
.end method
