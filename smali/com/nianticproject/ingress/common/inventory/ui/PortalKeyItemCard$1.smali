.class Lcom/nianticproject/ingress/common/inventory/ui/PortalKeyItemCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/g;


# instance fields
.field final synthetic this$0:Lcom/nianticproject/ingress/common/inventory/ui/ar;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/PortalKeyItemCard$1;->this$0:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/PortalKeyItemCard$1;->this$0:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->a(Lcom/nianticproject/ingress/common/inventory/ui/ar;)Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method
