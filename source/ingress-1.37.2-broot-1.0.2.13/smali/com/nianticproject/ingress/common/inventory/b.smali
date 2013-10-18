.class final Lcom/nianticproject/ingress/common/inventory/b;
.super Lcom/nianticproject/ingress/common/g/d;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/nianticproject/ingress/common/model/k;

.field final synthetic c:Lcom/nianticproject/ingress/common/inventory/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/b;->c:Lcom/nianticproject/ingress/common/inventory/a;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/inventory/b;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/g/d;-><init>(Lcom/nianticproject/ingress/common/g/e;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/b;)Lcom/nianticproject/ingress/common/g/e;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/b;->a:Lcom/nianticproject/ingress/common/g/e;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    check-cast p1, Ljava/util/Collection;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/c;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/inventory/c;-><init>(Lcom/nianticproject/ingress/common/inventory/b;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    return-void
.end method
