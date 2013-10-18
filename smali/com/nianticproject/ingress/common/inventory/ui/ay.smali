.class final Lcom/nianticproject/ingress/common/inventory/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/ax;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ay;->a:Lcom/nianticproject/ingress/common/inventory/ui/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ay;->a:Lcom/nianticproject/ingress/common/inventory/ui/ax;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ax;->b(Lcom/nianticproject/ingress/common/inventory/ui/ax;)Lcom/nianticproject/ingress/common/inventory/ui/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ay;->a:Lcom/nianticproject/ingress/common/inventory/ui/ax;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/ax;->a(Lcom/nianticproject/ingress/common/inventory/ui/ax;)Lcom/nianticproject/ingress/common/inventory/ui/az;

    move-result-object v1

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/az;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/aw;->c(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 51
    return-void
.end method
