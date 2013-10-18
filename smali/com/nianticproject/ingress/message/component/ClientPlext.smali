.class public interface abstract Lcom/nianticproject/ingress/message/component/ClientPlext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/a;


# static fields
.field public static final MAX_PLEXT_LENGTH:I = 0x100


# virtual methods
.method public abstract getCategories()I
.end method

.method public abstract getPlext()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlextType()Lcom/nianticproject/ingress/shared/plext/f;
.end method

.method public abstract getTeam()Lcom/nianticproject/ingress/shared/ai;
.end method

.method public abstract getText()Ljava/lang/String;
.end method
