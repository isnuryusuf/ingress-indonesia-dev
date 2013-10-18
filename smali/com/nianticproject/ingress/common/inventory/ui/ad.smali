.class final Lcom/nianticproject/ingress/common/inventory/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/e;
.implements Lcom/nianticproject/ingress/common/j/u;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/v;

.field private final b:Lcom/nianticproject/ingress/common/inventory/ui/q;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ad;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ad;->b:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 768
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/nianticproject/ingress/common/j/d;
    .locals 1
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ad;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->m(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/j/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/j/v;->a(Lcom/nianticproject/ingress/common/j/u;)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ad;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->o(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ad;->b:Lcom/nianticproject/ingress/common/inventory/ui/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ad;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/inventory/ui/v;->n(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/j/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/f;)V

    .line 784
    return-void
.end method
