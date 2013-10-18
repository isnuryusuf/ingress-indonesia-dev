.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Weapon;


# virtual methods
.method public abstract getAverageRange(Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;)Ljava/lang/Float;
.end method

.method public abstract getDamageSpec(Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;)Lcom/nianticproject/ingress/server/EmpDamageSpec;
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMaxRange(Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;)Ljava/lang/Integer;
.end method
