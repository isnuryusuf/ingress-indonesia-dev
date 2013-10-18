.class final Lcom/nianticproject/ingress/common/c/u;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/u;->a:Lcom/nianticproject/ingress/common/c/ai;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string/jumbo v0, "DestroyTask"

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/u;->a:Lcom/nianticproject/ingress/common/c/ai;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/ai;->c()V

    .line 252
    return-void
.end method
