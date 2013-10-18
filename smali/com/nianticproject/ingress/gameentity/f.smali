.class public interface abstract Lcom/nianticproject/ingress/gameentity/f;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public abstract getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getComponentsAsMap()Lcom/google/a/c/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/cr",
            "<",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getLastModifiedMs()J
.end method

.method public abstract remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
