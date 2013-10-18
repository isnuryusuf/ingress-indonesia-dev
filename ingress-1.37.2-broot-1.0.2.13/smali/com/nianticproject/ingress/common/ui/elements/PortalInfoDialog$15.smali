.class Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/g;


# instance fields
.field final synthetic this$0:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

.field final synthetic val$gameState:Lcom/nianticproject/ingress/common/model/GameState;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog$15;->this$0:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog$15;->val$gameState:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog$15;->val$gameState:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/model/GameState;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method
