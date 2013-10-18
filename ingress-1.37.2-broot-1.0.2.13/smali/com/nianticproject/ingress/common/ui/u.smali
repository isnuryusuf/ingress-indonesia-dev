.class final Lcom/nianticproject/ingress/common/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/w;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/t;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/u;->a:Lcom/nianticproject/ingress/common/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/ui/m;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/u;->a:Lcom/nianticproject/ingress/common/ui/t;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/ui/t;)Lcom/nianticproject/ingress/common/ui/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/u;->a:Lcom/nianticproject/ingress/common/ui/t;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/ui/t;)Lcom/nianticproject/ingress/common/ui/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/w;->a(Lcom/nianticproject/ingress/common/ui/m;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/ui/m;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/u;->a:Lcom/nianticproject/ingress/common/ui/t;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/ui/t;)Lcom/nianticproject/ingress/common/ui/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/u;->a:Lcom/nianticproject/ingress/common/ui/t;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/ui/t;)Lcom/nianticproject/ingress/common/ui/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/w;->b(Lcom/nianticproject/ingress/common/ui/m;)V

    .line 107
    :cond_0
    return-void
.end method
