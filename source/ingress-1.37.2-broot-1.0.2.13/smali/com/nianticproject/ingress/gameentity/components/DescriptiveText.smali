.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/DescriptiveText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/a;


# virtual methods
.method public abstract addOrUpdateDescriptiveText(Lcom/nianticproject/ingress/shared/m;Ljava/lang/String;)V
.end method

.method public abstract getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;
.end method

.method public abstract getDescriptiveTextLabels()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/nianticproject/ingress/shared/m;",
            ">;"
        }
    .end annotation
.end method
