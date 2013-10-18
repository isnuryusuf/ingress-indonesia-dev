.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/Modable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/a;
.implements Lcom/nianticproject/ingress/gameentity/i;


# virtual methods
.method public abstract canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z
.end method

.method public abstract getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;
.end method

.method public abstract linkedModCount()I
.end method

.method public abstract maxModCount()I
.end method

.method public abstract removeLinkedMod(I)V
.end method

.method public abstract setLinkedMod(Lcom/nianticproject/ingress/shared/Mod;I)V
.end method
