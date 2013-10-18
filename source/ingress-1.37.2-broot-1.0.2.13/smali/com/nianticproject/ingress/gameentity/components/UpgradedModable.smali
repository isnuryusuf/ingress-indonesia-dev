.class public Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Modable;


# instance fields
.field private modSlot:I

.field private modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

.field private replacementMod:Lcom/nianticproject/ingress/shared/Mod;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/ModResource;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->replacementMod:Lcom/nianticproject/ingress/shared/Mod;

    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    .line 29
    iput p3, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modSlot:I

    .line 30
    if-eqz p2, :cond_0

    .line 31
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable$1;-><init>(Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;Lcom/nianticproject/ingress/gameentity/components/ModResource;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->replacementMod:Lcom/nianticproject/ingress/shared/Mod;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/gameentity/components/Modable;->canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v0

    return v0
.end method

.method public getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getEntityGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modSlot:I

    if-ne v0, p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->replacementMod:Lcom/nianticproject/ingress/shared/Mod;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    goto :goto_0
.end method

.method public linkedModCount()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->replacementMod:Lcom/nianticproject/ingress/shared/Mod;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modSlot:I

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Modable;->linkedModCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public maxModCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;->modable:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v0

    return v0
.end method

.method public removeLinkedMod(I)V
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLinkedMod(Lcom/nianticproject/ingress/shared/Mod;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
