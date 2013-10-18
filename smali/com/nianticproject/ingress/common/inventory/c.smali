.class final Lcom/nianticproject/ingress/common/inventory/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/nianticproject/ingress/common/inventory/b;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/b;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/c;->b:Lcom/nianticproject/ingress/common/inventory/b;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/c;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/c;->b:Lcom/nianticproject/ingress/common/inventory/b;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/b;->a(Lcom/nianticproject/ingress/common/inventory/b;)Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/c;->b:Lcom/nianticproject/ingress/common/inventory/b;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/b;->c:Lcom/nianticproject/ingress/common/inventory/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/a;->a(Lcom/nianticproject/ingress/common/inventory/a;)Lcom/nianticproject/ingress/common/inventory/ui/v;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/al;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/c;->b:Lcom/nianticproject/ingress/common/inventory/b;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/inventory/b;->b:Lcom/nianticproject/ingress/common/model/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/c;->a:Ljava/util/Collection;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/inventory/ui/al;-><init>(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/al;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "SetInventoryModel"

    return-object v0
.end method
