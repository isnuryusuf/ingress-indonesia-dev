.class Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/Mod;


# instance fields
.field final synthetic this$0:Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;

.field final synthetic val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;Lcom/nianticproject/ingress/gameentity/components/ModResource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->this$0:Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;

    iput-object p2, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallingUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getRarity()Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v0

    return-object v0
.end method

.method public getResourceType()Lcom/nianticproject/ingress/shared/af;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    return-object v0
.end method

.method public getStatModifiers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/m;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;->val$resource:Lcom/nianticproject/ingress/gameentity/components/ModResource;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getStatModifiers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
