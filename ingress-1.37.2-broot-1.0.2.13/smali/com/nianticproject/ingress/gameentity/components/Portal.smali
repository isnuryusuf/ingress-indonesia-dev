.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/Portal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/DynamicComponent;
.implements Lcom/nianticproject/ingress/gameentity/components/DescriptiveText;
.implements Lcom/nianticproject/ingress/gameentity/components/Modable;
.implements Lcom/nianticproject/ingress/gameentity/components/d;
.implements Lcom/nianticproject/ingress/gameentity/i;


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "Portal"

.field public static final MAX_MOD_COUNT:I = 0x4


# virtual methods
.method public abstract addLinkedEdgeData(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V
.end method

.method public abstract addLinkedResonator(Ljava/lang/String;ILcom/nianticproject/ingress/shared/r;Ljava/lang/String;)V
.end method

.method public abstract getFreeSlots()Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLinkedEdges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLinkedResonatorGuids()Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLinkedResonatorLevels()Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOccupiedSlots()Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOwnerIds()Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResonatorAtOctant(Lcom/nianticproject/ingress/shared/r;)Ljava/lang/String;
.end method

.method public abstract getResonatorCount()I
.end method

.method public abstract linkedModCount()I
.end method

.method public abstract maxLinkRange()J
.end method

.method public abstract removeLinkedEdgeData(Ljava/lang/String;)V
.end method

.method public abstract removeLinkedResonatorByGuid(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;
.end method

.method public abstract resonatorCountForOwner(Ljava/lang/String;)I
.end method

.method public abstract resonatorLevelsForOwner(Ljava/lang/String;)Lcom/google/a/c/ht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/a/c/ht",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resonatorOwner(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract upgradeLinkedResonator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/nianticproject/ingress/shared/r;
.end method
