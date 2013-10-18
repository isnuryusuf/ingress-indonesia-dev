.class Lcom/nianticproject/ingress/common/scanner/modes/RemotePortalMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/g;


# instance fields
.field final synthetic this$0:Lcom/nianticproject/ingress/common/scanner/modes/bj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/RemotePortalMode$1;->this$0:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/RemotePortalMode$1;->this$0:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->c:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/model/GameState;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method
