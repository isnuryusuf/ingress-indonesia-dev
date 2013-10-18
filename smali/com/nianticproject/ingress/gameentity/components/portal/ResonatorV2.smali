.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Damageable;
.implements Lcom/nianticproject/ingress/gameentity/components/d;
.implements Lcom/nianticproject/ingress/shared/s;


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "ResonatorV2"


# virtual methods
.method public abstract getDistanceToPortal()I
.end method

.method public abstract getEnergyCapacity()I
.end method

.method public abstract getEntity()Lcom/nianticproject/ingress/gameentity/f;
.end method

.method public abstract getEntityGuid()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLocation()Lcom/google/a/d/u;
.end method

.method public abstract getOctant()Lcom/nianticproject/ingress/shared/r;
.end method

.method public abstract getOwnerGuid()Ljava/lang/String;
.end method

.method public abstract isTemporary()Z
.end method

.method public abstract setEntity(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;)V
.end method

.method public abstract setTotal(I)V
.end method
