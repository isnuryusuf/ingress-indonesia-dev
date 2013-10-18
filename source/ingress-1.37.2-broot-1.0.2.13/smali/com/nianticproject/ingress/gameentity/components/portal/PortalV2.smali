.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/DynamicComponent;
.implements Lcom/nianticproject/ingress/gameentity/components/DescriptiveText;
.implements Lcom/nianticproject/ingress/gameentity/components/Modable;
.implements Lcom/nianticproject/ingress/gameentity/components/d;
.implements Lcom/nianticproject/ingress/gameentity/i;


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "PortalV2"

.field public static final MAX_MOD_COUNT:I = 0x4


# virtual methods
.method public abstract addLinkedEdgeData(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V
.end method

.method public abstract getLinkedEdgeGuids()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
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

.method public abstract linkedModCount()I
.end method

.method public abstract removeLinkedEdgeData(Ljava/lang/String;)Z
.end method
