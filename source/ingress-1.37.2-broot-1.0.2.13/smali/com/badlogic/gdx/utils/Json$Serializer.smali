.class public interface abstract Lcom/badlogic/gdx/utils/Json$Serializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "TT;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation
.end method
