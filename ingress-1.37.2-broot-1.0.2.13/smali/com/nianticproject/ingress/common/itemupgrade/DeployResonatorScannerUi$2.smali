.class Lcom/nianticproject/ingress/common/itemupgrade/DeployResonatorScannerUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/g;


# instance fields
.field final synthetic this$0:Lcom/nianticproject/ingress/common/itemupgrade/c;

.field final synthetic val$gameState:Lcom/nianticproject/ingress/common/model/GameState;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/DeployResonatorScannerUi$2;->this$0:Lcom/nianticproject/ingress/common/itemupgrade/c;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/itemupgrade/DeployResonatorScannerUi$2;->val$gameState:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/DeployResonatorScannerUi$2;->val$gameState:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method
