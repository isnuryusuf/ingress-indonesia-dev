.class public interface abstract Lcom/nianticproject/ingress/shared/Mod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/e;


# virtual methods
.method public abstract buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getInstallingUser()Ljava/lang/String;
.end method

.method public abstract getResourceType()Lcom/nianticproject/ingress/shared/af;
.end method

.method public abstract getStatModifiers()Ljava/util/Map;
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
.end method
