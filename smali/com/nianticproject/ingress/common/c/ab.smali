.class final Lcom/nianticproject/ingress/common/c/ab;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/c/ba;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/ba;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/ab;->a:Lcom/nianticproject/ingress/common/c/ai;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/ab;->b:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "ReleaseSoundAssetTask"

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ab;->a:Lcom/nianticproject/ingress/common/c/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ab;->b:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ba;)V

    .line 145
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/c/ab;->a(I)I

    move-result v0

    return v0
.end method
