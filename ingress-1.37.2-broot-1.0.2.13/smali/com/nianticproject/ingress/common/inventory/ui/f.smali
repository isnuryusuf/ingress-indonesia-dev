.class final Lcom/nianticproject/ingress/common/inventory/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/e;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/f;->a:Lcom/nianticproject/ingress/common/inventory/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/f;->a:Lcom/nianticproject/ingress/common/inventory/ui/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/e;->b(Lcom/nianticproject/ingress/common/inventory/ui/e;)Lcom/nianticproject/ingress/common/inventory/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/f;->a:Lcom/nianticproject/ingress/common/inventory/ui/e;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/e;->a(Lcom/nianticproject/ingress/common/inventory/ui/e;)Lcom/nianticproject/ingress/common/inventory/ui/g;

    move-result-object v1

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/g;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/d;->f(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 39
    return-void
.end method
