.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/DynamicComponent;
.implements Lcom/nianticproject/ingress/gameentity/i;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
        "Lcom/nianticproject/ingress/gameentity/i;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAPACITY:I = 0x8

.field public static final DISPLAY_NAME:Ljava/lang/String; = "ResonatorArray"

.field public static final MAX_SLOT:I = 0x7

.field public static final MIN_SLOT:I


# virtual methods
.method public abstract addResonator(Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;Lcom/nianticproject/ingress/shared/r;)V
.end method

.method public abstract getResonator(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
.end method

.method public abstract getResonatorLevels()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeResonator(Lcom/nianticproject/ingress/shared/r;)V
.end method

.method public abstract size()I
.end method

.method public abstract updateResonator(Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;Lcom/nianticproject/ingress/shared/r;)V
.end method
