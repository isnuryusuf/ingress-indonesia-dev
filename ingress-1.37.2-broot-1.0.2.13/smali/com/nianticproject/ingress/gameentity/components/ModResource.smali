.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/ModResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Resource;


# virtual methods
.method public abstract copy()Lcom/nianticproject/ingress/gameentity/components/ModResource;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
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
