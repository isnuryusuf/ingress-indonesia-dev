.class final Lcom/nianticproject/ingress/common/inventory/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/b;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/c;->a:Lcom/nianticproject/ingress/common/inventory/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/c;->a:Lcom/nianticproject/ingress/common/inventory/ui/b;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/b;->b(Lcom/nianticproject/ingress/common/inventory/ui/b;)Lcom/nianticproject/ingress/common/inventory/ui/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/c;->a:Lcom/nianticproject/ingress/common/inventory/ui/b;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/b;->a(Lcom/nianticproject/ingress/common/inventory/ui/b;)Lcom/nianticproject/ingress/common/inventory/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/ba;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/bf;->e(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 53
    return-void
.end method
