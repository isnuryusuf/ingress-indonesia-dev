.class final Lcom/nianticproject/ingress/common/inventory/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/g;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/g;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/h;->a:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/h;->a:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/g;->a(Lcom/nianticproject/ingress/common/inventory/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/h;->a:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/g;->b(Lcom/nianticproject/ingress/common/inventory/g;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->d()Z

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "inventoryRecycleAnimationDelay"

    return-object v0
.end method
